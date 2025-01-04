{
  lib,
  buildNpmPackage,
  _sources,
  ...
}:
buildNpmPackage rec {
  inherit (_sources.unocss-language-server) pname src;

  version = "0.1.5";

  npmDepsHash = "sha256-5H8K6kxgbwWFfuChLRnft9duNFb2qVfl8AEYdfavrms=";

  postPatch = ''
    ln -s ${./package-lock.json} package-lock.json
  '';

  dontNpmBuild = true;

  meta = {
    description = "A language server for unocss";
    homepage = "https://github.com/xna00/unocss-language-server#readme";
    changelog = "https://github.com/vuejs/language-tools/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ lcx12901 ];
    mainProgram = "unocss-language-server";
  };
}
