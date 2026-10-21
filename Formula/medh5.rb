class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/medh5-project/medh5"
  version "2.2.0"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0", "Unicode-3.0"]

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/medh5-project/medh5/releases/download/v2.2.0/medh5-2.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "b83a8731dbab121fce18a4825d5c4b891d2872c37a80373af6866484b33a751e"
  end

  on_linux do
    on_arm do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.0/medh5-2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1467e8fdf0b33cb7f31782122c861fdd088f949bdca99c5bf9f13ff7ce1d1fca"
    end
    on_intel do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.0/medh5-2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64a8858fb6082bbbfee76798b1d073e571b98d4c9af9bd1ffca5d77b407b984f"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
