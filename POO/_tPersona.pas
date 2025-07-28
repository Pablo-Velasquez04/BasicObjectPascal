program _tPersona;

{$mode objfpc}{$H+}

//Declaramos la clase
type
    TPersona = class
    private
        FNombre: String;
        FEdad: Integer;
    public 
        //Métodos públicos
        procedure SetNombre(ANombre: String);
        function GetNombre: String;
        procedure Saludar;
    end;


//Implementamos los métodos
procedure TPersona.SetNombre(ANombre: String);
begin  
    FNombre := ANombre;   //Asginar nombre
end;

function TPersona.GetNombre: String;
begin
    Result := FNombre;
end;

procedure TPersona.Saludar;
begin 
    writeln('¡Hola, mi nombre es ', FNombre, ' y tengo ', FEdad, ' anios!');
end;


//Usar la clase en el programa principal
var
    persona1 : TPersona;  //Declaramos un objeto de tipo Persona
begin
    persona1 :=  TPersona.Create;  //Creamos la instancia (es decir, reservamos memoria)
    try
        persona1.SetNombre('Pablo');  //Llamar a métodos
        persona1.FEdad := 21;    //Acceso directo (si FEdad fuera público)
        persona1.Saludar;    //Output: ¡Hola, mi nombre es Pablo y tengo 21 años!
    finally
        persona1.Free;   //Liberamos la memoria
    end;
end.