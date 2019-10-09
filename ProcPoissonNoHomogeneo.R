T=10;lambda=26  # lambda_t<=lambda=
t=0; I=0
t=t-(1/lambda)*log(runif(1,0,1));s=c(t)
while(t<=T){
  u=runif(1,0,1)
  if(u<=(lambda_t(t)/lambda)){
    I=I+1
    s=c(s,t)
  }
  t=t-(1/lambda)*log(runif(1,0,1)) 
}
s[1:length(s)]





lambda_t=function(t){
  if(t<5){
    return(t/5) 
  }else{
    return(1+5*(t-5))
  }
}




