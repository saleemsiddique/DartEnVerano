import 'dart:io';

/*
main(){
  var apellido = "apellido"; //Aqui puedo poner un '2' como valor, porque no tengo definida que tipo de variable es. var adopta el tipo de variable segun el valor introducido.
  String nombre = 'Saleem'; // Aqui no puedo poner un valor porque ya esta fijo como String;
  print(nombre + ' ' + apellido);
}
*/

/*
void main() {
  stdout.writeln('What is your name?');
  String? name = stdin.readLineSync();
  print('my name is ' + name!);
}
*/ 

/*
main() {
  dynamic name1 = 'Hola'; //Dynamic type, can change
  name1 = 3;
  var name2 = 'Hola'; //Var type, cannot change.
  name2 = 2;  
}
*/

/*
main(){
  int one = int.parse("1");
  assert(one == 1);


  double onePointOne = double.parse("1.1");
  assert(onePointOne == 1.1);

  String two = 2.toString();
  print(two == "2");
}
*/
/*
void main(List<String> args) {
  const val1 = "Hola";
  const val2 = 3;
  const val3 = false;
  const val4 = 2.2;

  print(val1.runtimeType);
  print(val2.runtimeType);
  print(val3.runtimeType);
  print(val4.runtimeType);
}
*/

//LOS OPERADORES SON IGUALES QUE EN JAVA ==, !=, ++, --, x+=1, &&, || etc...
// Null aware operator
// (?.), (??), (??=)
/*
class Num{
  int num = 10;
}
main(){
  var n = Num();
  int numero;
  
  numero = n?.num ?? 0;

  print(numero);
}
main(){
  int? numero;
  print(numero ??= 100);
}

// Operadores (?), (:)
main(){
  int num = 100;
  var result = num % 2 == 0 ? 'par' : ' impar';
  print(result);
}

main(){
  var x = 100.99;
  if (x is int) {
    print('integer');
  }
}

//SWITCH es exactamente igual que java

main(){
  stdout.writeln('Di un numero: ');
  String? number = stdin.readLineSync();
  int num = int.parse(number!);

  switch(num){
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    default:
      print('I dont know');
      break;
  }
}
*/

/*
//TODOS LOS BUCLES SON IGUALES FOR, FORIN, FOREACH, WHILE, DO-WHILE
main(){
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var numbers = [1, 2, 3];
  for (var number in numbers) {
    print(number);
  }
}
*/

// LIST, SET MAP
/*
main(){
  List names1 = ['Jack', 'Jill', 'ABS'];
  names1.add('sab');
  for (var name in names1) {
    print(name);
  };

  Set names2 = {'Jack', 'Jill', 2}; 
  names2.add('Jake');
  for (var name in names2) {
    print(name);
  }

  Map code = {1: 'UNO', 2: 'Dos', 3: 3};
    code[4] = 'Cuatro'; 
    code['CINCO'] = 5;
    print(code['CINCO']);
  }
  */

  /*
  //FUNCTIONS
  main(){
    /*
    stdout.writeln('Introduce a number: ');
    var number = stdin.readLineSync();
    int num = int.parse(number!);
    showMsg('The square of $num is = ${square(num)}');
    */
    func(2, num2: 3);
  }

  int square(int num){
    return num * num;
  }

  void showMsg(String msg){
    print(msg);
  }

  void func(var num1, {var num2}){
    print(num1 + (num2 ?? 0));
  }
  */


  //CLASS
  /*
  class Persona{
    late String name;
    late int age;
  
  Persona(String name, [int age = 18]){
    this.name = name;
    this.age = age;
  }

  Persona.guest(){
    this.name = 'Guest';
    this.age = 18;
  }

  void shwInfo(){
    print(name);
    print(age);
  }
}

  void main(List<String> args) {
  Persona persona = Persona('Mamut', 11);
  //persona.name = 'Mamut';
  //persona.age = 33;
  persona.shwInfo();

  var persona2 = Persona.guest();
  persona2.shwInfo();
}
*/

class Vehiculo{
  late String tipo;
  late String matricula;

  Vehiculo(String tipo, String matricula){
    this.tipo = tipo;
    this.matricula = matricula;
  }

  String get getTipo => tipo;
  String get getmatricula => matricula;

  set setTipo(String tipo){
    this.tipo = tipo;
  }

  set setMatricula(String matricula){
    this.matricula = matricula;
  }
   

  printvehiculo(){
    print(tipo);
    print(matricula);
  }
}

class Coche extends Vehiculo{
  late int numRuedas;

  Coche(String tipo, String matricula, int numRuedas) : super(tipo, matricula){
    this.numRuedas = numRuedas;
  }

  int get getNumRuedas => numRuedas;

  set setNumRuedas(int numRuedas){
    this.numRuedas = numRuedas;
  }

  printCoche(){
    super.printvehiculo();
    print(numRuedas);
  }
  
}

main(){
  Vehiculo vehiculo = Vehiculo('Coche', 'c1');
  Coche coche = Coche(vehiculo.tipo, vehiculo.matricula, 4);
  coche.printCoche();
  print(coche.getNumRuedas);
  print('-------------------');
  coche.setTipo = 'Moto';
  coche.setMatricula = 'm1';
  coche.setNumRuedas = 2;
  coche.printCoche();
}

