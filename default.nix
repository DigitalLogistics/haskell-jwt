{ mkDerivation, aeson, base, base64-bytestring, bytestring
, containers, cryptohash, data-default, http-types, HUnit, network
, network-uri, QuickCheck, scientific, stdenv, tasty, tasty-hspec
, tasty-hunit, tasty-quickcheck, tasty-th, text, time
, unordered-containers
}:
mkDerivation {
  pname = "jwt";
  version = "0.2.1";
  src = ./.;
  buildDepends = [
    aeson base base64-bytestring bytestring containers cryptohash
    data-default http-types network network-uri scientific text time
    unordered-containers
  ];
  testDepends = [
    aeson base base64-bytestring bytestring containers cryptohash
    data-default http-types HUnit network network-uri QuickCheck
    scientific tasty tasty-hspec tasty-hunit tasty-quickcheck tasty-th
    text time unordered-containers
  ];
  homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
  description = "JSON Web Token (JWT) decoding and encoding";
  license = stdenv.lib.licenses.mit;
}
