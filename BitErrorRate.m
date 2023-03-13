clc;
clear;

for m=1:8  %m 图像信号
for n=100:-5:5  %n 质量因子QF
img=imread([num2str(m),'.tiff']);
[h,w]=size(img);
for i=1:h
    for j=1:w
        Eighth(i,j)=bitget(img(i,j),8);
    end
end

Cimg=imread([num2str(m),'_',num2str(n),'.jpg']);
for i=1:h
    for j=1:w
        CEighth(i,j)=bitget(Cimg(i,j),8);
    end
end

t=0;
for i=1:h
    for j=1:w
        if Eighth(i,j)~=CEighth(i,j)
            t=t+1;
        end
    end
end
ERate(m,n/5)=(t/(h*w))*100;
end
end

%psnr=PSNR(img,Cimg);