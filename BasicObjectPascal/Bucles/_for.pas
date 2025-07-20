program _for;

var
    i: Integer;
    frutas: array of String = ('Manzana', 'Banana', 'Naranja', 'Pera');
    fruta: String;

begin 
    //Ascendente (0 a 9)
    for i := 0 to 9 do
    begin
        writeln('Contador: ', i);
    end; 

    //Descendente (5 hasta 0)
    for i:= 5 downto 0 do
    begin
        writeln('Contador decreciente: ', i);
    end;

    //No existe como tal un "for each" en Pascal, pero se puede simular con for-in
    for fruta in frutas do
    begin 
        write(fruta, ', ');
    end;
end.