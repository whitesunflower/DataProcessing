% ���д˴���ʱ�򿪵�����������ļ���
data=[];
for i = 1:40
    fileName = [ num2str(i) '_'];
    m=load(fileName);
    m=[m;zeros(355-length(m),1)]; % ������Ҫ�޸Ĵ˲���
    data=[data,m];
end
D=data';
x=3;
y=348;
B=D(:,x:y);
result=B-A;
imagesc(result);
colormap(gray(256));
