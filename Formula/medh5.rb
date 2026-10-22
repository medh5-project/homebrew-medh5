class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/medh5-project/medh5"
  version "2.2.2"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0", "Unicode-3.0"]

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/medh5-project/medh5/releases/download/v2.2.2/medh5-2.2.2-aarch64-apple-darwin.tar.gz"
    sha256 "ef55079a42724b0355ff55ebb536cf6471fb76c822553b12c634b8d0e02b6f5b"
  end

  on_linux do
    on_arm do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.2/medh5-2.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b70b45efbbe7a4a5426bb55fb4f976b4fb85db71e4a9d733abde0e15497c5db"
    end
    on_intel do
      url "https://github.com/medh5-project/medh5/releases/download/v2.2.2/medh5-2.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ff087635c64b158b9d27494fb15ce21e2960345276037fee345d87c53ebd66e"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
