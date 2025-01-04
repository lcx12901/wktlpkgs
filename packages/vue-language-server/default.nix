{
  lib,
  buildNpmPackage,
  _sources,
  ...
}:
buildNpmPackage rec {
  inherit (_sources.vue-language-server) pname src;

  version = "2.2.0";

  npmDepsHash = "sha256-TEtxXqfIPrKAyfm0gq+oZnt121sv5AwJqS9nWhl+SJ0=";

  postPatch = ''
    ln -s ${./package-lock.json} package-lock.json
  '';

  dontNpmBuild = true;

  meta = {
    description = "Official Vue.js language server";
    homepage = "https://github.com/vuejs/language-tools#readme";
    changelog = "https://github.com/vuejs/language-tools/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ lcx12901 ];
    mainProgram = "vue-language-server";
  };
}
