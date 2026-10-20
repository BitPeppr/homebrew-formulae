class Toknt < Formula
  include Language::Python::Virtualenv
  desc "Local-first token, cost and tool analytics for AI coding harnesses"
  homepage "https://github.com/BitPeppr/toknt"
  url "https://files.pythonhosted.org/packages/73/eb/de67dd469203c5a30080ca82cec8421aad2e28ce4d31e45e2c5c5a2d91bd/toknt-0.1.0.tar.gz"
  sha256 "ac912740885edee51b42e0a6674a708139d2eeb05827f0e4a3b0d4d4637b856f"
  license "MIT"

  depends_on "python@3.13"

  pypi_packages package_name: "toknt"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "toknt #{version}", shell_output("#{bin}/toknt --version")
    assert_match "Local-first usage analytics", shell_output("#{bin}/toknt --help")
  end
end
