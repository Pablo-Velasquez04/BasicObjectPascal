{$mode objfpc}{$H+}

program _tList;

uses
  Classes, SysUtils;

var
    lista: Tlist; //Lista genérica (similar a ArrayList<Object> en Java)
    pNumero: PInteger;
    pCadena: PString;

begin
    lista := Tlist.Create;  //Creamos la lista
    try
        //Reservamos memoria y asignamos valores
        New(pNumero);
        pNumero^ := 10;
        lista.Add(pNumero); //Guardamos la dirección del número

        New(pCadena);
        pCadena^ := 'Hola';
        lista.Add(pCadena); //Guardamos la dirección de la cadena

        //Impresión de los elementos de la lista
        writeln(PInteger(lista[0])^);  //Imprime 10
        writeln(PString(lista[1])^);   //Imprime Hola
    finally
        lista.Free; //Liberamos la memoria ocupada por la lista
    end;
end.