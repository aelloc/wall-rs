{
  rustPlatform,
  pkg-config,
  openssl,
}:
rustPlatform.buildRustPackage {
  name = "wall-rs";
  src = ./.;

  nativeBuildInputs = [pkg-config];

  buildInputs = [openssl];

  cargoLock.lockFile = ./Cargo.lock;
}
