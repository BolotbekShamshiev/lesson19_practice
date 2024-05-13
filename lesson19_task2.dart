void main() {
  Tiles tiles = Tiles(brand: 'Керамин', size_h: 245, size_w: 65, price: 1500);
  tiles.getData();
}

/* Task #2.
Создать класс Tiles (кафель), который будет содержать поля с открытым доступом: 
brand, size_h, size_w, price и метод класса getData(). 
В главной функции объявить пару объектов класса и внести данные в поля. 
Затем отобразить их, вызвав метод getData(). 
*/

class Tiles {
  String brand;
  double size_h;
  double size_w;
  double price;

  Tiles({
    required this.brand,
    required this.size_h,
    required this.size_w,
    required this.price,
  });

  void getData() {
    print('Название брэнда кафеля: $brand');
    print('Высота плитки кафеля: $size_h мм');
    print('Ширина плитки кафеля: $size_w мм');
    print('Стоимость 1 кв.м. кафеля: $price сом');
  }
}
