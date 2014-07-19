{ pkgs ? (import <nixpkgs> {})
, stdenv ? pkgs.stdenv
, ruby ? pkgs.ruby
}:

stdenv.mkDerivation rec {
  version = "1.0.0";
  name = "myapp-${version}";
  src = ./.;

  buildInputs = [ ruby ];
  buildPhase = "";
  installPhase = "";
  dontStrip = 1;

  meta = {
    homepage = "http://example.com";
    description = "buildpack test app";
    maintainers = [
      stdenv.lib.maintainers.zimbatm
    ];
    license = stdenv.lib.licenses.mit;
    platforms = ruby.meta.platforms;
  };
}
