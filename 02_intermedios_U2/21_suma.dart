import 'dart:io';

int suma(int n){
  if(n <= 0){
    return 0;
  }else{
    return n + suma(n - 1);
  }

}

main(){
  int n = 0;
  do{
    stdout.writeln('Ingrese un numero: ');
    n = int.parse(stdin.readLineSync()!);
  } while (n <= 0);
  int resultado = suma(n);
  print('La suma de $n y sus precedentes es $resultado');
}
