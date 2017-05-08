joke <- function(n=1, t=3, pause=TRUE){
  rand <- sample(1:8500, 1000)
  set.seed(sample(rand, 1))
  rn <- sample(1:38269, n)
  for(i in 1:n){
    e_jk <- joke::jk[rn[i],]
    cat(paste("Question - \n\n     ", as.character(e_jk$Question)))
    Sys.sleep(t)
    cat("\n \n")
    cat(paste("Answer - \n\n     ", as.character(e_jk$Answer)))
    if(n > 1) cat("\n \n === \n \n")
    if(pause) Sys.sleep(1.5)
  }
}


findJoke <- function(keyword, t=0, pause=FALSE, max=6){
  idq <- grep(keyword, joke::jk[, "Question"])
  ida <- grep(keyword, joke::jk[, "Answer"])
  idn <- unique(c(idq, ida))
  idn <- idn[order(idn)]
  if(length(idn)==0) return(cat(paste0('Jokes with "', keyword, '" not found.')))
  if(length(idn) > max) idn <- idn[1:max]

  for(i in 1:length(idn)){
    e_jk <- joke::jk[idn[i], ]
    cat(paste("Question - \n\n     ", as.character(e_jk$Question)))
    Sys.sleep(t)
    cat("\n \n")
    cat(paste("Answer - \n\n     ", as.character(e_jk$Answer)))
    if(length(idn) > 1) cat("\n \n === \n \n")
    if(pause) Sys.sleep(1.5)
  }
}
