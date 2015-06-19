library(shiny)

shinyUI(fluidPage(titlePanel("Nearest Fire Stations"),sidebarLayout(
    sidebarPanel(
    # use regions as option groups
    selectizeInput('Firestations', 'Select a school or Municipal Boundary', choices = list(
      Schools = c(`DubachHS` = 'DubachstationNo.6', `Hilcrest` = 'Vienna Station', `Glenview` = 'Mt. Olive Station', `Simsboro` = 'Simsboro Station'),
      Municipal = c(`Simsboro` = 'Simsboro Station', `Grambling` = 'Mt. Olive Station', `Ruston` = 'Sisemore Station and Tech Farm Station', `Vienna` = 'Vienna Station',`Choudrant` = 'Tremont Station', `Downsville` = 'Downsville West Station' )
    ), multiple = TRUE),
    helpText("Note: This is a simple Shiny application",
             "By selecting the school or municipal boundary it will display the",
             "nearest Firestation.")
  ),
  mainPanel(
    verbatimTextOutput('values')
  )
), title = 'Options groups for select(ize) input'))
