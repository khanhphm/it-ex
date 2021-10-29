program ex13;

var
    inp,out: text;
    num,prevNum,dis:longint;
begin
    assign(inp,'input.inp');
    assign(out,'output.out');
    reset(inp);
    rewrite(out);
    read(inp,prevNum);
    read(inp,num);
    dis:=num-prevNum;
    prevNum:=num;
    while not eof(inp) do
    begin
        read(inp,num);
        if(num-prevNum<>dis)then 
        begin
            writeln(out,false);
            close(inp);
            close(out);
            exit();
        end;
        prevNum:=num;
    end;
    writeln(out,True);
    close(inp);
    close(out);
end.
