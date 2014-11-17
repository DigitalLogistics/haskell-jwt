{ cabal, aeson, base64Bytestring, cryptohash, dataDefault
, httpTypes, HUnit, network, QuickCheck, scientific, tasty
, tastyHspec, tastyHunit, tastyQuickcheck, tastyTh, text, time
, unorderedContainers, networkUri

, doCheck ? false
}:

cabal.mkDerivation (self: {
  pname = "jwt";
  version = "0.2.1";
  src = ./.;
  buildDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes network
    scientific text time unorderedContainers networkUri
  ];
  testDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes HUnit
    network QuickCheck scientific tasty tastyHspec tastyHunit
    tastyQuickcheck tastyTh text time unorderedContainers
  ];
  meta = {
    homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
    description = "JSON Web Token (JWT) decoding and encoding";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  noHaddock = true;
  inherit doCheck;
  enableSplitObjs = false;
  };
})
