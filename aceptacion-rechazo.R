rm(list = ls())
k<-10000

x<-rep(0,k)
lambda<-((sqrt(5)-1)/2)
c<-exp(-lambda)/2*(lambda-lambda^2)
for (i in 1:k) {
  u1<-(-1)*(1/lambda)*log(runif(1,0,1)) #g(x) propuesta
  u2<-runif(1,0,1) #f(x)
  while (u2>=(((1+u1)*exp(lambda*u1-u1))/(2*lambda)) ) {
     u1<-(-1)*(1/lambda)*log(runif(1,0,1))
     u2<-runif(1,0,1)
     
  }
  x[i]=u1
}
hist(x)
n<-1:k
as<-ecdf(x)
plot(x)
x_cum<-cumsum(x)/n








rm(list=ls())
k=1000;x=rep(1,k)
lambda=(sqrt(5)-1)/2
c=(exp(-lambda))/((2*lambda)*(1-lambda))
for(i in 1:k){
  y=-(1/lambda)*log(runif(1,0,1)) 
  u=runif(1,0,1)
  while(u>=(1/c)*(1/(2*lambda))*(1+y)*exp(-y*(1-lambda))){
    y=-(1/lambda)*log(runif(1,0,1)) 
    u=runif(1,0,1)
  }
  x[i]=y
}
hist(x)



