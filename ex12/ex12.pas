program ex12;
var 
    inp,out: text;
    a:array of longint;
    i: integer;
    result:longint;

function findFirst(value:longint;a:array of longint):integer;
var
    i: integer;
begin
    for i:=low(a) to high(a) do
    begin
        if(value=a[i]) then exit(i);
    end;
end;

function findLast(value:longint;a:array of longint):integer;
var
    i: integer;
begin
    for i:=high(a) downto low(a) do
    begin
        if(value=a[i]) then exit(i);
    end;
end;
begin
    setLength(a,1);
    assign(inp,'input.inp');
    assign(out,'output.out');
    Reset(inp);
    Rewrite(out);
    while(not eof(inp)) do
    begin
      read(inp,a[length(a)-1]);
      setLength(a,length(a)+1);
    end;
    result:=0;
    for i:=findFirst(0,a) to findLast(0,a) do
    begin
        result:=result+a[i];
    end;
    writeln(out,result);

    close(inp);close(out);
end.