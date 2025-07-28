program POOBasico;

{$mode objfpc}{$H+}


//Declaramos la clase ========================================================================================
type
  TPersona = class
  private
    FNombre: String;
    FEdad: Integer;
  public
    constructor Create(ANombre: String; AEdad: Integer);
    destructor Destroy; override;
    procedure Saludar;
  end;


//Implementamos el metodo constructor------------------------------------------------------------------------------
constructor TPersona.Create(ANombre: String; AEdad: Integer);
begin
  FNombre := ANombre;
  FEdad := AEdad;
end;


//Estamos implementando el destructor de la clase------------------------------------------------------------------
destructor TPersona.Destroy;
begin
  writeln(FNombre, ' ha sido destruido.');
  inherited;
end;


//Implementamos un procedimiento---------------------------------------------------------------------------------
procedure TPersona.Saludar;
begin
  writeln('Hola, soy ', FNombre, ' y tengo ', FEdad, ' años.');
end;


//El main---------------------------------------------------------------------------------------------------------
var
  persona: TPersona;
begin
  persona := TPersona.Create('Luisa', 28);
  try
    persona.Saludar;
  finally
    persona.Free;  // Llama al destructor
  end;
  readln;
end.