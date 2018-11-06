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
set(gcf,'Units','centimeters','Position',[6 6 9.7 9]); % 设置图片大小
imagesc(result);
colormap(gray(256));
savefig('天线90度上结果图.fig')  % 根据需要修改名称