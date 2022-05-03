clc;
close;

a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena_dark.png');
subplot(2,2,1);
imshow(a);
title('original image');

b = imnoise(a,'gaussian');
subplot(2,2,2);
imshow(b);
title('output image __By Mazhar Solkar');

//imwrite(b,'gaussian.jpg')

