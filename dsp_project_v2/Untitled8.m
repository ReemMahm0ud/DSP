%3)

%a-i
num1=[1 -2 2 -1];
den1=[1 -1];
den2=[1 -0.5];
den3=[1 -0.2]
den4=conv(den1,den2);
den5=conv(den4,den3);
H1=tf(num1,den5,0.1,'variable','z^-1');
figure('Name','3)a-i')
zplane(num1,den5) %stable
title('3)a-i')

%a-ii
h=filter(num1,den5,[1 zeros(1,494)]);
figure('Name','3)a-ii')
stem(h)
title('3)a-ii')

%b
num2=[0.03 -0.02 0.01];
den6=[1 -2.8 3.02 1.468 0.27];
H2=tf(num2,den6,0.1, 'variable', 'z')
figure('Name','3)b')
zplane(num2, den6)
title('3)b')
s=filter(num2,den6,5*ones(1,50));
figure('Name','3)b-1')
stem(s)
title('3)b-1')





