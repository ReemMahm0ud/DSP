 n=0:25;
 x=(power(n,2).*(stepseq(-5,0,25)-stepseq(6,0,25))+(10*impseq(0,0,25))+20*power(0.5,n).*(stepseq(4,0,25)-stepseq(10,0,25)));
 figure(3)
 stem(n,x)
 
 [y,t]=stepseq(0,-2,-1);
 t1=linspace(-1,0,100);
 t2=linspace(0,1,100);
 y1=cos(-2*pi*t1/4)+1;
 y2=ramp(t2,1,0)-1;
 [y3,t3]=stepseq(1,1,2);
 [y4,t4]=stepseq(2,2,3);
 Y=[y,y1,y2,(y3-2),(y4-1)];
 T=[t,t1,t2,t3,t4];
 figure(4)
 plot(T,N)