let
  nixpkgs = import ./nixpkgs.nix;
  pkgs = nixpkgs.nixpkgs {
    config = {};
  };

  # sdk_2_2 = pkgs.buildNetCoreSdk {
  #   version = "2.2.108";
  #   sha256 = "19q8ppc1jw9zg9611w902s8wv88nhxvrp4ars9sjzs6lfdan3f42";
  # };

  dotnetCombined = with pkgs.dotnetCorePackages; combinePackages [ 
    sdk_3_1
  ];


  buildInputs = with pkgs; [
    dotnetCombined
    mono
  ];

in
  pkgs.stdenv.mkDerivation {
    name = "env";
    inherit buildInputs;
    buildPhase = ''
      dotnet build BirdDog.Core.sln
    '';
    # installPhase = ''
    #   mkdir -p $out/bin
    #   cp foo $out/bin
    # '';
  }