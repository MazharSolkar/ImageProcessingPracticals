clc;
close;

disp('Mazhar Solkar')
disp('R.NO: 32')

//dmenson of the image in inches
m = input('Length of the image in inches ');
n = input('Height of the image in inches ');
N =400; //number of dots per inch in each direction

N2 = 2*N; //number of dots per inch in both horizontal and vertical
Fs = m*N2*n*N2;
disp(Fs, 'Number of samles requied to preserve th information in the image')
