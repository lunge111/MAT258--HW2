
Y=admit;
X=[ones(400,1),gpa,gre];
theta=[-4. ; 0.5;0.];
t=gradient(X,Y,theta,10000,0.001,0.01);

figure
plot(gpa(admit==1),gre(admit==1),'+')
xlabel('gpa');
ylabel('gre')
hold on
plot(gpa(admit==0),gre(admit==0),'o')
hold on
x=2.2:0.01:4;
y=(-t(1)+0.5-t(2)*x)/t(3);
plot(x,y,'-')
hold off
