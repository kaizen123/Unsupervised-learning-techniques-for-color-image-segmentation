fp=fopen('C:/Users/acer/Desktop/E-Books/sem 4/Project/1.ppm','r');  
       
        I=fscanf(fp,'%d');
        k1=1;
 
        for i=1:150;
            for k=1:3
             
                I2(i,k)=I(k1);
                k1=k1+1;
            end
        end
        
        A = 1; B = 150;
randomArray = (A-1) + (B-(A-1))*rand(3,1);
a= floor(randomArray) + 1;

k=a(1,1);
l=a(2,1);
m=a(3,1);

C1(1,1)=I2(k,1);
C1(1,2)=I2(k,2);
C1(1,3)=I2(k,3);

C2(1,1)=I2(l,1);
C2(1,2)=I2(l,2);
C2(1,3)=I2(l,3);


C3(1,1)=I2(m,1);
C3(1,2)=I2(m,2);
C3(1,3)=I2(m,3);

K1(1,1)=0;
K1(1,2)=0;
K1(1,3)=0;

K2(1,1)=0;
K2(1,2)=0;
K2(1,3)=0;

K3(1,1)=0;
K3(1,2)=0;
K3(1,3)=0;


     t1=0;
      t2=0;
      t3=0;

dis1=255;
dis2=255;
dis3=255;
while((dis1>=.0001)||(dis2>=.0001)||(dis3>=.0001)) 
for j=1:150;
s1=sqrt(((C1(1,1)-I2(j,1))^2)+((C1(1,2)-I2(j,2))^2)+((C1(1,3)-I2(j,3))^2));
s2=sqrt(((C2(1,1)-I2(j,1))^2)+((C2(1,2)-I2(j,2))^2)+((C2(1,3)-I2(j,3))^2));
s3=sqrt(((C3(1,1)-I2(j,1))^2)+((C3(1,2)-I2(j,2))^2)+((C3(1,3)-I2(j,3))^2));

t=1;
     r=1;
     t1=1;
  
if s3<= s1
     if s3 <= s2
        I3(j,1)=3;
          else 
              I3(j,1)=2;
      end
           
             
 else 
         if  s1 <= s2
              I3(j,1)=1;
                
         else
             I3(j,1)=2;
         end
       
 end
end
 
  s1=0;
  s2=0;
  s3=0;
 for j1=1:150;
  if I3(j1,1)==1
      K1(1,1)=K1(1,1)+I2(j1,1);
      K1(1,2)=K1(1,2)+I2(j1,2);
      K1(1,3)=K1(1,3)+I2(j1,3);
      s1=s1+1;
  elseif I3(j1,1)==2
      K2(1,1)=K2(1,1)+I2(j1,1);
      K2(1,2)=K2(1,2)+I2(j1,2);
      K2(1,3)=K2(1,3)+I2(j1,3);
      s2=s2+1;
 
  elseif I3(j1,1)==3
      K3(1,1)=K3(1,1)+I2(j1,1);
      K3(1,2)=K3(1,2)+I2(j1,2);
      K3(1,3)=K3(1,3)+I2(j1,3);
      s3=s3+1;
  else
  
  end
  
 K1(1,1)=K1(1,1)/s1;
  K1(1,2)= K1(1,2)/s1;
  K1(1,3)= K1(1,3)/s1;

  K2(1,1)=K2(1,1)/s2;
  K2(1,2)=K2(1,2)/s2;
  K2(1,3)=K2(1,3)/s2;
  
  K3(1,1)=K3(1,1)/s3;
  K3(1,2)=K3(1,2)/s3;
  K3(1,3)=K3(1,3)/s3;

  dis1 =sqrt(((C1(1,1)-K1(1,1))^2)+((C1(1,2)-K1(1,2))^2)+((C1(1,3)-K1(1,3))^2));
dis2 =sqrt(((C2(1,1)-K2(1,1))^2)+((C2(1,2)-K2(1,2))^2)+((C2(1,3)-K2(1,3))^2));
dis3 =sqrt(((C3(1,1)-K3(1,1))^2)+((C3(1,2)-K3(1,2))^2)+((C3(1,3)-K3(1,3))^2));
C1(1,1)=K1(1,1);
C1(1,2)=K1(1,2);
C1(1,3)=K1(1,3);
C2(1,1)=K2(1,1);
C2(1,2)=K2(1,2);
C2(1,3)=K2(1,3);
C3(1,1)=K3(1,1);
C3(1,2)=K3(1,2);    
C3(1,3)=K3(1,3);
C3(1,4)=K3(1,4);
 end

end


      t1=0;
      t2=0;
      t3=0;
      t11=0;
      t22=0;
      t33=0;
      t111=0;
      t222=0;
      t333=0;
  for j1=1:50;
     
    if I3(j1,1)==1
        t1=t1+1;
       
       
    elseif I3(j1,1)==2
          t2=t2+1;
        
    else  
        t3=t3+1;
        
    end
    
     
  end   
   M1(1,1)=t1;
    M1(1,2)=t2;
    M1(1,3)=t3;    
    %disp(M1);
 for j2=51:100;
     
    if I3(j2,1)==1
        t11=t11+1;
       
       
    elseif I3(j2,1)==2
          t22=t22+1;
        
    else  
        t33=t33+1;
        
    end
   
     
 end 
  M2(1,1)=t11;
    M2(1,2)=t22;
    M2(1,3)=t33;
    S2=sort(M2);
    %disp(M2);
    %disp(S2);
  

  for j3=101:150;
     
    if I3(j3,1)==1
        t111=t111+1;
       
       
    elseif I3(j3,1)==2
          t222=t222+1;
        
    else  
        t333=t333+1;
        
    end
    
     
  end   
   M3(1,1)=t111;
    M3(1,2)=t222;
    M3(1,3)=t333;
  S3=sort(M3);
   % disp(M3);
    %disp(S3);
    
  M(1,1)= M1(1,1)+M2(1,1)+M3(1,1);
  M(1,2)= M1(1,2)+M2(1,2)+M3(1,2);
  M(1,3)= M1(1,3)+M2(1,3)+M3(1,3);
  
  S=sort(M);
  accuracy1=(S1(1,3)/50);
    accuracy2=(S2(1,3)/50);
      accuracy3=(S3(1,3)/50);
  accuracy=(S1(1,3)+S2(1,3)+S3(1,3))/150;
  
  
  
  
  
  
  
  
  
  
   disp(accuracy1);
   disp(accuracy2);
   disp(accuracy3);
   disp(accuracy);
  
  

fp1=fopen('C:/Users/acer/Desktop/E-Books/sem 4/Project/output.ppm','w');  
       
        I=fprintf(fp1,'%d');
        
 
        for i=1:150;
            for k=1:3
             
                I2(i,k);
                
            end
        end


fp2=fopen('C:/Users/acer/Desktop/E-Books/sem 4/Project/2.txt','w');  
       

sum=2;
        sum=fprintf(fp2,'%d');
        
         