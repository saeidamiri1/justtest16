DistSeqkl<-function(x0,y0){
  xy <- NULL
  for (i in 1:length(x0)) {
    xy[i] <- diffkl(x0[[i]], y0[[i]])
  }
  mmx <- min(is.finite(xy))
  xy[is.na(xy)] <- mmx
  mean(abs(xy))
}