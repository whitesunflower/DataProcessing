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
B=D(:,x:y);
B=double(B);
result=B-A;
set(gcf,'Units','centimeters','Position',[6 6 9.7 9]); % ����ͼƬ��С
imagesc(result);
colormap(gray(256));
savefig('����90���Ͻ��ͼ.fig')  % ������Ҫ�޸�����