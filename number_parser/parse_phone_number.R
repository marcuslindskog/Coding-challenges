parse_phone_number <- function(number_string){
  digits_only <- gsub("[^0-9]", "", number_string)
  target_number <- unlist(strsplit(sub("^1", "", digits_only), ""))
  if(length(target_number) != 10 | as.numeric(target_number[1]) < 2 | as.numeric(target_number[4]) < 2)  {
    return(NULL)
    break
  }else{
    return(paste(target_number, collapse = ""))
  }

  
}


#Tests
parse_phone_number("+1 (613)-995-0253")
parse_phone_number("613-995-0253")
parse_phone_number("1 613 995 0253")
parse_phone_number("(223) 456-7890")
