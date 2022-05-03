//PRACTICAL 1 
//(B) Program to study the effects of reducing the spatial resolution of a digital image

I = imread('C:\Program Files\scilab-6.1.1\IPCV\images/lena.png');
subplot (2,3,1);
imshow (I);
title('Original image 512*512');

I2 = imresize(I,0.5);
subplot (2,3,2);
imshow(I2);
title('Original image 256*256');


I3 = imresize(I,0.25);
subplot (2,3,3);
imshow(I3);
title('Original image 128*128');

I4 = imresize(I,0.125);
subplot (2,3,4);
imshow(I4);
title('Original image 64*64');

I5 = imresize(I,0.625);
subplot (2,3,5);
imshow(I5);
title('Original image 16*16');

I6 = imresize(I,0.03125);
subplot (2,3,6);
imshow(I6);
title('Original image 8*8 __By Mazhar Solkar');
