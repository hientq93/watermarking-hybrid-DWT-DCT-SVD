function loctrungvi = LocMediana(fname)
%Doc anh vao va hien thi anh
img = fname;
figure(1), imshow(img); 
%Thuc hien viec bien doi de khi thuc hien loc chung ta se tinh voi ma tran
%tuong ung voi gia tri la window
window = 3;
h = (window-1)/2;
c = img; 
[m,n] = size(img); % Lay kich thuoc chieu dai va chieu rong cua anh img
%Lap tung pixel cua anh img va bo? bien
for ii=(1+h):(m-h)
for jj=(1+h):(n-h)
c(ii,jj) = median(median(img(ii-h : ii+h,jj-h:jj+h)));%Thuc hien viec loc median kich thuoc 3x3
end
end
c = uint8(c);
loctrungvi = c;
end