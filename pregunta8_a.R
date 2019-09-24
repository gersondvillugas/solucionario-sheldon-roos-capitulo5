rm(list = ls())
k<-1000
x<-rep(0,k)
for (i in 1:k) {
  u<-runif(1,0,1)
  if (u<=1/3) {
    x[i]<-u
    u<-runif(1,0,1)
  }
  if (1/3<u  &&  u<2/3) {
    x[i]<-u^(1/3)
    u<-runif(1,0,1)
  }
  else {
    x[i]<-u^(1/5)
    u<-runif(1,0,1)
  }
  x[i]<-u
}
n<-1:k
as<-ecdf(x)
plot(as)
