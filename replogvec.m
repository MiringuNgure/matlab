function xN = replogvec(x0,N,r)

xN = x0';
one_vec = ones(size(xN,1),1);
for i = 1:N
    xN= r*xN.*(one_vec-xN);
end

end