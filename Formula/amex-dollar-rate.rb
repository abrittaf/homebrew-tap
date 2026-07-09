class AmexDollarRate < Formula
  desc "CLI to retrieve the American Express Argentina exchange rate"
  homepage "https://github.com/abrittaf/amex-dollar-rate"
  url "https://github.com/abrittaf/amex-dollar-rate/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "817fbfcff0498fb3b1461dcc165f04c0fc78b5f00083555867ce70c460110fea"
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
