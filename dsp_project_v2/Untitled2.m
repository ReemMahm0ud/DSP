%1
%a-1
n1=[-12:12]
x1=[-2,-1,0,1,2];
x1=[x1 x1 x1 x1 x1];
figure('Name','1)a-1')
stem(n1,x1)
title('1)a-1')

%a-2
n2=[0:21];
e=exp(0.1*n2);
x52=e.*(stepseq(0,0,21)-stepseq(20,0,21));
nt=[-22:43]
x52=[x52 x52 x52];
figure('Name','1)a-2')
stem(nt,x52)
title('1)a-2')

%a-3
n3=[0:11]
s=sin(0.1*pi*n3);
x3=s.*(stepseq(0,0,11)-stepseq(10,0,11));
%figure(3)
%stem(n3,x3)
nt1=[-12:35]
x3=[x3 x3 x3 x3];
figure('Name','1)a-3')
stem(nt1,x3)
title('1)a-3')

%a-4
n4=[0:24]
x4_1=[1, 2, 3]
x4_2=[1 ,2 ,3, 4]
x4_1=[x4_1 x4_1 x4_1 x4_1 x4_1 x4_1 x4_1 x4_1 x4_1 x4_1]
x4_2=[x4_2 x4_2 x4_2 x4_2 x4_2 x4_2 x4_2]
x4=x4_1(1:25)+x4_2(1:25);
figure('Name','1)a-4')
stem(n4,x4)
title('1)a-4')

%b-1
n5=[-3:3]
x5=[2,4,-3,1,-5,4,7]
[x51,n51]=sigshift(x5,n5,3);
[x52,n52]=sigshift(x5,n5,-4);
%[x53,n53]=sigshift(x5,n5,0);
[x54,n54]=sigadd(2*x51,n51,3*x52,n52);
[x55,n55]=sigadd(x54,n54,-x5,n5);
figure('Name','1)b-1')
stem(n55,x55)
title('1)b-1')


%b-2
[x61,n61]=sigshift(x5,n5,-4);
[x62,x62]=sigshift(x5,n5,-5);
[x63,n63]=sigadd(4*x61,n61,5*x62,x62);
[x64,n64]=sigadd(x63,n63,2*x5,n5);
figure('Name','1)b-2')
stem(n64,x64)
title('1)b-2')

%b-3
[x71,n71]=sigshift(x5,n5,-3);
[x72,n72]=sigshift(x5,n5,2);
[x73,n73]=sigshift(x5,n5,1);
[x74,n74]=sigshift(x5,n5,-1);
[x75,n75]=sigmult(x71,n71,x72,n72);
[x76,n76]=sigmult(x73,n73,x74,n74);
[x77,n77]=sigadd(x75,n75,x76,n76);
figure('Name','1)b-3')
stem(n77,x77)
title('1)b-3')

%b-4
ntt=[-10:10]
x81=2*exp(0.5*ntt);
x82=cos(0.1*pi*ntt);
[x83,n83]=sigshift(x5,n5,-2);
[x84,n84]=sigmult(x81,ntt,x5,n5);
[x85,n85]=sigmult(x82,n84,x83,n83);
[x86,n86]=sigadd(x84,n84,x85,n85);
figure('Name','1)b-4')
stem(n86,x86)
title('1)b-4')











