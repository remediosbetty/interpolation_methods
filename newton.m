function ny=newton(x,y,xint)
n=length(x);
m=length(xint);
for j=1:m
    s=0;
    for i=1:n
        p=1;
        f(i)=(y(i)-y(i+1))/(x(i)-x(i+1));
        f(i+1)=(y(i+1)-y(i+2))/(x(i+1)-x(i+2));
        for k=1:i
          p=(xint(j)-x(k))*p;
          y(i)=f(i);
          y(i+1)=f(i+1);
          x(k)=x(k+1);
        end
        s=s+f(i)*p;
    end
    ny(j)=s;
end
end