
clc;
clear;

for i=1:8
     img=imread([num2str(i),'.tiff']);
     imwrite(uint8(img), ['png_',num2str(i),'.png']);
end