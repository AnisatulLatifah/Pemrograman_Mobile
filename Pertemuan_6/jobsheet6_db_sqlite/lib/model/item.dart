class Item {
  int? _id;
  String _name = "";
  // String _code = "";
  int _stock = 0;
  int _price = 0;

  int? get id => _id;
  String get name => _name;
  set name(String value) => _name = value;
  // String get code => _code;
  // set code(String value) => _code = value;
  int get stock => _stock;
  set stock(int value) => _stock = value;
  int get price => _price;
  set price(int value) => _price = value;

  Item(this._name, this._stock, this._price);

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'] ?? ''; // Jika _name null, diatur sebagai string kosong
    // _name = map['code'] ?? ''; // Jika _code null, diatur sebagai string kosong
    _stock = map['stock'] ?? 0; // Jika _stock null, diatur sebagai 0
    _price = map['price'] ?? 0; // Jika _price null, diatur sebagai 0
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': _name,
      // 'code': _code,
      'stock': _stock,
      'price': _price,
    };
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}
