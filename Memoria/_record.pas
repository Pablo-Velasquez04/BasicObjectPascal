program _record;

type
    TCarro = record
        Marca: string;
        Modelo: string;
        Ano: integer;
    end;

var
    c: TCarro;
begin
    c.Marca := 'Toyota';
    c.Modelo := 'Corolla';
    c.Ano := 2020;

    writeln('Marca: ', c.Marca);
    writeln('Modelo: ', c.Modelo);  
    writeln('Ano: ', c.Ano);
end.
