program TDA_Prioridad;

{$mode objfpc}{$H+}

uses
  SysUtils;

//clase Persona -----------------------------------------------------------------------------
type
  TPersona = class
    Nombre: string;
    Prioridad: Integer; //1 = Alta, 3 = Baja
    constructor Create(ANombre: string; APrioridad: Integer);
    function ToString: string;
  end;

constructor TPersona.Create(ANombre: string; APrioridad: Integer);
begin
  Nombre := ANombre;
  Prioridad := APrioridad;
end;

function TPersona.ToString: string;
begin
  Result := Nombre + ' (Prioridad: ' + IntToStr(Prioridad) + ')';
end;


//Clase Nodo ------------------------------------------------------------------------------------
type
  TNodo = class
    Persona: TPersona;
    Siguiente: TNodo;
    Anterior: TNodo;
    constructor Create(APersona: TPersona);
  end;

constructor TNodo.Create(APersona: TPersona);
begin
  Persona := APersona;
  Siguiente := nil;
  Anterior := nil;
end;


//Clase ColaPrioridad ---------------------------------------------------------------------------
type
  TColaPrioridad = class
  private
    Cabeza, Cola: TNodo;
  public
    procedure InsertarOrdenado(APersona: TPersona);
    procedure MostrarCola;
  end;


//Prcedimiento para ordenar por prioridad ---------------------------------------------------------
procedure TColaPrioridad.InsertarOrdenado(APersona: TPersona);
var
  Nuevo, Actual: TNodo;
begin
  Nuevo := TNodo.Create(APersona);

  //Si la cola está vacía
  if Cabeza = nil then
  begin
    Cabeza := Nuevo;
    Cola := Nuevo;
    Exit;
  end;

  Actual := Cabeza;

  //Buscar posición adecuada según prioridad
  while (Actual <> nil) and (APersona.Prioridad >= Actual.Persona.Prioridad) do
    Actual := Actual.Siguiente;

  //Insertar al inicio
  if Actual = Cabeza then
  begin
    Nuevo.Siguiente := Cabeza;
    Cabeza.Anterior := Nuevo;
    Cabeza := Nuevo;
  end
  //Insertar al final
  else if Actual = nil then
  begin
    Cola.Siguiente := Nuevo;
    Nuevo.Anterior := Cola;
    Cola := Nuevo;
  end
  //Insertar en medio
  else
  begin
    Nuevo.Siguiente := Actual;
    Nuevo.Anterior := Actual.Anterior;
    Actual.Anterior.Siguiente := Nuevo;
    Actual.Anterior := Nuevo;
  end;
end;


//Procedimiento para Mostrar la Cola --------------------------------------------------------------
procedure TColaPrioridad.MostrarCola;
var
  Actual: TNodo;
begin
  Actual := Cabeza;
  while Actual <> nil do
  begin
    WriteLn(Actual.Persona.ToString);
    Actual := Actual.Siguiente;
  end;
end;




//MAIN-------------------------------------------------------------------------------------------
var
  Personas: array[0..7] of TPersona;
  Cola: TColaPrioridad;
  i: Integer;
begin
  // Crear las personas (orden de entrada)
  Personas[0] := TPersona.Create('Pedro', 3);
  Personas[1] := TPersona.Create('Don Luis', 1);
  Personas[2] := TPersona.Create('Maria', 2);
  Personas[3] := TPersona.Create('Carla', 3);
  Personas[4] := TPersona.Create('Abuela Esperanza', 1);
  Personas[5] := TPersona.Create('David', 3);
  Personas[6] := TPersona.Create('Alejandra', 2);
  Personas[7] := TPersona.Create('Pepe', 3);

  // Mostrar orden de entrada
  WriteLn('Orden de entrada (cola sin prioridad):');
  for i := 0 to High(Personas) do
    WriteLn(Personas[i].ToString);

  // Crear cola y agregar ordenadamente
  Cola := TColaPrioridad.Create;
  for i := 0 to High(Personas) do
    Cola.InsertarOrdenado(Personas[i]);

  // Mostrar ordenado por prioridad
  WriteLn;
  WriteLn('Cola ordenada por prioridad:');
  Cola.MostrarCola;
end.