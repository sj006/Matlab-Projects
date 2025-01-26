syms x y

f = exp(x.^2+y.^2);

pxy = diff(f,x,y);
pyx = diff(f,y,x);

if(subs(pxy,{x,y},{1,1}) == subs(pyx,{y,x},{1,1}))
    disp("Mixed partial derivative are same");
end
