plotden<-function(hc1,cluslab=NULL){
  if(length(hc1$order)==length(cluslab)){
plot(hc1,labels=cluslab,main="",xlab="",sub="")
} else{plot(hc1,main="",xlab="",sub="")}
    invisible();
}
