rm(list = ls())
k<-1000
x<-rep(0,k)
for (i in 1:k) {
  u1<-runif(1,0,1)
  x[i]<-log(u1*(exp(1)-1)+1)
}
n<-1:k
xx<-cumsum(x)/n
plot(n,xx,type = "l",main = "E[x]")
xx[length(n)]
as<-ecdf(x)

plot(as)
