a = imread("C:\Program Files\scilab-6.1.1\IPCV\images\mri_00.png");
se = imcreatese('ellipse',10,10);

opening = imopen(a,se);
Top_Hat = a - opening

closed = imclose(a,se);
Bottom_Hat=closed-a

subplot(2,3,1);imshow(a);title('Original Image');
subplot(2,3,2);imshow(opening);title('Opening Image');
subplot(2,3,3);imshow(Top_Hat);title('Top-hat Image');
subplot(2,3,4);imshow(closed);title('Closing Image');
subplot(2,3,5);imshow(Bottom_Hat);title('Bottom-hat Image Mazhar Solkar');
