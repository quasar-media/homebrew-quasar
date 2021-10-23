class Editline < Formula
  desc "Small replacement for GNU readline() for UNIX"
  homepage "https://troglobit.com/projects/editline/"
  url "https://github.com/troglobit/editline/releases/download/1.17.1/editline-1.17.1.tar.gz"
  sha256 "781e03b6a935df75d99fb963551e2e9f09a714a8c49fc53280c716c90bf44d26"
  license "Spencer-94"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "false"
  end
end
