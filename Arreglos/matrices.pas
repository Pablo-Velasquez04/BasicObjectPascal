program matrices;

{$mode objfpc}{$H+}  //Nos sirve para definir el modo de compilación y habilitar las extensiones de objetos

uses
  SysUtils, Math;  //SysUtils para funciones de utilidad y Math para operaciones matemáticas

var
    matriz: array[0..2, 0..2] of Integer; //Declaración de una matriz 3x3
    i, j: Integer; //Variables de control

begin
    //Asignación de valores a la matriz
    matriz[0,0] := 1; 
    matriz[0,1] := 2;
    matriz[1,0] := 3;
    matriz[1,1] := 4;

    //Recorrido de la matriz
    for i := 0 to 2 do  //Recorremos las filas
    begin 
        for j:=0 to 2 do   //Recorremos las columnas
        begin 
            write(matriz[i,j], ' '); //Impresión de cada elemento de la matriz
        end;
        writeln; //Nueva línea después de cada fila
    end;
end.