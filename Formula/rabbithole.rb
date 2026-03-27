class Rabbithole < Formula
  include Language::Python::Virtualenv
  desc "Deep research orchestrator CLI"
  homepage "https://github.com/Cypher137/RabbitHole"
  url "https://files.pythonhosted.org/packages/10/92/e684793a301dca92e827a712f434ccf2871df5bf8175f334369e6a0225e2/rabbithole_research-0.1.0.tar.gz"
  sha256 "f65049db2d50e547d03e118b4f538fb02f7b68055e806c4ba663db7297a5320d"
  license "MIT"

  depends_on "python@3.12"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/1a/39/47f9197bdd44df24d67ac8893641e16f386c984a0619ef2ee4c51fbbc019/beautifulsoup4-4.14.3-py3-none-any.whl"
    sha256 "0918bfe44902e6ad8d57732ba310582e98da931428d231a5ecb9e7c703a735bb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/68/687187c7e26cb24ccbd88e5069f5ef00eba804d36dde11d99aad0838ab45/charset_normalizer-3.4.6-py3-none-any.whl"
    sha256 "947cf925bc916d90adba35a64c82aace04fa39b46b52d4630ece166655905a69"
  end

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/d3/8a/44032265776062a89171285ede55a0bdaadc8ac00f27f0512a71a9e3e1c8/hatchling-1.29.0-py3-none-any.whl"
    sha256 "50af9343281f34785fab12da82e445ed987a6efb34fd8c2fc0f6e6630dbcc1b0"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b7/b9/c538f279a4e237a006a2c98387d081e9eb060d203d8ed34467cc0f0b9b53/packaging-26.0-py3-none-any.whl"
    sha256 "b36f1fef9334a5588b4166f8bcd26a14e521f2b55e6b9de3aaa80d3ff7a37529"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/ef/3c/2c197d226f9ea224a9ab8d197933f9da0ae0aac5b6e0f884e2b8d9c8e9f7/pathspec-1.0.4-py3-none-any.whl"
    sha256 "fb6ae2fd4e7c921a165808a552060e722767cfa526f99ca5156ed2ce45a5c723"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/54/20/4d324d65cc6d9205fabedc306948156824eb9f0ee1633355a8f7ec5c66bf/pluggy-1.6.0-py3-none-any.whl"
    sha256 "e920276dd6813095e9377c0bc5566d94c932c33b27a3e3945d8389c374dd4746"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/56/5d/c814546c2333ceea4ba42262d8c4d55763003e767fa169adc693bd524478/requests-2.33.0-py3-none-any.whl"
    sha256 "3324635456fa185245e24865e810cecec7b4caf933d7eb133dcde67d48cee69b"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/46/2c/1462b1d0a634697ae9e55b3cecdcb64788e8b7d63f54d923fcd0bb140aed/soupsieve-2.8.3-py3-none-any.whl"
    sha256 "ed64f2ba4eebeab06cc4962affce381647455978ffc1e36bb79a545b91f45a95"
  end

  resource "trove-classifiers" do
    url "https://files.pythonhosted.org/packages/bb/4a/2e5583e544bc437d5e8e54b47db87430df9031b29b48d17f26d129fa60c0/trove_classifiers-2026.1.14.14-py3-none-any.whl"
    sha256 "1f9553927f18d0513d8e5ff80ab8980b8202ce37ecae0e3274ed2ef11880e74d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"rabbithole", "--help"
  end
end
