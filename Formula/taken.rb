class Taken < Formula
  include Language::Python::Virtualenv

  desc "Check if a GitHub issue is taken before volunteering for it"
  homepage "https://github.com/RogueAlg0/taken"
  url "https://files.pythonhosted.org/packages/86/6a/276563b4e66bc05b918a03e429765df045a543a9990bf536e1073ec15a37/taken_gh-0.7.2.tar.gz"
  sha256 "2f011f8584b47b6fac099fd13be2dd7a9ae6aec6e2ba972a8f9a5d48bd2a1a78"
  license "MIT"

  depends_on "python@3.13"

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "taken 0.7.2", shell_output("#{bin}/taken --version")
  end
end
