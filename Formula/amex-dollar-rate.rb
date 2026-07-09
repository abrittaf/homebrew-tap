class AmexDollarRate < Formula
  desc "CLI to retrieve the American Express Argentina exchange rate"
  homepage "https://github.com/abrittaf/amex-dollar-rate"
  url "https://github.com/abrittaf/amex-dollar-rate/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/amex-dollar-rate"
  end

  test do
    output = shell_output("#{bin}/amex-dollar-rate")
    assert_match(/\A\d+(\.\d+)?\z/, output.strip)
  end
end
