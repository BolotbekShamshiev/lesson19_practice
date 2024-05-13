// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Children okuuchu = Children('Aktan', 'Aktanov', 12, 'male', '5 "G"');
  okuuchu.showInfo();

  Children okuuchu2 = Children('Akylai', 'Aktanova', 10, 'female', '3 "A"');
  okuuchu2.showInfo();
}

/* Task #3.
Определить класс Children, который содержит такие поля (члены класса): 
закрытые – имя ребенка, фамилию и возраст , публичные – методы ввода данных и 
отображения их на экран. 
Объявить два объекта класса, внести данные и показать их. 
*/

class Children {
  String _name;
  String _lastName;
  int _age;
  String gender;
  String klass;

  Children(
    this._name,
    this._lastName,
    this._age,
    this.gender,
    this.klass,
  );

  showInfo() {
    String result = '';

    if (gender == 'male') {
      result = 'ученик';
    } else if (gender == 'female') {
      result = 'ученица';
    } else {
      result = 'error';
    }

    print('класс: $klass');
    print('$result: $_lastName $_name');
    print('возраст: $_age');
    print('----------------------------');
  }
}
