leap <- function(year){
  if(year %% 4 == 0){
    if(year%%100 == 0 & year%%400 != 0){
      return(FALSE)
    }else{
      return(TRUE)
    }
  }else{
    return(FALSE)
  }
}

#Tests
leap(1996)
leap(1997)
leap(1900)
leap(2000)

leap <- function(year){
  year %% 4 == 0 & (year%%100 != 0 | year%%400 == 0)
}
