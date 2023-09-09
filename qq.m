function img=qq(img)
f0=0;g0=0;
f1=55;g1=25;
f2=180;g2=225;
f3=255;g3=255;
r1=(g1-g0)/(f1-f0);
b1=g0-r1*f0;
r2=(g2-g1)/(f2-f1);
b2=g1-r2*f1;
r3=(g3-g2)/(f3-f2);
b3=g2-r3*f2;
[m,n]=size(img);
img2=double(img);
for i=1:m
    for j=1:n
        f=img2(i,j);
        g(i,j)=0;
        if(f>=0)&&(f<=f1)
        g(i,j)=r1*f+b1;
        elseif (f>=f1)&&(f<=f2)
        g(i,j)=r2*f+b2;
        elseif (f>=f2)&&(f<=f3)
        g(i,j)=r3*f+b3;
        end
    end
end
img=mat2gray(g);
end

