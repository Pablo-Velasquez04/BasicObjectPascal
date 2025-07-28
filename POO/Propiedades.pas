program Propiedades;

type
  TPersona = class
  private
    FNombre: String;
    FEdad: Integer;
    procedure SetEdad(AEdad: Integer);
  public
    constructor Create(ANombre: String; AEdad: Integer);
    property Nombre: String read FNombre write FNombre;  // Getter/Setter automático
    property Edad: Integer read FEdad write SetEdad;     // Setter personalizado
    procedure Saludar;
  end;

constructor TPersona.Create(ANombre: String; AEdad: Integer);
begin
  FNombre := ANombre;
  FEdad := AEdad;
end;

procedure TPersona.SetEdad(AEdad: Integer);
begin
  if AEdad >= 0 then
    FEdad := AEdad
  else
    writeln('Error: Edad no válida');
end;

procedure TPersona.Saludar;
begin
  writeln('Hola, soy ', FNombre, ' y tengo ', FEdad, ' años.');
end;

var
  p: TPersona;
begin
  p := TPersona.Create('Ana', 25);
  try
    p.Saludar;           // Hola, soy Ana y tengo 25 años.
    p.Edad := 30;        // OK (usa SetEdad)
    p.Edad := -5;        // Error: Edad no válida
    p.Nombre := 'Luisa'; // OK (asignación directa a FNombre)
    p.Saludar;           // Hola, soy Luisa y tengo 30 años.
  finally
    p.Free;
  end;
  readln;
end.