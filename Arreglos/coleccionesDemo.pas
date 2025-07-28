program ColeccionesDemo;

{$mode delphi}  //Nos permite usar las características de Delphi

uses
  SysUtils, Classes, Generics.Collections;  //Importamos las unidades necesarias para trabajar con colecciones

var
  //1. Array estático
  numeros: array[0..2] of Integer = (10, 20, 30);

  //2. Array dinámico
  dinamico: array of String;

  //3. Lista de strings
  frutas: TStringList;

  //4. Diccionario
  inventario: TDictionary<String, Integer>;

  i: Integer;  //Variable de control para recorrer los arreglos y listas
  clave: String;  //Variable para recorrer el diccionario


begin
  //Array dinámico
  SetLength(dinamico, 2);
  dinamico[0] := 'Hola';
  dinamico[1] := 'Mundo';

  //Lista de strings
  frutas := TStringList.Create;
  frutas.Add('Manzana');
  frutas.Add('Banana');

  //Diccionario
  inventario := TDictionary<String, Integer>.Create;
  inventario.Add('Manzanas', 5);
  inventario.Add('Bananas', 8);

  //Mostrar datos
  writeln('Array estático:');
  for i := 0 to High(numeros) do  //Recorremos el array estático
    writeln(numeros[i]);

  writeln('Lista de frutas:');   
  for i := 0 to frutas.Count - 1 do  //Recorremos la lista de strings
    writeln(frutas[i]);

  writeln('Inventario:');
  for clave in inventario.Keys do   //Recorremos las claves del diccionario
    writeln(clave, ': ', inventario[clave]);

  //Liberar memoria
  frutas.Free;  //Liberamos la memoria ocupada por la lista de strings
  inventario.Free;  //Liberamos la memoria ocupada por el diccionario
  readln;   //Esperamos a que el usuario presione una tecla antes de cerrar la consola
end.