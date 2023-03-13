clc;
clear;

n=0;
img=cell(1,8);

msb_img=cell(1,8);
for i=1:8
   img{1,i}=double(imread([num2str(i),'.tiff']));
   msb_img{1,i}=floor(img{1,i}/(2^n));
end 
[h,w]=size(img{1,1});

com_img=cell(20,8);
msb_com_img=cell(20,8);
BER_8=zeros(20,8);
average=zeros(1,20);
for j=1:20
   for i=1:8
       com_img{j,i}=double(imread([num2str(i),'_',num2str(j*5),'.jpg']));
       msb_com_img{j,i}=floor(com_img{j,i}/(2^n));
       t=length(find((msb_img{1,i}-msb_com_img{j,i})~=0));
       BER_8(j,i)=(t*100)/(h*w);
   end
   average(1,j)=mean(BER_8(j,:));
end










