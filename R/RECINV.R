RECINV<-function (XX,ORG0){
  LL <- NULL
  LL2 <- list()
  z <- 1
  K0<-length(ORG0)
  for (i1 in 1:K0) {
    loc <- gregexpr(pattern =ORG0[i1], XX)[[1]]
    bet <- diff(loc)
    LL2[[z]] <- bet
    z <- z + 1
  }
  LL2
}
