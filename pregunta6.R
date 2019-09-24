rm(list = ls())
#x~f(x)   0<x<0.5
#y~g(x)=Exp(1)  0<x
#lambda =1 es conveniente
#c=1/(1-e^(0.05))
#f(x)/c*g(x)=1

lambda<-1
k<-1000
x<-rep(0,k)

c<-(1/(1-exp(-0.05)))

for (i in 1:k) {
  y=-(1/lambda)*log(runif(1,0,1))
  #u2<-runif(1,0,1)
  while (y>0.05){
    y=-(1/lambda)*log(runif(1,0,1))
  }
  x[i]<-y
}    
hist(x)

n<-1:k
x_c<-cumsum(x)/n
plot(n,x_c,main = "E[x]",type = "l")
x_c[length(n)]



