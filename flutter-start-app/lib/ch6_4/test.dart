class Image {
  late String url;

  static Map<String, Image> _cache = <String, Image>{};

  // 생성자, 외부 호출 불가
  Image._instance(this.url);

  factory Image(String url) {
    if (_cache[url] == null ) {
      var obj = Image._instance(url);
      _cache[url] = obj;
    }
    return _cache[url]!;
  }
}

main() {
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');
  print('image1 == image2 : ${image1 == image2}');
}