{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:
with pkgs;
mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = [
    lilypond-with-fonts
  ];
}
