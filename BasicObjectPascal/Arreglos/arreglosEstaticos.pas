program arrayFijo;

var
    numeros: array[0..4] of integer = (10, 20, 30, 40, 50); //Inicialización de un arreglo estático
    dias: array[1..7] of string = ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo'); //Arreglo de días de la semana
    i: integer; //Variable de control para el bucle

begin
    //Acceso y modificación de elementos del arreglo
    numeros[0] := 100; //Modificación del primer elemento del arreglo
    writeln(numeros[0]); //Impresión del primer elemento del arreglo


    //Recorrido de los días de la semana
    for i:= 1 to 7 do
    begin
        writeln('Dia ',i, ': ', dias[i]); //Impresión de cada día de la semana
    end;


    //recorrido del arreglo de números
    for i := 0 to High(numeros) do  //High(numeros) devuelve el índice más alto del arreglo
    begin
        writeln(numeros[i]); //Impresión de cada número en el arreglo
    end;

end.