EnDKLdfr<-function(ee){
  
  d1<-DKLdfr(ee,ell=1)
  d2<-DKLdfr(ee,ell=2)
  d3<-DKLdfr(ee,ell=3)
  
  return(d1/sum(d1,na.rm=TRUE)+d2/sum(d2,na.rm=TRUE)+d3/sum(d3,na.rm=TRUE))
}  


