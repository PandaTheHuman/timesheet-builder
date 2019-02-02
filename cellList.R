
# build list of 1-15 or 16-31 based on user input
buildEmptyList <- function(id) {
  if (id == "1-15") {
    x <- c(1:15)
  } else if (id == "16-end") {
    x <- c(16-31)
  }
  return(x)
}

# creates a vector of cells with corresponding date from given list
fillList <- function(myList) {
  newList <- list()
  for(i in myList) {
    newList[[i]] <- new("cell", date=i)
  }
  return(newList)
}