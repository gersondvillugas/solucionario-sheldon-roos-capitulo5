rm(list = ls())
k<-1000
x<-rep(0,k)
alpha<-1
beta<-0.5
for (i in 1:k) {
  u<-runif(1,0,1)
  x[i]<-(-log(1-u)/alpha)^(1/beta)
}
hist(x)
n<-1:k
xx<-cumsum(x)/n
plot(n,xx,type = "l",main = "E[x]")
xx[length(n)]
as<-ecdf(x)

plot(as)
