class Taken < Formula
  include Language::Python::Virtualenv

  desc "Check if a GitHub issue is taken before volunteering for it"
  homepage "https://github.com/RogueAlg0/taken"
  url "https://files.pythonhosted.org/packages/7e/f2/2847cc875898ee1f0b988cb5929042157662df1c8c9d8c9759e48bfed4ea/taken_gh-0.7.1.tar.gz"
  sha256 "6dc4fd5d6ab55a6746ba9c6060e87be8c41ec76fdc2f4671d8cc86408184aeea"
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
    assert_match "taken 0.7.1", shell_output("#{bin}/taken --version")
  end
end
