function[yc] = pplagrange(xx,yy,xc)
    L = 0;
    b = length(xx)
    syms x;
    for i =1:b
        Li = 1;
        for k =1:b
            
            if(k~=i)
                Li = Li *(x - xx(k))/(xx(i) - xx(k));
            end
        end
        L = L + Li*yy(i);
    end
    yc = subs(L,x,xc)
    ezplot(L,[xx(1), xx(end)]);
    hold on; plot(xx,yy,'bo');
end
%pplagrange([1 2.2 3.2 4],[1.678 1.3267 2.198 3.787],3)
%bai11
%bai4) pplagrange([1 2.2 3.1 4],[1.678 3.267 2.198 3.787],2.5)