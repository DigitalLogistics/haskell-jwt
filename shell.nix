{ }:

with import <nixpkgs> {};

let haskellPackages = pkgs.haskellPackages_ghc782.override {
      extension = self: super: {
        tastyHspec = self.callPackage <tasty-hspec> {};
        jwt = self.callPackage ./. {};
      };
    };
in lib.overrideDerivation haskellPackages.jwt (attrs: {
     buildInputs = [ haskellPackages.cabalInstall_1_18_0_3 ] ++ attrs.buildInputs;
   })