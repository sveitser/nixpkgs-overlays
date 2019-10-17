{ lib, fetchzip }:

fetchzip {
  name = "kaiti";
  url = "https://github.com/dolbydu/font/raw/f12fd1af32fdcce6e7703f457029a9c6b92970c8/unicode/Kaiti.ttf";
  sha256 = "0lmx1sl6aw7x6dgd1qkgjizch8vk50zlm1vgl6y5ryaajn4i838b";
  postFetch = "install -Dm644 $downloadedFile $out/share/fonts/truetype/Kaiti.ttf";
}
