I = imread('rice.png');
J = filter2(fspecial('sobel'), I);
K= mat2gray(J);
figure, imshow(I), figure, imshow(K)