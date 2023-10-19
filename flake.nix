{
  description = "Hax Blog";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      let blog = pkgs.stdenv.mkDerivation {
            name = "hax-blog";
            nativeBuildInputs = [ pkgs.hugo ];
            src = ./.;
            buildPhase = "hugo";
            installPhase = "cp -r public $out";
          };
      in
      {
        packages = {
          inherit blog;
          default = blog;
        };
        devShells.default = pkgs.mkShell {
          inputsFrom = [ blog ];
        };
      }
    );
}
