program ex18;

var
    inp,out: text;
    a,b:array of longint;
    i:longint;
    

function findZero(a: array of longint):integer;
var
    i:integer;
begin
    for i:=low(a) to high(a) do
        if(i=0) then exit(i);
end;
begin
    assign(inp,'input.inp');
    assign(out,'output.out');
    reset(inp);
    rewrite(out);
    
    setLength(a,0);
    setLength(n,1);
    while not eoln(inp) do
    begin
        read(n[0]);
        if(n>0) then Insert(n,a,0)else
        if(n<0) then Insert(n,a,length(a)+1)else
        if(n=0) then Insert(n,a,findZero(a));
    end;

    for i in a do
        write(n,' ');


    Close(inp);
    close(out);
end.