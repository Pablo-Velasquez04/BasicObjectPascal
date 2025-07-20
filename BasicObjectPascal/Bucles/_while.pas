program _while;

var
    contador: Integer = 0;
    numero: Integer;

begin

    //ciclo while normal
    while(contador < 10) do
    begin
        writeln('Contador: ', contador);
        contador := contador +1;
    end;

    //ciclo repeat-until equivalente al do-while de Java
    repeat
        write('Ingrese un numero mayor que 10: ')
        readLn(numero);
    until(numero>10);  //OJO: Se repite mientras la condición sea falsa
end.