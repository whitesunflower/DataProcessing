% ��ȡ���ݲ����浽һ��������
data=[];
for i = 1:40     % ������������Ҫ�����޸�
    fileName = [ num2str(i) '_'];  % �ļ���
    m=load(fileName);
    m=[m;zeros(350-length(m),1)];  % ������0���룬������Ҫ�����޸�
    data=[data,m];
end
D=data';
% ��ȡ������Ϊ�¾��󣬸�����Ҫ�޸Ĳ���
x=3;
y=343;
B=D(:,x:y);
% ��ȡ������ֵ����λ��
maxvalue = max(max(B))
[x,y]=find(B==maxvalue)
minvalue = min(min(B))
[m,n]=find(B==minvalue)
meanvalue=mean(mean(B))
% ���Ҷ�ͼ
imagesc(B);
colormap(gray);


