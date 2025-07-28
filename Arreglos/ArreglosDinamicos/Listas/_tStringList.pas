{$mode objfpc}{$H+}

program _tstringList;

uses
  Classes, SysUtils;

var
    lista: TStringList; //Declaración de una lista de cadenas
    i: Integer; //Variable de control

begin
    lista := TStringList.Create; //Creamos la lista (similar a un ArrayList en Java)

    try
        lista.Add('Manzana'); //Añadimos elementos a la lista
        lista.Add('Banana');
        lista.Add('Naranja');
        lista.Add('Pera');

        //Recorrido de la lista
        for i := 0 to lista.Count - 1 do //con Count obtenemos el número de elementos
        begin
            writeln(lista[i]); //Impresión de cada elemento de la lista
        end;

        //Eliminación de un elemento de la lista
        lista.Delete(1); //Eliminamos el elemento en la posición 2 (Naranja)

        //Verificamos si existe un elemento en la lista
        if lista.IndexOf('Naranja') <> -1 then  //con IndexOf buscamos el índice del elemento, si no existe devuelve -1
        begin 
            writeln('Naranja esta en la lista');
        end;

        //Elementos restantes después de la eliminación
        writeln('Elementos restantes despues de eliminar un elemento: ',lista.Count);  //.Count nos da el número de elementos restantes en la lista
    finally
        lista.Free; //con .Free liberamos la memoria ocupada por la lista, es decir, la eliminamos.
    end;
end.