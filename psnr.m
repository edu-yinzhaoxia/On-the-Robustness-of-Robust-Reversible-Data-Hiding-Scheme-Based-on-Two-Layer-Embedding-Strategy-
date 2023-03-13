%%测试原图与压缩图像psnr
%%测试原图与 压缩jpeg转变为原图格式 psnr
clc;
clear;

I1 = imread('1.tiff');
I2 = imread('1_100.jpg');
imwrite(I2, '1_100tiff.tiff');
I3 = imread('1_100tiff.tiff');

E1 = I1-I2;
MSE1 = mean2(E1.*E1);
if MSE1 == 0
    psnrvalue1 = -1;
else
    psnrvalue1 = 10*log10(255*255/MSE1);
end

E2 = I1-I3;
MSE2 = mean2(E2.*E2);
if MSE2 == 0
    psnrvalue2 = -1;
else
    psnrvalue2 = 10*log10(255*255/MSE2);
end