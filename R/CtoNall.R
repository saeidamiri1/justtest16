CtoNall<-function(X){
  X0<-list()
  for(i in 1:length(X)){
    X0[[i]]<- paste(CtoN(X[[i]]),collapse = "")
  }
  return(X0)
}

