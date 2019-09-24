rm(list = ls())
lambda<-1
k<-100
x<-rep(0,k)
c<-(1/(1-exp(-0.05)))
for (i in 1:k) {
  y=-(1/lambda)*log(runif(1,0,1))
  u2<-runif(1,0,1)
  while (u2>=(1/c*lambda)*exp(lambda*x-x)*(1/(1-exp(-0.05)))) {
    y=-(1/lambda)*log(runif(1,0,1))
    u2<-runif(1,0,1)
  }
  x[i]<-y
}    
hist(y)
