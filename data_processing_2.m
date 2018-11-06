
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
set(gcf,'Units','centimeters','Position',[6 6 9.7 9]);%…Ë÷√Õº∆¨¥Û–°
imagesc(B);
colormap(gray(256));




