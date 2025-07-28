program createFree;

{$mode objfpc}{$H+}

uses
  Classes;

var
  lista: TStringList;
begin
  lista := TStringList.Create;  // Reservar memoria (como 'new' en Java) es como el constructor
  try
    lista.Add('Hola');
    write(lista[0]);
  finally
    lista.Free;  // Liberar memoria (como 'delete' en C++ o cerrar recursos) es como el destructor
  end;
end.