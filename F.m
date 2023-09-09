function img=F(img)
ir=img(:,:,1);
ig=img(:,:,2);
ib=img(:,:,3);

ir=qq(ir);
ig=qq(ig);
ib=qq(ib);
img=cat(3,ir,ig,ib);
end

