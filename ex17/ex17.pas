program ex17;

var
    inp,out: text;
    a:array of longint;
    max,min,maxid, minid, num: longint;

procedure change(id1, id2: longint);
var
    t: longint;
begin
    t:=a[id1];
    a[id1]:=a[id2];
    a[id2]:=t;
end;



begin
    assign(inp,'input.inp');
    assign(out,'output.out');
    reset(inp);
    rewrite(out);

    setLength(a,0);
    max:=0;
    min:=1000000;
    while not eoln(inp) do
    begin
        read(inp,num);

        if(num>max) then
        begin
            max:=num;
            maxid:=length(a);
        end;

        if(num<=min) then
        begin
            min:=num;
            minid:=length(a);
        end;
        setLength(a,length(a)+1);
        a[length(a)-1]:=num;
    end;
    writeln(max,' ',min);
    change(maxid,minid);

    for num in a do
        write(out,num,' ');

    close(inp);
    close(out);
end.