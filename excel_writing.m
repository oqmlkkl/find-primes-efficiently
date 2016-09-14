function excel_writing(i0) 
na=num2str(i0); 
naf=strcat('p',na,'e9','.mat'); 
load(naf) 
n=length(p); 
m=fix(n/100); 
d=int64(zeros(m+1,100)); 
k=1; 
l=fix(n/5e6); 
l1=rem(n,5e6); 
l1=fix(l1/100);
for i=1:m        
    d(i,:)=p(k:k+99);     
    k=k+100;     
end
r=rem(n,100); 
if r~=0    
    d(m+1,1:r)=p(n-r+1:n); 
end
parfor j=1:l       
    k=num2str(j);       
    f=strcat('p',na,'_',k);       
    xlswrite(f,d((j-1)*5e4+1:j*5e4,:)) 
end
k=num2str(l+1); 
l1=num2str(l1); 
r=num2str(r); 
f=strcat('p',na,'_',k,'_',l1,'r',r); 
xlswrite(f,d(l*5e4+1:m+1,:))