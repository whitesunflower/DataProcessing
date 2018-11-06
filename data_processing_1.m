% 读取数据并保存到一个矩阵中
data=[];
for i = 1:40     % 行数，根据需要进行修改
    fileName = [ num2str(i) '_'];  % 文件名
    m=load(fileName);
    m=[m;zeros(350-length(m),1)];  % 列数用0补齐，根据需要进行修改
    data=[data,m];
end
D=data';
% 截取矩阵作为新矩阵，根据需要修改参数
x=3;
y=343;
B=D(:,x:y);
% 获取矩阵最值及其位置
maxvalue = max(max(B))
[x,y]=find(B==maxvalue)
minvalue = min(min(B))
[m,n]=find(B==minvalue)
meanvalue=mean(mean(B))
% 出灰度图
imagesc(B);
colormap(gray);


