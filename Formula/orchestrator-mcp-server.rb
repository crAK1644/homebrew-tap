class OrchestratorMcpServer < Formula
  include Language::Python::Virtualenv

  desc "Consult Codex from Claude Code, or Claude Code from Codex, no API key"
  homepage "https://github.com/crAK1644/orchestrator-mcp"
  url "https://files.pythonhosted.org/packages/59/76/b2e62a1d0b7d0a7476c90cf3841011d1e65dcc53efc73da5c8bc53036f87/orchestrator_mcp_server-0.4.2.tar.gz"
  sha256 "8651c55b49d2cfa725475687cd57963627c3defa80171538a0ab4a9c41bb79e8"
  license "MIT"

  livecheck do
    url :stable
    strategy :pypi
  end

  # pydantic-core, rpds-py, and cryptography ship Rust; Homebrew builds every
  # resource from its sdist, so the toolchain is needed even though wheels exist.
  depends_on "rust" => :build
  # pyyaml builds its C extension against libyaml; without it the resource
  # silently falls back to the pure-Python loader.
  depends_on "libyaml"
  # cryptography's `_rust.abi3.so` links libssl/libcrypto. It arrives indirectly
  # through python@3.13, which `brew linkage --test` rejects, so declare it.
  depends_on "openssl@3"
  depends_on "python@3.13"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/de/41/6cbdcf9142d00fe82836fbb51e503e58088575cf7a0fe1dbff6695bf0840/cryptography-50.0.0.tar.gz"
    sha256 "eeac2acb5a20ed25e0ad6d1df9891a520b78b404266b6d11778f25d5d691a6c9"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/39/a8/20ed1ed79cbc2ecdf5301c0968ab7c85547212e2a7bd126ddd2d986e206e/httpcore2-2.9.1.tar.gz"
    sha256 "4d8acbf8b306f48c9d6046591fd5ba4037d1b1b1000d140fc2c3eab1e9a0c0e2"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/21/14/38128fbafd7e0ed41d874df6c9a653d47c2d111cfe59e2b4ac95161b4abd/httpx2-2.9.1.tar.gz"
    sha256 "1932a768737e3666291582833da748cc4e563c337cf96706fccc04fa6e58764a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/74/33/32d4dff2c95bb5d897c3ef4c83649a08996b17b58f0a326d2495d4c81179/mcp-2.0.0.tar.gz"
    sha256 "0f440e735c13ece8bb19bc62cf0b86f4313448432fbb77d35e14034f4e050728"
  end

  resource "mcp-types" do
    url "https://files.pythonhosted.org/packages/bb/56/9b8e1c152f61f6c6b07c4b5896c88c7d0ae90bac6ee6306f852fcc5c1eb0/mcp_types-2.0.0.tar.gz"
    sha256 "d7d939b9285c9961ae8866ba75ef85da34d12bafe276efbf4eb6a131786d8379"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/ee/8b/aa9e2d8b8dfa7c946f7dec5d1f8f6ba8eca062f43509a06bdb5ce93d26c0/opentelemetry_api-1.44.0.tar.gz"
    sha256 "67647e5e9566edcf421166fdf022b3537f818635daa852b289e34604dc6fb33a"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/18/a5/b60d21ac674192f8ab0ba4e9fd860690f9b4a6e51ca5df118733b487d8d6/pydantic-2.13.4.tar.gz"
    sha256 "c40756b57adaa8b1efeeced5c196f3f3b7c435f90e84ea7f443901bec8099ef6"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/9d/56/921726b776ace8d8f5db44c4ef961006580d91dc52b803c489fafd1aa249/pydantic_core-2.46.4.tar.gz"
    sha256 "62f875393d7f270851f20523dd2e29f082bcc82292d66db2b64ea71f64b6e1c1"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/3b/81/58d0ac84e1ef3a3843791d6954d94c0b33d526c75eeb1efbce9d0a4c4077/pyjwt-2.13.0.tar.gz"
    sha256 "41571c89ca91598c79e8ef18a2d07367d4810fbbd6f637794879baf1b7703423"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/5b/42/55c32bb9b12693c092ad250a0e82edb5b31ddeda6eb772de5f308b3804ad/python_multipart-0.0.32.tar.gz"
    sha256 "be54b7f3fa167bb83e4fcd936b887b708f4e57fe75911c02aebf53efaf8d938e"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/f8/00/b42a44342a054d58cb1115d7c8aa9cb4290dd9442f9c1b91a4b8173dba22/sse_starlette-3.4.8.tar.gz"
    sha256 "ed89ffbb75cbf78a5fe2f2109cd584792ee7f9dfac96f791db546df8f15f3f9c"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/0f/3c/76d2fd1f1357ed0f0108d8a5aa233dcf16e2946a8559c84912fe08e01ac7/starlette-1.4.1.tar.gz"
    sha256 "b7332de6e9375593a29ba9eee1e6ecfeb3eb2043e2e19a13b4b71da73ff35540"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/53/a3/1585216310e344e8102c22482f6060c7a6ea0322b63e026372e6dcefcfd6/truststore-0.10.4.tar.gz"
    sha256 "9d91bd436463ad5e4ee4aba766628dd6cd7010cf3e2461756b3303710eebc301"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/03/18/ccce41535dee1be77735592bd19965f3972c82e07ee703d324709496b716/uvicorn-0.52.1.tar.gz"
    sha256 "112ec661814189acbccd3f7b86460147cc065fc92c0821afa78918780e4354dd"
  end

  def install
    # A Python extension module resolves `_PyExc_*` from the interpreter that
    # loads it. On macOS that needs `-undefined dynamic_lookup`; pyo3 asks for the
    # flag itself, Homebrew's shim drops it, and pydantic-core then fails with
    # "symbol(s) not found for architecture arm64". ELF resolves undefined
    # symbols this way already, and the flag is not valid there, so it is
    # macOS-only.
    ENV.append "RUSTFLAGS", "-C link-arg=-undefined -C link-arg=dynamic_lookup" if OS.mac?

    virtualenv_install_with_resources
  end

  test do
    # No config, so this must fail with the config error rather than an import
    # error -- which is what proves the dependency tree resolved.
    output = shell_output("#{bin}/orchestrator-mcp-server 2>&1", 1)
    assert_match "config not found", output

    # Second entry point as of 0.2.0. Same check, same reason.
    dashboard = shell_output("#{bin}/orchestrator-mcp-dashboard 2>&1", 1)
    assert_match "config not found", dashboard
  end
end
