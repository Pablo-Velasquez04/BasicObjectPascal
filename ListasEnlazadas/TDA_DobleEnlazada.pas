program TDA_DobleEnlazada;

{$mode objfpc}{$H+}

uses 
    SysUtils;

//Creamos la clase TPersona --------------------------------------------------------------------------------------------------------------
type 
    TPersona = class
    public 
        Nombre: string;
        Prioridad: Integer;
        constructor Create(ANombre: string; APrioridad: Integer);  //Declaramos el Constructor de TPersona
        function ToString: string;  //Declaramos la función ToString
    end;

constructor TPersona.Create(ANombre: string; APrioridad: Integer);  //Implementamos el constructor de TPersona
begin 
    Nombre := ANombre;
    Prioridad := APrioridad;
end;

function TPersona.ToString: string;  //Implementamos la función ToString
begin
    Result := Nombre + ' (Prioridad: '+IntToStr(Prioridad)+ ')';
end;

//Creamos la clase TNodo (El molde) ---------------------------------------------------------------------------------------------------
type       
    TNodo = class
    public
        Persona: TPersona;
        Siguiente: TNodo;
        Anterior: TNodo;
        constructor Create(APersona: TPersona);  //Declaramos el constructor
    end;

constructor TNodo.Create(APersona: TPersona);  //Obtiene los datos de la persona para el nodo y inicia con los punteros en null
begin
    Persona := APersona;
    Siguiente := nil;
    Anterior := nil;
end;

//Creamos la clase TColaPrioridad ----------------------------------------------------------------------------------------------------
type 
    TColaPrioridad = class
    private 
        Cabeza, Cola: TNodo;
    public 
        procedure InsertarOrdenado(APersona: TPersona);
        procedure MostrarCola;
    end;

//Procdimiento para insertar 
procedure TColaPrioridad.InsertarOrdenado(APersona: TPersona);  //Procedimiento para hacer las Incersiones 
var
    Nuevo, Actual: TNodo;
begin
    Nuevo := TNodo.Create(APersona); //Aquí creamos el nuevo nodo, recibiendo una persona (Nombre y prioridad) 

    //Si la cola está vacía
    if Cabeza = nil then 
    begin
        Cabeza := Nuevo;
        Cola := Nuevo;
        Exit;
    end;

    Actual := Cabeza;

    //Buscamos la posición adecuada según la prioridad que tenga
    //Si Actual no es el nodo final Y la prioridad del nuevo Nodo es mayor a la Prioridad del Nodo Actual
    //Seguira recorriendo la lista y ver donde ira el nuevo Nodo.
    while(Actual <> nil) and (APersona.Prioridad >= Actual.Persona.Prioridad) do 
        Actual := Actual.Siguiente;

    //Insertar al inicio
    if Actual = cabeza then
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
        Nuevo.Siguiente := Actual;  //El apuntador siguiente del nuevo Nodo apuntara al Nodo Actual
        Nuevo.Anterior := Actual.Anterior;  //El apuntador Anterior del nuevo Nodo apuntara al anterior que apuntaba el Actual
        Actual.Anterior.Siguiente := Nuevo; //El apuntador siguiente del nodo anterior de Actual, ahora apuntara al Nuevo nodo
        Actual.Anterior := Nuevo; //El apuntador Anterior de Actual apuntara al Nodo nuevo.
    end;
end;

procedure TColaPrioridad.MostrarCola;  //Procedimiento para mostar la cola
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
  //Crear las personas (orden de entrada)
  Personas[0] := TPersona.Create('Pedro', 3);
  Personas[1] := TPersona.Create('Don Luis', 1);
  Personas[2] := TPersona.Create('Maria', 2);
  Personas[3] := TPersona.Create('Carla', 3);
  Personas[4] := TPersona.Create('Abuela Esperanza', 1);
  Personas[5] := TPersona.Create('David', 3);
  Personas[6] := TPersona.Create('Alejandra', 2);
  Personas[7] := TPersona.Create('Pepe', 3);

  //Mostrar orden de entrada
  WriteLn('Orden de entrada (cola sin prioridad):');
  for i := 0 to High(Personas) do
    WriteLn(Personas[i].ToString);

  //Crear cola y agregar ordenadamente
  Cola := TColaPrioridad.Create;
  for i := 0 to High(Personas) do
    Cola.InsertarOrdenado(Personas[i]);

  //Mostrar ordenado por prioridad
  WriteLn;
  WriteLn('Cola ordenada por prioridad:');
  Cola.MostrarCola;  //Llamamos al procedimiento para que ejecute la impresión de la cola
end.