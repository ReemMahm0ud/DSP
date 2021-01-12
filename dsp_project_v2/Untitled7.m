%2)

%i
x1=[1,2,4];
h1=[1,1,1];
y1=conv(x1,h1);
figure('Name','2)i')
stem(y1)
title('2)i')

%ii
x2=[0,1,-2,3,-4];
h2=[1,2,1,0.5,0];
y2=conv(x2,h2);
figure('Name','2)ii')
stem(y2)
title('2)ii')

%iii
x3=[1,2,3,4];
h3=[4,3,2,1];
y3=conv(x3,h3);

figure('Name','2)iii')
stem(y3)
title('2)iii')

%iv
x4=[1,2,3,4];
h4=[1,2,3,4];
y4=conv(x4,h4);
figure('Name','2)iv')
stem(y4)
title('2)iv')

