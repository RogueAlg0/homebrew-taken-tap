class Taken < Formula
  include Language::Python::Virtualenv

  desc "Check if a GitHub issue is taken before volunteering for it"
  homepage "https://github.com/RogueAlg0/taken"
  url "https://files.pythonhosted.org/packages/72/32/5d75285c6386c27521b549060278163a1ea74acb2eb3109bf6bf3f2a8cae/taken_gh-0.7.3.tar.gz"
  sha256 "f7d9c9c2dc24f0e0b22af65e66a69fc87865eaa4660701f4c71f54215c709801"
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
    assert_match "taken 0.7.3", shell_output("#{bin}/taken --version")
  end
end
