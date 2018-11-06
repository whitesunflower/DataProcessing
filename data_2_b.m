data=[];
for i = 1:40
    fileName = [ num2str(i) '_'];
    m=load(fileName);
    m=[m;zeros(355-length(m),1)];
    data=[data,m];
end
D=data';
x=3;
y=348;
A=D(:,x:y);
A=double(A);
