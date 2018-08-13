function hy=hermite(x,y,dy,xint)
%%x and y are known vectors of interplot
%%xint is vector of interpolation points
%%dy is the derivatives of the known function value
n=length(x);
m=length(xint);
for k=1:m
    s=0;
    for i=1:n
        p=1;
        a=0;
        for j=1:n
            if j~=i
              p=p*(xint(k)-x(j))/(x(i)-x(j));
              a=1/(x(i)-x(j))+a;
            end
        end
        s=s+p*((x(i)-xint(j))*(2*a-dy(i))+y(i));
    end
    hy(j)=s;
end
end