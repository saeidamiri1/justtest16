diffkl<-function (X, Y){
  if (length(X) <= 2 & length(Y) <= 2)
    XYX <- 0
  if (length(X) > 2 & length(Y) <= 2)
    XYX <- NA
  if (length(X) <= 2 & length(Y) > 2)
    XYX <- NA
  if (length(X) > 2 & length(Y) > 2)
    XYX <- kldi(X, Y)
  return(XYX)
}