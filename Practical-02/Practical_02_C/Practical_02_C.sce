clc;
clear all;

disp('--By Mazhar Solkar R.No: 32')

x = [1,2,3;4,5,6;7,8,9];
h = [1,1,1;1,1,1;1,1,1];
y=conv2(x,h);
disp(y,'Linear 2D convolution result y =')

x = [1,2,3;4,5,6;7,8,9];
h = [1,2,3;4,5,6;7,8,9];
disp(h);
h1 = h(:,$:-1:1) //Flip a matrix left to right Vertical Flip
disp(h1)
h2 = h($:-1:1,:) //Flip a matrix botton to up Horizontal Flip
disp(h2)
y=conv2(x,h2);
disp(y, 'Linear 2D cross correlation result y =')
