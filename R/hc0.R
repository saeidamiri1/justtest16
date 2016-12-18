hc0<-function(Se){
hc1<-hclust(as.dist(t(Se)), method = "average", members = NULL)
return(hc1)
}