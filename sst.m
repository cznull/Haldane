function [hm,eigenvalue]=sst(size,n,filename)
system('D:/files/project/qsh/x64/Release/qsh.exe');
hm={};
eigenvalue=zeros(size);
fi=fopen(filename);
ti=fread(fi,[2,size*size*n],'double');
fclose(fi);
ti=ti(1,:)+1i*ti(2,:);
x=reshape(ti,[size,size,n]);
for i=1:n
    hm{i}=x(:,:,i);
    %[v,d]=eig(hm{i});
    %eigenvalue(i,:)=real(v(:,4));
    eigenvalue(:,i)=eig(hm{i});
end
end