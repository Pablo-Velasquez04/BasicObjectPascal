program _tListT;

var
    lista: TList<Integer>; //Lista genérica de enteros, simialar a ArrayList<Integer> en Java

begin 
    lista := TList<Integer>.Create; //Creamos la lista
    lista.Add(10); //Añadimos un elemento a la lista
    writeln(lista[0]);
    lista.Free;
