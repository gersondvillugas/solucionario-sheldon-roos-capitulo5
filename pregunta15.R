rm(llist = ls)
k<-1000
x<-rep(0,k)
c<-1.875
for (i in 1:k) {
  u1<-runif(1,0,1)#g(x)
  u2<-runif(1,0,1)#f(x)
 while (u2>=30*(u1^2-2*u1^3+u1^4)/1.875) {
   u1<-runif(1,0,1)
   u2<-runif(1,0,1)
   
 }
  
  x[i]<-u1
}
hist(x)

n<-1:k
xx<-cumsum(x)/n
plot(n,xx,main = "E[X]",type = "l")
xx[length(n)]
