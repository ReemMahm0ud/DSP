%4

%4-a
n=[0:10];
[x1,n1]=stepseq(0,0,10);
[x2,n2]=stepseq(6,0,10);
[x3,n3]=sigadd(x1,n1,-1*x2,n2);
y1=fft(x3);
figure('Name','4)a')
stem(abs(y1))
title('4)a')
figure('Name','4)a-1')
stem(angle(y1))
title('4)a-1')

%4-b
t=2.^n;
[x4,n4]=stepseq(0,0,10);
[x5,n5]=sigfold(x4,n4);
[x6,n6]=sigmult(t,n,x5,n5);
y2=fft(x6);
figure('Name','4)b')
stem(abs(y2))
title('4)b')
figure('Name','4)b-1')
stem(angle(y2))
title('4)b-1')

%4-c
nc1=[-4:6]
t1=0.25.^n;
[x7,n7]=stepseq(-4,-4,10); 
[x8,n8]=sigmult(t1,nc1,x7,n7);
y3=fft(x8);
figure('Name','4)c')
stem(abs(y3))
title('4)c')
figure('Name','4)c-1')
stem(angle(y3))
title('4)c-1')

%4-d
t2=0.25.^n;
t3=sin(2*pi*0.25*n);
[x9,n9]=stepseq(0,0,10);
[x10,n10]=sigmult(t2,n,t3,n);
[x11,n11]=sigmult(x10,n10,x9,n9);
y4=fft(x11);

figure('Name','4)d')
stem(abs(y4))
title('4)d')
figure('Name','4)d-1')
stem(angle(y4))
title('4)d-1')


%4-e
t4=0.5.^n;
t3=sin(2*pi*0.25*n);
[x12,n12]=sigmult(t4,n,t3,n);
y5=fft(x12);
figure('Name','4)e')
stem(abs(x12))
title('4)e')
figure('Name','4)e-1')
stem(angle(y5))
title('4)e-1')

%4-f
nf=[-4:4];
[x13]=2-0.5*nf;
y6=fft(x13);
figure('Name','4)f')
stem(abs(y6))
title('4)f')
figure('Name','4)f-1')
stem(angle(y6))
title('4)f-1')

%4-g
ng=[-2:2]
[x14]=[-2,-1,0,1,2];
y7=fft(x14);

figure('Name','4)g')
stem(abs(y7))
title('4)g')
figure('Name','4)g-1')
stem(angle(y7))
title('4)g-1')










