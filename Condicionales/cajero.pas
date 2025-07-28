program cajero;

var
    saldoU: Integer = 10000; // Saldo inicial del usuario
    montoRetiro: Integer; //Monto que va a retirar el usuario
    seleccion: Integer; // Opción seleccionada por el usuario



function menu: Integer;
var
    opcion: Integer;
begin
    writeln('Menu de opciones:');
    writeln('1. Consultar saldo');
    writeln('2. Depositar dinero');
    writeln('3. Retirar dinero');
    writeln('4. Salir');
    write('Seleccione una opcion: ');
    ReadLn(opcion);
    writeln('Usted ha seleccionado la opcion: ', opcion);
    writeln('');
    Menu:=opcion; // Retorna la opción seleccionada
end;

Procedure consultarSaldo();
begin
    writeln('Su saldo actual es: ', saldoU);
end;

Procedure depositarDinero();
var 
    montoDeposito: Integer;
begin
    write('Ingrese el monto a depositar: ');
    ReadLn(montoDeposito);
    saldoU := saldoU + montoDeposito; // Suma el monto depositado al saldo
    writeln('Deposito exitoso. Su nuevo saldo es: ', saldoU);
end;

Procedure retirarDinero();
begin
    write('Ingrese el monto a retirar: ');
    ReadLn(montoRetiro);
    if(montoRetiro > saldoU) then
    begin 
        writeln('Pana tu retiro no da para lo que tienes de saldo, tu saldo actual es: ', saldoU);
        menu(); //Vuelve a mostrar el menú si el retiro no es posible
    end
    else
    begin
        saldoU := saldoU - montoRetiro; // Resta el monto retirado del saldo
        writeln('Retiro exitoso. Su nuevo saldo es: ', saldoU);
    end;
end;


//-------------------------Bloque principal del programa-------------------------
begin 
    writeln('Bienvenido al cajero automatico');
    seleccion := menu(); // Llama a la función menu y guarda la opción seleccionada

    if(seleccion = 1) then
    begin
        consultarSaldo(); // Llama a la función para consultar el saldo
    end
    else if(seleccion = 2) then
    begin
        depositarDinero(); // Llama a la función para depositar dinero
    end
    else if(seleccion = 3) then
    begin
        retirarDinero(); // Llama a la función para retirar dinero
    end
    else if(seleccion = 4) then
    begin
        writeln('Gracias por usar el cajero automatico. Hasta luego!');
    end
end.