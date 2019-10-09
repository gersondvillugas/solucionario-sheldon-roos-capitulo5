rm(list=ls())
#### EJECUTAR primero la función Poisson_homogeneo_Preg4
k=1000
I=matrix(rep(0,k,365),nrow=k,ncol=365)
CapitalNetoDiario=matrix(rep(0,k,365),nrow=k,ncol=365)
CapitalNetoAnho=rep(0,k)
for(i in 1:k){
  for(j in 1:365){
    I[i,j]=Poisson_homogeneo_Preg4(1,10)
    CapitalNetoDiario[i,j]=11000+1000*log(prod(runif(I[i,j],0,1)))
  }
  CapitalNetoAnho[i]=sum(CapitalNetoDiario[i,])
}
z=CapitalNetoAnho-250000>0
n=1:k
y=cumsum(z)/n
plot(n,y,type="l")
y[length(y)]

#######################################################3
Poisson_homogeneo_Preg4=function(T, lambda){
  t=0; I=0;S=NULL
  while(t<T){
    t=t-(1/lambda)*log(runif(1,0,1))
    I=I+1
    S[I]=t
  }
  return(I-1)
}