{
  rustPlatform,
  pkg-config,
  openssl,
  swaybg
}:
rustPlatform.buildRustPackage {
  name = "wall-rs";
  src = ./.;

  nativeBuildInputs = [pkg-config];

  buildInputs = [openssl swaybg];

  cargoLock.lockFile = ./Cargo.lock;
}
