Unit Zoology;

interface
{ ���̶�����ԭ���и�������ͬ }
procedure ZInit(ia,ib,ic,id:real;x0,y0:integer);
procedure ZProcess(kx,ky:integer; var rx,ry:integer);
procedure ZIngathering(var gx,gy:integer);

implementation
var a,b,c,d:real;
    x,y:longint;
    sgx,sgy:integer;

procedure ZInit(ia,ib,ic,id:real;x0,y0:integer);  { �����������ʼ�� }
begin
     a:=ia;
     b:=ib;
     c:=ic;
     d:=id;
     x:=x0;
     y:=y0;
     sgx:=0;
     sgy:=0;
end;

procedure ZProcess(kx,ky:integer; var rx,ry:integer); { ���ƹ��� }
var xx,yy:longint;
begin
     xx:=x+round((a-b*y)*x)-kx;		{ ����ʽ�μ�����˵�� }
     yy:=y+round((-c+d*x)*y)-ky;
     if xx<0 then x:=0 else		{ �߽��� }
        if xx>200 then x:=200
           else x:=xx;
     if yy<0 then y:=0 else		{ �߽��� }
        if yy>100 then y:=100
           else y:=yy;
     inc(sgx,kx);			{ �ۼƲ�׽�� }
     inc(sgy,ky);
     rx:=x;				{ ����ֵ }
     ry:=y;
end;

procedure ZIngathering(var gx,gy:integer);
begin
     gx:=sgx;
     gy:=sgy;
end;

begin
end.