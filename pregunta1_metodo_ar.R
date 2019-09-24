rm(list = ls())
k<-100
x<-rep(0,k)
for (i in 1:k) {
  u1<-runif(1,0,1) #g(x) propuesta
  u2<-runif(1,0,1) #f(x)
  while (u2>exp(u1)/exp(1)) {
   u1<-runif(1,0,1)
   u2<-runif(1,0,1)
  }
  x[i]<-u1
}
n<-1:k
xx<-cumsum(x)/n
plot(n,xx,type = "l",main = "E[x]")
xx[length(n)]
