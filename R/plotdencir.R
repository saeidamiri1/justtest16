plotdencir<-function(hc1,cluslab=NULL){
  if(length(hc1$order)==length(cluslab)){
    aa<-as.phylo(hc1)
    aa$tip.label<-cluslab
    plot(aa,type="fan")
  } else{
    aa<-as.phylo(hc1)
    plot(aa,type="fan")
    }
  invisible();  
}
