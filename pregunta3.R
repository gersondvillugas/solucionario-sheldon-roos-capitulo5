#metodo transformada inversa 
rm(list = ls())
k<-10000
x<-rep(0,k)
for (i in 1:k) {
  u1<-runif(1,0,1)
  x[i]<-sqrt(2*u1+(1/4))-(1/2)
}
as<-ecdf(x)
hist(x)
plot(as)
# metodo aceptacion rechazo
rm(list=ls())
k=10000;x<-rep(1,k)
for(i in 1:k){
  u1<-runif(1,0,1) #g(x)
  u2<-runif(1,0,1)  #f(x)
  
  while(u2>(u1+1/2)/1.5 )
  {  u1<-runif(1,0,1)
     u2<-runif(1,0,1)
     
    
  }
      x[i]=u1
}
as<-ecdf(x)
plot(as)
hist(x)
hist(x)
    