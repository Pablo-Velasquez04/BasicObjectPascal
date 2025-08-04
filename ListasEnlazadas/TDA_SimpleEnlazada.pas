program TDA_SimpleEnlazada;

{$mode objfpc}{$H+}

type 
    TNodo = class
        Nombre : string;
        Siguiente : TNodo;

        constructor Create(ANombre: string);
    end;

    TListaSimple = class
        cabeza: TNodo;
        
        procedure IncertarNodo(ANombre: string);
        procedure Impresion;
    end;

constructor TNodo.Create(ANombre: string);
begin
    Nombre := ANombre;
    Siguiente := nil;
end;

procedure TListaSimple.IncertarNodo(ANombre: string);
var
    nuevoNodo: TNodo;
begin
    nuevoNodo := TNodo.Create(ANombre);
    nuevoNodo.Siguiente := cabeza;
    cabeza := nuevoNodo;
end;

procedure TListaSimple.Impresion;
var
    Actual: TNodo;
begin 
    Actual := cabeza;
    while Actual <> nil do
    begin
        writeln(Actual.Nombre);
        Actual := Actual.Siguiente;
    end;
end;


var
    lista: TListaSimple;
begin
    lista := TListaSimple.Create;
    lista.IncertarNodo('Pedro');
    lista.IncertarNodo('Julio');
    lista.IncertarNodo('Pepe');
    lista.IncertarNodo('Andrea');
    lista.Impresion;

    writeln;
    lista.Impresion;

    //Liberamos memoria 
    lista.Free
end.