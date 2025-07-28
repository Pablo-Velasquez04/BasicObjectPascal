program tiposVariables;

var
    //Variables enteros
    entero: Integer; //Variable de tipo entero
    short: ShortInt; //Variable de tipo entero corto
    largo: LongInt; //Variable de tipo entero largo

    //Variables de punto flotante
    singlee: Single; //Variable de tipo punto flotante simple
    doble: Double; //Variable de tipo punto flotante doble

    //Variables de tipo extendido y real que sirven para cálculos más precisos devuelve un valor con más decimales
    extendded: Extended; //Variable de tipo extendido
    rreal: Real; //Variable de tipo real

    //Variables de tipo carácter, cadena y booleano
    caracter: Char; //Variable de tipo carácter
    cadena: String; //Variable de tipo cadena de texto
    booleano: Boolean; //Variable de tipo booleano

begin 
    //Asignación de valores a las variables
    entero := 10;
    short := 5;
    largo := 1000000;

    singlee := 3.14;
    doble := 2.718281828459;

    extendded := 1.234567890123456789;
    rreal := 3.141592653589793238;

    caracter := 'A';
    cadena := 'Hola, mundo!';
    booleano := True;

    // Imprimir los valores de las variables
    writeln('Entero: ', entero);
    writeln('Short: ', short);
    writeln('Largo: ', largo);
    
    writeln('Single: ', singlee:0:2);
    writeln('Doble: ', doble:0:6);
    
    writeln('Extendido: ', extendded:0:18);
    writeln('Real: ', rreal:0:15);
    
    writeln('Caracter: ', caracter);
    writeln('Cadena: ', cadena);
    writeln('Booleano: ', booleano);
end.