#!/usr/bin/env python3
"""Render the launcher's fixed Persian strings to PNG labels.

Doing this at build time means the launcher never depends on the toolkit's
Arabic shaping: the pixels are already joined and correctly ordered (Pillow +
libraqm = HarfBuzz shaping, the same engine browsers use).
"""
import os
import sys
from PIL import Image, ImageDraw, ImageFont

HERE = os.path.dirname(os.path.abspath(__file__))
ASSETS = os.path.join(os.path.dirname(HERE), "assets")
OUT = os.path.join(os.path.dirname(HERE), "launcher", "labels")
os.makedirs(OUT, exist_ok=True)

FONT_BOLD = os.path.join(ASSETS, "QuadonSoltan.ttf")
FONT_UI = os.path.join(ASSETS, "adivery_dana_normal.ttf")

# (file name, text, font file, size, rgb, right_to_left glyph order handled by raqm)
LABELS = [
    ("title",       "انتخاب پروفایل و شروع بازی", FONT_UI, 22, (255, 255, 255)),
    ("card",        "پروفایل {n}",               FONT_BOLD, 22, (255, 214, 92)),
    ("empty",       "خالی",                      FONT_UI, 18, (176, 186, 196)),
    ("start",       "شروع",                      FONT_BOLD, 26, (255, 255, 255)),
    ("create",      "ساخت پروفایل",              FONT_BOLD, 22, (255, 255, 255)),
    ("quit",        "خروج",                      FONT_BOLD, 24, (255, 255, 255)),
    ("namelabel",   "نام:",                      FONT_UI, 18, (255, 255, 255)),
    ("hint",        "پیکان‌ها: انتخاب پروفایل  |  Enter: شروع  |  Esc: خروج",
                                                 FONT_UI, 15, (206, 214, 222)),
    ("status_ready","آماده",                     FONT_UI, 15, (150, 230, 165)),
    ("status_game", "در حال اجرای بازی ...",        FONT_UI, 18, (255, 255, 255)),
    ("status_prep", "اولین اجرا: آماده‌سازی Wine (کمی طول می‌کشد)", FONT_UI, 17, (255, 226, 140)),
    ("err_nowine",  "Wine نصب نیست؛ راهنمای نصب در README.txt", FONT_UI, 16, (255, 150, 150)),
]


def render(text, font_path, size, rgb):
    font = ImageFont.truetype(font_path, size)
    # direction="rtl" + language="fa" -> libraqm does the bidi + shaping
    box = font.getbbox(text, direction="rtl", language="fa")
    pad = 8
    w = max(1, box[2] - box[0]) + pad * 2
    h = max(1, box[3] - box[1]) + pad * 2
    im = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.text((pad - box[0], pad - box[1]), text, font=font, fill=rgb + (255,),
           direction="rtl", language="fa", features=["kern", "liga"])
    return im


def main():
    made = 0
    for name, text, font, size, rgb in LABELS:
        variants = [("", text)] if "{n}" not in text else [("%d" % n, text.format(n=n)) for n in (1, 2, 3, 4)]
        for suffix, t in variants:
            im = render(t, font, size, rgb)
            fn = os.path.join(OUT, "%s%s.png" % (name, suffix))
            im.save(fn)
            made += 1
            print("%-18s %-34s %s" % (os.path.basename(fn), t, im.size))
    print("labels written:", made, "->", OUT)


if __name__ == "__main__":
    sys.exit(main())
