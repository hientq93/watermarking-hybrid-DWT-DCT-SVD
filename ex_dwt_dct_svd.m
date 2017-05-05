function ex_dwt_dct_svd()

[fname anhmau]=uigetfile({'*.jpg;*.png;*.tif;*bmp'},'Chon Anh'); %select image
    Imau=imread(strcat(anhmau,fname)); 
    figure(1),imshow(Imau),title('Anh Mau');
    %Doc anh mau vao
    Imau = double(imresize(Imau,[512 512],'bilinear'));
    I1=Imau(:,:,1);%get the first color in case of RGB image
    IG=Imau(:,:,2);
    IB=Imau(:,:,3);
    
    
[fname anhgiau]=uigetfile({'*.jpg;*.png;*.tif;*bmp'},'Chon Anh Watermark'); %select image
    %Doc anh can anh vao
    Igiau=imread(strcat(anhgiau,fname)); 
    figure(2),imshow(Igiau),title('Anh Watermark');
    Igiau=Igiau(:,:,1);%get the first color in case of RGB image
    I2 = double(imresize(Igiau,[512 512],'bilinear'));

I3 = imread('hoahong.jpg');
I3 = double(imresize(I3(:,:,1),[512 512],'bilinear'));    
    
    
% 4 band cua watermark
[LL,HL,LH,HH] = dwt2(I1,'haar');
DHL = dct2(HL);
DLH = dct2(LH);
DHH = dct2(HH);

[U1, S1, V1] = svd(DHL);
[U2, S2, V2] = svd(DLH);
[U3, S3, V3] = svd(DHH);

% 4 band cua anh goc

[LL1,HL1,LH1,HH1] = dwt2(I2,'haar');
DHL1 = dct2(HL1);
DLH1 = dct2(LH1);
DHH1 = dct2(HH1);

[UW1, SW1, VW1] = svd(DHL1);
[UW2, SW2, VW2] = svd(DLH1);
[UW3, SW3, VW3] = svd(DHH1);

% 4 band cua anh ebb
[LL3,HL3,LH3,HH3] = dwt2(I3,'haar');
DHL3 = dct2(HL3);
DLH3 = dct2(LH3);
DHH3 = dct2(HH3);

[UM1, SM1, VM1] = svd(DHL3);
[UM2, SM2, VM2] = svd(DLH3);
[UM3, SM3, VM3] = svd(DHH3);

% Xu Ly
SR1 = (S1 - SW1) * 100;
SR2 = (S2 - SW2) * 100;
SR3 = (S3 - SW3) * 100;

I1_s11 = UM1 * SR1 * VM1';
I1_s22 = UM2 * SR2 * VM2';
I1_s33 = UM3 * SR3 * VM3';

I1_d11 = idct2(I1_s11);
I1_d22 = idct2(I1_s22);
I1_d33 = idct2(I1_s33);

% Ket Qua
sI = size(I1);
WaterMarked = idwt2(LL1, I1_d11, I1_d22, I1_d33, 'haar', sI);
WaterMarked = uint8(WaterMarked);
figure(3); 
imshow(WaterMarked,[]); title('Watermarked after Image'); 

end

