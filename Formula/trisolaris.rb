class Trisolaris < Formula
  include Language::Python::Virtualenv

  desc "3-body problem visualiser, simulator, and renderer"
  homepage "https://github.com/martinchen/3-body"
  url "https://files.pythonhosted.org/packages/89/f8/a7fb707721e53a97dcde4d191aa18fc30a719eaf505eb90e8b4c136ad68c/trisolaris-0.1.3.tar.gz"
  sha256 "54cbd637d34363e185311ef7634f61569f0ddd4d8571094c1f328f0cff250f60"
  license "GPL-3.0-only"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"trisolaris", "--help"
  end
end
