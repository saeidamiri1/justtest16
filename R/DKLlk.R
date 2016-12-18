DKLlk<-function(ee,ell){
#  ee<-read.fasta(file =XDAT00)
  length(ee)
  XDAT0<-list()
  for(i in 1:length(ee)){
    XDAT0[[i]]<- (ee[[i]])
  }
  #ell<-1
  # base
  XDAT<-CtoNall(XDAT0)
  
  ORG0<-f0(c(rep(4, ell)), fn = fn)
  Se<-matrix(,ncol=length(XDAT),nrow=length(XDAT))
  XT<-list()
  o<-length(XDAT)
  XT<-list()
  for(i in 1:o){
    XT[[i]]<-RECINV(XDAT[[i]],ORG0)
  }
  
  for(i in 1:(o-1)){
    XX<-XT[[i]]
    for(j in (i+1):o){
      YY<-XT[[j]]
      Se[i,j]<-DistSeqkl(XX,YY)+DistSeqkl(YY,XX)
    }
  }
  return(Se/sum(Se,na.rm=TRUE))
}  
  
  
