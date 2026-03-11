import 'dart:io';

class Nodo {
  int dato;
  Nodo? siguiente;
  
  Nodo(this.dato);
}


Nodo? insertar(Nodo? pila, int n){
  Nodo nuevoNodo = Nodo(n);
  nuevoNodo.dato = n;
  nuevoNodo.siguiente = pila;
  pila = nuevoNodo;
  print('\nElemento agregado $n correctamente');
  return pila;
}

(Nodo?, int ) desertar(Nodo? pila){
  Nodo? aux = pila;
  int n = aux!.dato;
  pila = aux.siguiente;
  aux = null;
  return(pila, n);
}

Nodo? mostrar(Nodo? pila){
  Nodo? aux = pila;
  print('\nEstructura de la pila\n');
  while (aux != null){
    print('|\t${aux.dato}\t|');
    aux = aux.siguiente;
  }
  if(aux == null){
    print("-----------------");
  }
  return pila;
}

Nodo? sacar(Nodo? pila){
  var (nuevaPila, valor) = desertar(pila);
  pila = nuevaPila;
  print('\nElemento $valor sacado de la pila');
  return pila;
}

void main(){
  Nodo? pila;

  stdout.writeln('Ingrese el size de la pila: ');
  int u = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < u; i++){
    stdout.writeln('Ingrese el elemento de la pila ${i+1}: ');
    int n = int.parse(stdin.readLineSync()!);
    pila = insertar(pila, n);
  }
  mostrar(pila);
  pila = sacar(pila);
  mostrar(pila);
}
