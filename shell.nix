{ pkgs ? (import <nixpkgs> {
  config.allowUnfree = true;

  overlays = [
    (self: super: {
      openlilylib-fonts = super.callPackage ./fonts.nix { };
      lilypond-unstable = super.callPackage ./unstable.nix { };
    }) ];
  }) }:
with pkgs;
mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = [
    lilypond-unstable-with-fonts
  ];
}
