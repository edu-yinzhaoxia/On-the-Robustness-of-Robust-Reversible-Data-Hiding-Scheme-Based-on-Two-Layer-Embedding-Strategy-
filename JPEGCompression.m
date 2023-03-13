clc;
clear;

for j=100:-5:5
for i=1:8
     img=imread([num2str(i),'.tiff']);
     imwrite(uint8(img), [num2str(i),'_',num2str(j),'.jpg'],'Quality',j);
end
end
     