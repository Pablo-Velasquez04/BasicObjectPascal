program HolaMundo;

//Aquí podemos declarar variables y constantes 
var 
  //Variables locales, se crea la variable y en la parte de abajo se le asigna un valor, ya seria variable local
  strMensaje: string;
  numeroPar: Integer;
  esCorrecto: Boolean;

  A,B: Char;

  //Todos estas variables son globales
  valor: Integer = 10;  

begin
  numeroPar := 2;
  esCorrecto := False; 
  strMensaje := 'Hola, Mundooo!';
  writeln(strMensaje);
  readln; // Espera a que el usuario presione Enter
end.