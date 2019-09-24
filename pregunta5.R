k<-100
x<-rep(0,100)
for (i in 1:k) {
 u1<-runif(1,0,1)
 #u2<-runif(1,0,1)
 if(u1<0.5){
   x[i]<-0.5*log(2*u1)
 }else{
   x[i]<-(-0.5*log(2-2*u1))
 }
  
}
n<-1:k
x_c<-cumsum(x)/n

plot(n,x_c,type = "l")

x
