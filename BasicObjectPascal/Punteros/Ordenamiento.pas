program Ordenamiento;

{$mode objfpc}{$H+}

var
  arr: array[0..4] of Integer = (3, 5, 1, 8, 2);
  huboIntercambio: boolean = true; 
  n: Integer = Length(arr)-1;
  i, j, temp, iteracion: Integer;
  apuntador1, apuntador2: ^Integer;

begin
  iteracion := 1;
  write('Bubble Sort:');
  while(huboIntercambio) do
  begin
    huboIntercambio := false;
    for j := 0 to (n-1) do
    begin
      if(arr[j] > arr[j+1]) then
      begin
        apuntador1:= @arr[j];
        apuntador2:= @arr[j+1];

        temp := apuntador1^;
        apuntador1^ := apuntador2^;
        apuntador2^ := temp;

        writeln('');
        write('Iteracion ',iteracion,':   ');
        for i:= 0 to (n) do
        begin
            if(i <> High(arr)) then
              write(arr[i],', ')
            else
              write(arr[i]);
        end;
        huboIntercambio := true;
        iteracion := iteracion+1;
      end;
    end;
  end;

  writeLn;
  write(#10,'El resultado final es:  ');
  for i:= 0 to n do
  begin
      if(i <> High(arr)) then
        write(arr[i],', ')
      else
        write(arr[i]);
  end;
  writeLn;
  write('Total de iteraciones: ', iteracion-1);
end.