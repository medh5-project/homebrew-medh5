class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/medh5-project/medh5"
  version "2.2.1"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0", "Unicode-3.0"]

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/medh5-project/medh5/releases/download/v2.2.1/medh5-2.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "eed5467c453b157dcb925304a7cdb0369450f86d5f0638addd4602a024cf023c"
  end

  on_linux do
    on_arm do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.1/medh5-2.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34b8c5cc8c87c262489dff5d6c0aa12d2004109c3ae2c0069d6c48ff089ab6cb"
    end
    on_intel do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.1/medh5-2.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "201758976c4d7d23d568cfa6e8777a47a13e7364a0ad8747e2534b9b658ce5c3"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
