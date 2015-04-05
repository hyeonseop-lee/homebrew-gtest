require 'formula'

class Gtest < Formula
	homepage 'https://code.google.com/p/googletest/'
	url 'https://googletest.googlecode.com/files/gtest-1.7.0.zip'
	sha1 'f85f6d2481e2c6c4a18539e391aa4ea8ab0394af'

	def install
		system './configure'
		system 'make'
		(prefix + "lib").install Dir["lib/.libs/*"]
		(prefix + "include").install Dir["include/*"]
		(HOMEBREW_PREFIX + "lib").install_symlink Dir[prefix + "lib/*"]
		(HOMEBREW_PREFIX + "include").install_symlink Dir[prefix + "include/*"]
	end
end
