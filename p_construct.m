load p3
b=cell(1,8); 
parfor v=1:8 
    p=[]; 
    for j=9881+10*(v-1):9880+10*v 
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
    b(v)={p}; 
end
for j=1:8     
    k=988+j;     
    k=num2str(k);    
    f=strcat('p',k,'e9');     
    p=cell2mat(b(j));     
    save(f,'p') 
end

clear