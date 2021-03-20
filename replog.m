function xN = replog(x0,N,r)
xN = x0';
M = size(xN,1);
for i = 1:N
    for j = 1:M
    xN(j,1) = r*xN(j,1)*(1-xN(j,1));
    end
end

end