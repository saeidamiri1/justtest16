kldi<-function (Xx, Yy){
  Y <- Yy
  X <- Xx
  f.a <- ecdf(X)
  f.b <- ecdf(Y)
  x0 <- seq(min(X, Y), max(X, Y), length.out = 1.3*length(X))
  y0 <- diff(f.a(x0))
  y1 <- diff(f.b(x0))
  yy <- y0 * log(y0/y1)
  sum(yy[is.finite(yy)])
}