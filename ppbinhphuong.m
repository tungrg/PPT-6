function[yc]= ppbinhphuong(xx,yy,xc)
    N = length(xx);
    X = sum(xx);
    Y = sum(yy);
    XX = sum(xx.*xx);
    XY = sum(xx.*yy);
    syms a b
    [a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y)
    syms x
    R = a*x +b;
    yc = subs(R,x,xc);
    ezplot(R,[xx(1) xx(end)])
    hold on, plot(xx,yy,'bo')
end
%bai9
%a)ppbinhphuong([2 4 7 8.5 9.5 11], [2.2 4.2 6.8 8.1 9.7 10.5], 6)
%b)ppbinhphuong([1 2.1 2.9 3.8 5 6.2],[3.021 4.219 5.018 5.986 7.139 8.138], 4.5)
%c)ppbinhphuong([1 1.6 2.1 3 3.3 3.7 4.1 4.9 6.2], [1.1 2.2 3.5 4.9 7.2 7.8
%7.9 8.5 10], 3.5)