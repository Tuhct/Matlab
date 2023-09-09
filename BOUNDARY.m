clear;
i1=imread('grey.jpg');

i2=im2bw(i1);
i3=bwperim(i2);
figure,
subplot(1,2,1),imshow(i2);
subplot(1,2,2),imshow(i3);
se=strel('line',11,90);
bw=imdilate(i2,se);
figure,imshow(bw);
figure,imshow(bw-i2);