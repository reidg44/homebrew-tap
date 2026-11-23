class Aretheydown < Formula
  desc "Terminal UI that shows whether GitHub, AWS, Azure, and more are down"
  homepage "https://github.com/reidg44/aretheydown"
  url "https://github.com/reidg44/aretheydown.git",
      tag:      "v0.3.0",
      revision: "28125eacd4fed561133e208c1209aabc72ac6450"
  license "MIT"
  head "https://github.com/reidg44/aretheydown.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # `brew services start aretheydown`: serve the page on 127.0.0.1:7341
  # with the default config and history paths. SIGTERM exits 0.
  service do
    run [opt_bin/"aretheydown", "--serve"]
    keep_alive true
    log_path var/"log/aretheydown.log"
    error_log_path var/"log/aretheydown.log"
  end

  test do
    assert_match "Usage: aretheydown", shell_output("#{bin}/aretheydown --help")
    assert_match version.to_s, shell_output("#{bin}/aretheydown --version")
  end
end
