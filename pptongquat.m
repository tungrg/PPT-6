function[yc] = pptongquat(xx,yy,xc)
    b = length(xx)
    c = length(yy)
    temp = zeros(b, b)
    for i=1:b
        d = [1];
        X=[xx(i)*ones(1,b-1)];
        for k =1:length(X)
            X(k) = X(k)^k;
        end
        d = [d X]
        temp(i,:) = d
    end
    Y = yy.'
    A = inv(temp)*Y
    syms x;
    P = A(1);
    for i=2:size(A)
        P = P + A(i)*x^(i-1);
    end
    yc = subs(P,x,xc)
    ezplot(P,[xx(1) xx(end)])
    hold on;
    plot(xx,yy,'bo')
end
%pptongquat([1 2.2 3.2 4],[1.678 1.3267 2.198 3.787],3)
%bai 10
%1) pptongquat([1 2.2 3.1 4],[1.678 3.267 2.198 3.787],2.5)