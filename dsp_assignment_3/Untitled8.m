n = -4:2; x=[1,-2,4,6,-5,8,10];
[x11,n11] = sigshift(x,n,-2);
[x12,n12] = sigshift(x,n,4);
[x13,n13] = sigadd(3*x11,n11,x12,n12);
[x1,n3] = sigadd(x13,n13,2*x,n);
figure(1)
stem(n3,x1);
title ('1-i')
xlabel('n'); ylabel('x1(n)');

[x21,n21] = sigshift(x,n,-4);
[x22,n22] = sigshift(x,n,1);
[x23,n23] = sigfold(x,n);
[x23,n23] = sigshift(x23,n23,2);
[x24,n24] = sigmult(x21,n21,x22,n22);
[x25,n25] = sigmult(x23,n23,x,n);
[x2,n2] = sigadd(x24,n24,x25,n25);
figure(2)
stem(n2,x2);
title('1-ii')
xlabel('n'); ylabel('x1(n)');

 n3=[0:25];
 
 %X= n3.^2 *(stepseq(-5,0,25)-stepseq(6,0,25))+10*impseq(0,0,25)+20*(0.5)^n3.*(stepseq(4,0,25)-stepseq(10,0,25));
%figure(3)
 %stem (n3,X);





