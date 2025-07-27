program sintaxisBasicaClase;

{$mode objfpc}{$H+}

type
    //Declaración de una clase
    TMiClase = class
    private
        //Campos (atributos privados)
        FCampo1: Integer;
        FCampo2: String;

    public
        //Métodos públicos
        procedure Metodo1;
        function Metodo2(parametro: Integer): Boolena;
    end;
