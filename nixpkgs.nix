
{
  nixpkgs = import (fetchTarball {
      #change the url to update package versions
      #pinned to unstable rev with .net core fixes
      url = "https://github.com/NixOs/nixpkgs/archive/f22e45aeecb380bbd89202f15082c2f37c1212e2.tar.gz";
  });
  # multiple nixpkgs versions can be used at once by duplicating the 
  # above sections, and adding a pkg below prefixed by the nixpkgs name
}