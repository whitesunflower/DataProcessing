% 运行此代码时打开到空载文件夹
data=[];
for i = 1:40
    fileName = [ num2str(i) '_'];
    m=load(fileName);
    m=[m;zeros(355-length(m),1)]; % 根据需要修改此参数
    data=[data,m];
end
D=data';
x=3;
y=348;
A=D(:,x:y);