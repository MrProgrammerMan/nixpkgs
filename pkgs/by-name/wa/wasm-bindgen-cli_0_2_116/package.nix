{
  buildWasmBindgenCli,
  fetchCrate,
  rustPlatform,
}:

buildWasmBindgenCli rec {
  src = fetchCrate {
    pname = "wasm-bindgen-cli";
    version = "0.2.116";
    hash = "sha256-Pcb5+dEaWK+SQJz73/3Si0kxEy8y8n21t+DETMdvKHc=";
  };

  cargoDeps = rustPlatform.fetchCargoVendor {
    inherit src;
    inherit (src) pname version;
    hash = "sha256-PztHuoWBh+wqOuSFTQxnnddKSSu0S1MBOgKy0szHQpI=";
  };
}
