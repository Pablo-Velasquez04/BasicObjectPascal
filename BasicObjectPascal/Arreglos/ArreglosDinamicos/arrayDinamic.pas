program arrayDinamic;

var
    miArrayDinamico: array of Integer; //Declaración de un arreglo dinámico
    i: Integer; //Variables de control

begin
    SetLength(miArrayDinamico, 3); //Inicialización del arreglo dinámico con 3 elementos
    miArrayDinamico[0] := 10; //Asignación de valores al arreglo dinámico
    miArrayDinamico[1] := 20;
    miArrayDinamico[2] := 30;   

    //Añadir un nuevo elemento al arreglo dinámico
    SetLength(miArrayDinamico, Length(miArrayDinamico) + 1); //Aumentar el tamaño del arreglo
    miArrayDinamico[High(miArrayDinamico)] := 40; //Asignar valor al nuevo elemento

    //Recorrido del arreglo dinámico con for-in
    for i in miArrayDinamico do 
    begin
        writeln(i); //Impresión de cada elemento del arreglo dinámico
    end;
end.