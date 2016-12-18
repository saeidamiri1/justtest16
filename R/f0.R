f0 <- function(vec, fn){
  vec0<-c(vec,c(vec[length(vec)]+1))
  vecs <- mapply(seq, 1, vec0)
  vecs1<-vecs[-length(vecs)]
  tmp <- do.call(expand.grid, vecs1)
  tmp <- apply(tmp, 1, fn)
  (tmp)
}
