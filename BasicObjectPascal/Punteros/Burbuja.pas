program Burbuja;

var
    arr: array[0..4] of integer = (3,5,1,8,2);
    huboIntercambio: boolean = true;
    n: Integer =  Length(arr)-1;
    i, j, temp: Integer;


begin
    while(huboIntercambio) do 
    begin 
        huboIntercambio := false;

        for j := 0 to (n-1) do 
        begin
            if(arr[j] > arr[j+1]) then
            begin
                temp := arr[j];
                arr[j] := arr[j+1];
                arr[j+1] := temp;

                writeln('');
                for i:= 0 to (n) do
                begin
                    write(arr[i],', ');
                end;
                huboIntercambio := true;
            end
        end;
    end;

    writeln(' ');
    writeln('El resultado final es: ');
    for i:= 0 to n do
    begin
        write(arr[i],', ');
    end;
end.