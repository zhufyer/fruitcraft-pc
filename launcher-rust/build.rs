fn main() {
    let dir = std::env::var("CARGO_MANIFEST_DIR").unwrap();
    println!("cargo:rerun-if-changed={}/icon.o", dir);
    println!("cargo:rustc-link-arg={}/icon.o", dir);
    for lib in ["kernel32", "user32", "shell32", "ole32", "gdi32"] {
        println!("cargo:rustc-link-arg=-l{}", lib);
    }
}
