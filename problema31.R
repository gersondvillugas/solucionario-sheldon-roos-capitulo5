rm(list = ls())
k<-1000
lambda<-0.3
x<-rep(0,k)
T<-4
for (i in 1:k) {
  I<-0
  t<-0
  t<-t-(1/lambda)*log(runif(1,0,1))
  while (t<=T) {
    I=I+1
    
    t<-t-(1/lambda)*log(runif(1,0,1))
    
  }
  x[i]=I
}
zz=(x==0)
n<-1:length(x)
pron<-cumsum(zz)/n
pron[length(n)]
plot(n,pron,main = "probabilida E[N=6]=0",type = 'l')






