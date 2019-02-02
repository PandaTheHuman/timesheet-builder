
#creates a timesheet cell with given default attributes;
#    weekday, calendar date, hours worked by employee and
#    regular is true if date is not stat/vacation day
setClass("cell", representation(weekday="character", date="numeric",
                                hoursWorked="numeric",regular="logical"),
         prototype = list(weekday="Sunday", date=0, hoursWorked=0, regular=TRUE))

#returns the weekday of the cell
getWeekday <- function(cell) {
  cell@weekday
}

#returns the hours worked by employee on corresponding date
getHoursWorked <- function(cell) {
  cell@hoursWorked
}

#sets the hours worked by employee
setHoursWorked <- function(cell, hrs) {
  cell@hoursWorked <- hrs
  return(cell)
}

#sets regular condition true
regularTrue <- function(cell) {
  cell@regular <- TRUE
  return(cell)
}

#sets regular condition false
regularFalse <- function(cell) {
  cell@regular <- FALSE
  return(cell)
}