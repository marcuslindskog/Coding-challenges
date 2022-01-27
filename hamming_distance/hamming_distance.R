hamming <- function(strand1, strand2){
  v_strand1 <- unlist(strsplit(strand1, split =""))
  v_strand2 <- unlist(strsplit(strand2, split =""))
  
  if(length(v_strand1) == length(v_strand2)){
    sum(v_strand1 != v_strand2)
  }else{
    stop("Strands are not of equal length")
  }
  
}

strand1 <- "CGC"
strand2 <- "CGTC"
q  <- hamming(strand1, strand2)
