rm(list = ls())
k<-1000
T<-1
lambda<-5
Afic<-rep(0,k)
for (i in 1:k) {
  t<-0
  I<-0

  while (t<=T) {
    t<-1-(1/lambda)*log(runif(1,0,1))
    I<-I+floor(21*runif(1,0,1))+20
    
  }
  Afic[i]=I
}
n<-1:length(Afic)
Afic_<-cumsum(Afic)/n
Afic[length(n)]
plot(n,Afic_,main ="Aficionados",type = 'l' )

