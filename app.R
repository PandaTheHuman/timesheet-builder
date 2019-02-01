library(shiny)

# Define UI for app that builds a timesheet ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Timesheet Builder"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: enter name
      selectInput(inputId = "employeeName", label = "Name", 
                  choices = list("Panda Elliott", "Michael Scott"), 
                  selected = NULL, multiple = FALSE, selectize = TRUE ),
      # Input: choose month
      selectInput(inputId = "timesheetMonth", label = "Month",
                  choices = month.name, selected = NULL, multiple = FALSE,
                  selectize = TRUE),
      # Input: choose pay period
      selectInput(inputId = "payPeriod", label = "Pay Period",
                  choices = list("1-15", "16-end"), selected = NULL,
                  multiple = FALSE, selectize = TRUE),
      # Input: choose which days you work
      checkboxGroupInput(inputId = "shifts", label = "Choose your usual days worked",
                         choiceNames = list("Monday", "Tuesday", "Wednesday",
                                            "Thursday", "Friday", "Saturday"),
                         choiceValues = list(1,2,3,4,5,6), selected = list(1,2,3,4,5)),
      #Input: choose your normal shift length
      numericInput(inputId = "shiftHours", label = "Fill in your normal shift length",
                   value = 0, min = 0, max = NA, step = 0.25)
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      tableOutput("timesheetTable")

      
    )
  )
)

# Define server logic required build timesheet ----
server <- function(input, output) {
  
  output$timesheetTable <- renderTable({}
  )

  
}



shinyApp(ui = ui, server = server)
