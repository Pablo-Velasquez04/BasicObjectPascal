Program variables;

//Declaración de variables y constantes globales
var
    variableGlobal: Integer = 100; // Variable global con valor inicial



//---------------------------------------------------------------------------------------------------------------

//Procedimiento (Similar a un "void method" en Java)
Procedure Saludar();
var
    mensajeLocal: string; // Variable local
begin
    mensajeLocal:= 'Hola desde un procedimiento y una variable local';
    writeln(mensajeLocal);
end;



//Función (Similar a un "method que retorna un valor" en Java)
function Sumar(a, b: Integer): Integer;
var 
    resultado: Integer; //Variable local
begin 
    resultado:= a+b; 
    //Sumar:= resultado; //Asignación del resultado a la función
    Exit(resultado); //Retorna el resultado también 
end;

//---------------------------------------------------------------------------------------------------------------



//Bloque principal del programa (como "main" en Java)
begin
    writeln('Valor de la variable global: ', variableGlobal, #10'Salto de linea jeje si funciona con #10 afuera'#10);
    Saludar(); //Llamada al procedimiento

    //Cambiamos el valor de la variable global llamando a la función Sumar y enviadole dos parámetros
    variableGlobal := Sumar(5, 3); 
    writeln('Nuevo valor de la variable global y resultado de Sumar: ', variableGlobal);

    readln; //Espera a que el usuario presione Enter para finalizar
end.