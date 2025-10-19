void main() {
  final cookie = Cookie(shape: 'Hello', size: 20.5);
  print(cookie.shape);
  // cookie.shape = 'Square'; // why this is not false , but will error when we make shape in class become final
  // because cookie is final but attributes of it is not final
  // If i change shape to be final , and size too , this will have an error
  print(cookie.shape);
}

class Cookie {
  final String shape;
  final double size;
  // Constructor
  Cookie({required this.shape, required this.size});
  // variables
  //function
  int? _height;
  int? _weight;
  // getter
  int? get height => _height;
  int? get weight => _weight;
  //setter
  set setHeight(int h) {
    _height = h;
  }
  set setWeight(int w) {
    _weight = w;
  }

  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}
