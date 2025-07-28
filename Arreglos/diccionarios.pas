program diccionarios;
{$mode delphi} // o {$mode objfpc}{$H+}

uses
  Generics.Collections;

var
    //Similar a un HashMap<String, Integer> en Java
    diccionario: TDictionary<String, Integer>; //Declaración de un diccionario con claves de tipo String y valores de tipo Integer
    valor: Integer; //Variable para almacenar el valor obtenido del diccionario
begin
    diccionario := TDictionary<String, Integer>.Create; //Creamos el diccionario

    try
        //Añadimos elementos al diccionario
        diccionario.Add('Manzanas', 10); //Diccionario.put('Manzana', 10);
        diccionario.Add('Bananas', 20);

        //Obtenemos un valor por su clave
        if diccionario.TryGetValue('Manzanas', valor) then //Similar a diccionario.get('Manzana')
        begin 
            writeln('Cantidad de Manzanas: ', valor); //Imprime 10
        end
    finally
        diccionario.Free; //Liberamos la memoria ocupada por el diccionario
    end;
end.
