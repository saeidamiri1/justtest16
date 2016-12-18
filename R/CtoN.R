CtoN<-function(X){
  XX0<-as.character(X)
  XX0[XX0=='a']<-'1'
  XX0[XX0=='t']<-'2'
  XX0[XX0=='c']<-'3'
  XX0[XX0=='g']<-'4'
  XX0[XX0=='A']<-'1'
  XX0[XX0=='T']<-'2'
  XX0[XX0=='C']<-'3'
  XX0[XX0=='G']<-'4'
  XX<-XX0
  return(XX)
}

#CtoN<-function(X){
#  XX0<-as.character(X[[1]])
#  XX0[XX0=='a']<-'1'
#  XX0[XX0=='t']<-'2'
#  XX0[XX0=='c']<-'3'
#  XX0[XX0=='g']<-'4'
#  XX0[XX0=='A']<-'1'
#  XX0[XX0=='T']<-'2'
#  XX0[XX0=='C']<-'3'
#  XX0[XX0=='G']<-'4'
#  XX<-XX0
#  return(XX)
#}
