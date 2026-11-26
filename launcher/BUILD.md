# Building the launcher

Toolchain: MinGW-w64 (x86_64-w64-mingw32-gcc).

```sh
printf '1 ICON "fruitcraft.ico"\n' > icon.rc
x86_64-w64-mingw32-windres icon.rc -O coff -o icon.o
x86_64-w64-mingw32-gcc -O2 -mwindows -municode \
  -o Fruitcraft.exe FruitcraftLauncher.c icon.o -lshell32 -lole32
```

Behavior:
1. Resolve its own path (2048-char buffer — long-path safe).
2. Find `data/` next to the exe, then in the parent folder.
3. Not found → message + folder picker (validates `FCMain.lua`), then
   creates a `data` junction to the picked folder.
4. Link `data/*` into the app root: directories → `mklink /J`
   (fallback xcopy), files → hardlink (fallback copy).
5. Launch `FruitcraftEngine.exe` with `SW_SHOWMAXIMIZED`.
