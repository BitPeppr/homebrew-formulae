class Rosella < Formula
  include Language::Python::Virtualenv

  desc "Terminal boids simulator"
  homepage "https://github.com/bitpeppr/rosella"
  url "https://files.pythonhosted.org/packages/81/8a/ab509535de9ef1e4a7c159c9bf3e0ca59e142abd307a9e5055733c48656e/rosella-0.1.1.tar.gz"
  sha256 "0961412077fcd733945c481df8f35f7a5803d3c134f840fdb3b34114b5f28476"
  license "MIT"

  depends_on "python@3.12"

  resource "drawille" do
    url "https://files.pythonhosted.org/packages/08/57/1cb2c11bab5bd5b9de979f8a2205216c372f4f531e90cddb2e721871f9b2/drawille-0.2.0.tar.gz"
    sha256 "815343e1162c58052d4cb652ef970f6771edd90042d549ecc6e453c9736aa1ad"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/rosella --help 2>&1", 0)
  end
end
