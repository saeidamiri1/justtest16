DKLcvtree<-function(ee,ell){
  length(ee)
  XDAT0<-list()
  for(i in 1:length(ee)){
    XDAT0[[i]]<- (ee[[i]])
  }

  XDAT<-CtoNall(XDAT0)
  
  ORG0<-f0(c(rep(4, ell)), fn = fn)
  Se<-matrix(,ncol=length(XDAT),nrow=length(XDAT))
  XT<-list()
  o<-length(XDAT)
  XT<-list()
  for(i in 1:o){
    XT[[i]]<-RECINV(XDAT[[i]],ORG0)
  }
  
  
  
  XTp<-list()
  for(i in 1:o){
    aa<-lapply(XT[[i]], length)
    XTp[[i]]<-unlist(aa)/sum(unlist(aa))
  }
  

  Sep<-matrix(,ncol=length(XDAT),nrow=length(XDAT))
  for(i in 1:(o-1)){
    XX<-XTp[[i]]
    for(j in (i+1):o){
      YY<-XTp[[j]]
      Sep[i,j]<-sum(XX*YY)/(sum(XX^2)*sum(YY^2))^.5
    }
  }
  return(((1-Sep)/2)/sum((1-Sep)/2,na.rm=TRUE))
}  


