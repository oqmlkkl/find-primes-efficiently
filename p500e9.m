load p3 
p=[];
for j=4991:5000 
    i=(j-1)*1e8+1:2:j*1e8; 
    a=true(1,5e7); 
    d=p3(p3.*p3<=j*1e8); 
    n=length(d); 
    k=fdv((j-1)*1e8+1,d(2:n)); 
    for l=2:n         
        a(k(l-1):d(l):5e7)=false; 
    end
    p=[p i(a==1)]; 
end
save('p500e9','p');
 