raindrops <- function(num){
  resp_text <- c("Pling", "Plang", "Plong", as.character(num))
  resp_check <- c(num%%3 == 0, num%%5 == 0, num%%7 == 0, (num%%3!= 0 & num%%5 != 0 & num%%7 != 0))
  paste(resp_text[resp_check], sep = "", collapse = "")
}

##Checks
raindrops(1)
raindrops(3)
raindrops(5)
raindrops(7)
raindrops(15)
raindrops(21)
raindrops(35)
raindrops(68)
raindrops(105)

