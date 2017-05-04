joke <- function(n=1, t=3, pause=TRUE){
  rn <- sample(1:38269, n)
  for(i in 1:n){
    e_jk <- jokes::jk[rn[i],]
    cat(paste("Question - \n\n     ", as.character(e_jk$Question)))
    Sys.sleep(t)
    cat("\n \n")
    cat(paste("Answer - \n\n     ", as.character(e_jk$Answer)))
    if(n > 1) cat("\n \n === \n \n")
    if(pause) Sys.sleep(1.5)
  }
}
