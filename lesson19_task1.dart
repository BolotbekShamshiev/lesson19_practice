void main() {
  double tempInCelcius = 20;

  ToKelvin toKelvin = ToKelvin();
  double tempInKelvin = toKelvin.convert(tempInCelcius);
  print(
      '$tempInCelcius градусов Цельсия если перевести в Кельвины, то будет $tempInKelvin Кельвин');

  print('-' * 30);

  ToFahrenheit toFahrenheit = ToFahrenheit();
  double tempInFahrenheit = toFahrenheit.convert(tempInCelcius);
  print(
      '$tempInCelcius градусов Цельсия если перевести в Фаренгейты, то будет $tempInFahrenheit Фаренгейт');
}

/* Task #1.
Напишите класс BaseConverter для конвертации из градусов по Цельсию в Кельвины, 
Фаренгейты, и так далее. 
У класса должен быть метод convert, который и делает конвертацию. 

1) Создать абстрактный класс Конвертер 
2) Реализовать интерфейс (т.е. последующие классы имплентируются от Конвертера) 
*/

abstract class BaseConverter {
  double convert(double celsius);
}

class ToKelvin implements BaseConverter {
  @override
  double convert(double celsius) {
    return celsius + 273.15;
  }
}

class ToFahrenheit implements BaseConverter {
  @override
  double convert(double celsius) {
    return celsius * 9 / 5 + 32;
  }
}

