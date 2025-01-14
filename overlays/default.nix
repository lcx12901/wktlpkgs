_: final: _prev:
let
  sources = import ../_sources/generated.nix {
    inherit (final)
      fetchurl
      fetchgit
      fetchFromGitHub
      dockerTools
      ;
  };
  sources' = builtins.mapAttrs (
    _n: v:
    v
    // (
      if builtins.hasAttr "date" v then
        { date = "unstable-${v.date}"; }
      else if final.lib.strings.hasPrefix "v" v.version then
        { version = final.lib.substring 1 (-1) v.version; }
      else
        { }
    )
  ) sources;
in
{
  _sources = sources';
}
