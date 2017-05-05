function loctrungbinh = LocTrungBinhCoTrongSo(fname)
%Loc trung binh co trong so
%Doc anh va hien thi anh
A=fname;
B_Gray = A;
%Ma tran trong so
TS = [1 2 1; 2 4 2 ; 1 2 1];
%Chuyen sang anh Gray
modifyA=zeros(size(B_Gray)+2);%Kich thuoc mang modifyA bang kich thuoc B_Gray cong 2
B=zeros(size(B_Gray));%Kich thuoc mang B bang kich thuoc B_Gray
C=zeros(size(B_Gray));%Kich thuoc mang C bang kich thuoc B_Gray

%Tao bien voi gia tri là 0 xung quanh A
        for x=1:size(A,1)
            for y=1:size(A,2)
                modifyA(x+1,y+1)=A(x,y);
            end
        end   
%Thuc viec viec loc trung binh co trong so kich thuoc 3x3
for i= 1:size(modifyA,1)-2 %Lap tung pixel modifyA
    for j=1:size(modifyA,2)-2
        % Thuc hien viec nhan ma tran 3x3 cua modifyA voi ma tran trong so
        for x=1:3
            for y=1:3
                C(i,j)=C(i,j)+ (modifyA(i+x-1,j+y-1)*TS(x,y)); %Tinh tong cua viec nhan voi ma tran trong so
            end
        end
	C(i,j)=C(i,j)/16;
    end
end
LTB=uint8(C); % chuyen sang kieu uint8 voi gia tri tu 0 den 255
loctrungbinh = LTB;
end