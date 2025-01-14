# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  mihomo-alpha = {
    pname = "mihomo-alpha";
    version = "c7661d7765fb62acbc6571e76f2922083b0b2b04";
    src = fetchFromGitHub {
      owner = "MetaCubeX";
      repo = "mihomo";
      rev = "c7661d7765fb62acbc6571e76f2922083b0b2b04";
      fetchSubmodules = false;
      sha256 = "sha256-fjqJAmB2zCAGaUN41feR9q1gV5B+4oTKShPKhw8i2a0=";
    };
    date = "2025-01-07";
  };
  unocss-language-server = {
    pname = "unocss-language-server";
    version = "1ee463faa32a0109ed95ded115b27ed3ff5c0285";
    src = fetchurl {
      url = "https://registry.npmjs.org/unocss-language-server/-/unocss-language-server-0.1.5.tgz";
      sha256 = "sha256-kreygtkQG7Dhd0MPs2Ee2rr60++yCxHcSNcpEFcQ8ng=";
    };
    date = "2024-06-20";
  };
  vue-language-server = {
    pname = "vue-language-server";
    version = "8db00176cc61cbca2d20c187219f5f478fadc833";
    src = fetchurl {
      url = "https://registry.npmjs.org/@vue/language-server/-/language-server-2.2.0.tgz";
      sha256 = "sha256-foWKEhK8YE4ZsbejJUKKPNR+G7ZrJWIPEk/1PVe6YRo=";
    };
    date = "2025-01-07";
  };
  waydroid_script = {
    pname = "waydroid_script";
    version = "3cfa1e43e7da4b0c07a4c83d331e4776012e2acd";
    src = fetchFromGitHub {
      owner = "huakim";
      repo = "waydroid_script";
      rev = "3cfa1e43e7da4b0c07a4c83d331e4776012e2acd";
      fetchSubmodules = false;
      sha256 = "sha256-O29v/lF2YCUhyCo+M7Sesoes0MObHsS2tutW88rOM/U=";
    };
    date = "2024-12-15";
  };
}
