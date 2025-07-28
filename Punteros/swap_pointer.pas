program swap_pointer;

{$mode objfpc}

procedure Swap(a, b: PInteger);
var
    temp: Integer;
begin
    temp := a^;
    a^ := b^;
    b^ := temp;
end;

var
    x, y: Integer;

begin
    x := 100;
    y := 200;

    Writeln('antes del swap:');
    Writeln('x = ', x);
    Writeln('y = ', y);

    Swap(@x, @y);

    Writeln('despues del swap:');
    Writeln('x = ', x);
    Writeln('y = ', y);
end.