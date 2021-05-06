function[yc]= ppbinhphuong2(xx,yy,xc)
    N = length(xx);
    X = sum(xx);
    lY = sum(log(yy));
    XX = sum(xx.*xx);
    XlY = sum(xx.*log(yy));
    syms a b
    [a,b] = solve(XX*a + X*b == XlY, X*a + N*b == lY)
    syms x
    R = exp(b)*exp(a*x);
    yc = subs(R,x,xc),
    ezplot(R,[xx(1) xx(end)])
    hold on, plot(xx,yy,'bo')
end
%bai10
%a)ppbinhphuong2([1.1 3.2 5.1 7.7 9.6 12.2], [3.1 29.9 65.7 100.4 195.7
%300.4], 8.5)
%b)ppbinhphuong2([2 4 7 8.5 9.5 11],[2.2 2.5 2.7 3.1 3.2 3.5],7.7)
%c)ppbinhphuong2([3 3.4 4.1 4.3 4.7 5.3 5.3 6 6.4],[1.23 1.40 1.69 1.79
%2.13 2.52 2.45 2.97 3.44],5)