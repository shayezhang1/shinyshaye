#install.packages("shiny")
#library(shiny)
#install.packages("shinythemes") and library

ui <- fluidPage(
  headerPanel('Station Bypass DRA Tool'),
  
  mainPanel(
    tabsetPanel(type = "tabs",
                tabPanel("Line 1 & 2", 

  sidebarPanel(width = 8,
               
  sliderInput(inputId = "rate",
              label = "Drag to a target rate in thousands BPH",
              value = 58, min = 1, max= 80),
  
  selectInput("line",
              "Select a Line",
              c(
                "Line 1" = 1,
                "Line 2" = 2)
              ),
  selectInput("Astation",
             "Select Upstream Station",
              choices = list(
                "Hebert" = "HEB",
                "Lake Charles" = "LKC",
                "Church Point" = "CHB",
                "Krotz Springs" ='KRZ',
                "Baton Rouge" = "BRJ",
                "Felixville" = "FEB",
                "McComb" = "MCB",
                "Columbia" = "COB",
                "Kola" = "KOB",
                "Collins" ="CLB",
                "Paulding" = "PAB",
                "Meridian" = "MDB",
                "Epes" = "EPB",
                "Moundville"= "MVB",
                "Vance" = "VAB",
                "Pelham" = "PLJ",
                "St Ives" = "STB",
                "Oxford" = "OXB",
                "Heflin" = "HFB",
                "Bremen" = "BNB",
                "Atlanta" = "ATB",
                "Dacula" = "DAB",
                "Danielsville" = "DNB",
                "Anderson" = "ANB",
                "Gaffaney" = "GFB",
                "Kannapolis"= "KAB"
                )
              ),
  selectInput("Bstation",
              "Select Bypassing Station",
              choices = list(
                "Hebert" = "HEB",
                "Lake Charles" = "LKC",
                "Church Point" = "CHB",
                "Krotz Springs" ='KRZ',
                "Baton Rouge" = "BRJ",
                "Felixville" = "FEB",
                "McComb" = "MCB",
                "Columbia" = "COB",
                "Kola" = "KOB",
                "Collins" ="CLB",
                "Paulding" = "PAB",
                "Meridian" = "MDB",
                "Epes" = "EPB",
                "Moundville"= "MVB",
                "Vance" = "VAB",
                "Pelham" = "PLJ",
                "St Ives" = "STB",
                "Oxford" = "OXB",
                "Heflin" = "HFB",
                "Bremen" = "BNB",
                ##"Atlanta" = "ATB",
                "Dacula" = "DAB",
                "Danielsville" = "DNB",
                "Anderson" = "ANB",
                "Gaffaney" = "GFB",
                "Kannapolis"= "KAB"
                )
  ),  
  selectInput("Cstation",
              "Select Downstream Station",
              choices = list(
                "Hebert" = "HEB",
                "Lake Charles" = "LKC",
                "Church Point" = "CHB",
                "Krotz Springs" ='KRZ',
                "Baton Rouge" = "BRJ",
                "Felixville" = "FEB",
                "McComb" = "MCB",
                "Columbia" = "COB",
                "Kola" = "KOB",
                "Collins" ="CLB",
                "Paulding" = "PAB",
                "Meridian" = "MDB",
                "Epes" = "EPB",
                "Moundville"= "MVB",
                "Vance" = "VAB",
                "Pelham" = "PLJ",
                "St Ives" = "STB",
                "Oxford" = "OXB",
                "Heflin" = "HFB",
                "Bremen" = "BNB",
                "Atlanta" = "ATB",
                "Dacula" = "DAB",
                "Danielsville" = "DNB",
                "Anderson" = "ANB",
                "Gaffaney" = "GFB",
                "Kannapolis"= "KAB")
  ),  
  
  numericInput(inputId = "discharge",
               label = "Enter a discharge pressure in psi",
               value = 530, min = 1, max = 1000),
  numericInput(inputId = "alternate",
               label = "Enter an alternate pressure in psi",
               value = 320, min = 1, max = 1000),
  numericInput(inputId = "suction",
               label = "Enter a suction pressure in psi",
               value = 40, min = 1, max = 1000),
  
  verbatimTextOutput("PPM_Results"),
  verbatimTextOutput("stats"),
  verbatimTextOutput("LOL")
  
  
)
),

#Line 3 and Line 4 
tabPanel("Line 3 & 4",
  sliderInput(inputId = "rate3",
      label = "Drag to a target rate in thousands BPH",
      value = 25, min = 1, max= 50),       
  selectInput("line3",
              "Select a Line",
              c(
                "Line 3" = 3,
                "Line 4" = 4)
  ),       
  
  selectInput("product3",
              "Select a Product",
              c(
                "Gas" = "GAS",
                "Oil" = "OIL")
  ), 

  selectInput("Astation3",
              "Select Upstream Station",
              choices = list(
                "Greensboro" = "GBN",
                "Reisterstown" = "RSB",
                "Landenburg" = "LDB",
                "Woodbury" ='WBJ',
                "Allentown" = "ALB"
              )
  ),       
  selectInput("Bstation3",
              "Select Bypassing Station",
              choices = list(
                "Greensboro" = "GBN",
                "Reisterstown" = "RSB",
                "Landenburg" = "LDB",
                "Woodbury" ='WBJ',
                "Allentown" = "ALB"
              )
  ),
  
  selectInput("Cstation3",
              "Select Downstream Station",
              choices = list(
                "Greensboro" = "GBN",
                "Reisterstown" = "RSB",
                "Landenburg" = "LDB",
                "Woodbury" ='WBJ',
                "Allentown" = "ALB",
                "Dorsey" = "DSY"
              )
  ),
  
  numericInput(inputId = "discharge3",
               label = "Enter a discharge pressure in psi",
               value = 530, min = 1, max = 1000),
  numericInput(inputId = "alternate3",
               label = "Enter an alternate pressure in psi",
               value = 320, min = 1, max = 1000),
  numericInput(inputId = "suction3",
               label = "Enter a suction pressure in psi",
               value = 40, min = 1, max = 1000),
  
  verbatimTextOutput("PPM_Results3"),
  verbatimTextOutput("stats3"),
  verbatimTextOutput("LOL3")
  
         
         
         
         ),
tabPanel("Stublines", p("yo"))
),
  ))


# 3 steps inside server
# 1st step: Save objects to display to outputs output$hist links to previous outputId "hist"
# 2nd step: Build objects to display with render()
# 3rd step: use input values with input$

server <- function(input,output) {
  #fluid and chemical data
  SGDRA = 0.88
  b = 0.009319
  
  # mileage data 
  HEBmile = 77.32
  LKCmile = 127.08
  CHBmile = 194.22
  KRZmile = 228.4
  BRJmile = 260.44
  FEBmile = 288.89
  MCBmile = 318.2
  COBmile = 355.53
  KOBmile = 385.28
  CLBmile = 385.64
  PABmile = 421.01
  MDBmile = 456.13
  EPBmile = 494.9
  MVBmile = 531.86
  VABmile = 558.55
  PLJmile = 586.41
  STBmile = 618.55
  OXBmile = 648.45
  HFBmile = 667.23
  BNBmile = 688.65
  ATBmile = 721.21
  DABmile = 766.64
  DNBmile = 808.64
  ANBmile = 847.84
  GFBmile = 919.31
  KABmile = 986.32
  
  # elevation data 
  HEBele = 17.43
  LKCele = 14.54
  CHBele = 50.22
  KRZele = 26
  BRJele = 104.99
  FEBele = 197.5
  MCBele = 358.25
  COBele = 260
  KOBele = 378
  CLBele = 374.25
  PABele = 356
  MDBele = 325
  EPBele = 167
  MVBele = 146
  VABele = 415
  PLJele = 443.25
  STBele = 545
  OXBele = 605.4
  HFBele = 1010
  BNBele = 1258.9
  ATBele = 954.75
  DABele = 1010
  DNBele = 786.5
  ANBele = 734.25
  GFBele = 645.25
  KABele = 722
  
  # fluid specific gravity
  SG <- reactive({
    if(input$line == 1) {SG = 0.73}
    if(input$line == 2) {SG = 0.85}
    return(SG)
  })
  
  m <- reactive({
    if(input$line == 1) {m = 0.086862}
    if(input$line == 2) {m = 0.090457}
    return(m)
  })
  
  Amile <- reactive({
    if(input$Astation == 'HEB') {Amile = HEBmile}
    if(input$Astation == 'LKC') {Amile = LKCmile}
    if(input$Astation == 'CHB') {Amile = CHBmile}
    if(input$Astation == 'KRZ') {Amile = KRZmile}
    if(input$Astation == 'BRJ') {Amile = BRJmile}
    if(input$Astation == 'FEB') {Amile = FEBmile}
    if(input$Astation == 'MCB') {Amile = MCBmile}
    if(input$Astation == 'COB') {Amile = COBmile}
    if(input$Astation == 'KOB') {Amile = KOBmile}
    if(input$Astation == 'CLB') {Amile = CLBmile}
    if(input$Astation == 'PAB') {Amile = PABmile}
    if(input$Astation == 'MDB') {Amile = MDBmile}
    if(input$Astation == 'EPB') {Amile = EPBmile}
    if(input$Astation == 'MVB') {Amile = MVBmile}
    if(input$Astation == 'VAB') {Amile = VABmile}
    if(input$Astation == 'PLJ') {Amile = PLJmile}
    if(input$Astation == 'STB') {Amile = STBmile}
    if(input$Astation == 'OXB') {Amile = OXBmile}
    if(input$Astation == 'HFB') {Amile = HFBmile}
    if(input$Astation == 'BNB') {Amile = BNBmile}
    if(input$Astation == 'ATB') {Amile = ATBmile}
    if(input$Astation == 'DAB') {Amile = DABmile}
    if(input$Astation == 'DNB') {Amile = DNBmile}
    if(input$Astation == 'ANB') {Amile = ANBmile}
    if(input$Astation == 'GFB') {Amile = GFBmile}
    if(input$Astation == 'KAB') {Amile = KABmile}
    return(Amile)
  })
  
  Bmile <- reactive({
    if(input$Bstation == 'HEB') {Bmile = HEBmile}
    if(input$Bstation == 'LKC') {Bmile = LKCmile}
    if(input$Bstation == 'CHB') {Bmile = CHBmile}
    if(input$Bstation == 'KRZ') {Bmile = KRZmile}
    if(input$Bstation == 'BRJ') {Bmile = BRJmile}
    if(input$Bstation == 'FEB') {Bmile = FEBmile}
    if(input$Bstation == 'MCB') {Bmile = MCBmile}
    if(input$Bstation == 'COB') {Bmile = COBmile}
    if(input$Bstation == 'KOB') {Bmile = KOBmile}
    if(input$Bstation == 'CLB') {Bmile = CLBmile}
    if(input$Bstation == 'PAB') {Bmile = PABmile}
    if(input$Bstation == 'MDB') {Bmile = MDBmile}
    if(input$Bstation == 'EPB') {Bmile = EPBmile}
    if(input$Bstation == 'MVB') {Bmile = MVBmile}
    if(input$Bstation == 'VAB') {Bmile = VABmile}
    if(input$Bstation == 'PLJ') {Bmile = PLJmile}
    if(input$Bstation == 'STB') {Bmile = STBmile}
    if(input$Bstation == 'OXB') {Bmile = OXBmile}
    if(input$Bstation == 'HFB') {Bmile = HFBmile}
    if(input$Bstation == 'BNB') {Bmile = BNBmile}
    if(input$Bstation == 'ATB') {Bmile = ATBmile}
    if(input$Bstation == 'DAB') {Bmile = DABmile}
    if(input$Bstation == 'DNB') {Bmile = DNBmile}
    if(input$Bstation == 'ANB') {Bmile = ANBmile}
    if(input$Bstation == 'GFB') {Bmile = GFBmile}
    if(input$Bstation == 'KAB') {Bmile = KABmile}
    return(Bmile)
  })
  
  Cmile <- reactive({
    if(input$Cstation == 'HEB') {Cmile = HEBmile}
    if(input$Cstation == 'LKC') {Cmile = LKCmile}
    if(input$Cstation == 'CHB') {Cmile = CHBmile}
    if(input$Cstation == 'KRZ') {Cmile = KRZmile}
    if(input$Cstation == 'BRJ') {Cmile = BRJmile}
    if(input$Cstation == 'FEB') {Cmile = FEBmile}
    if(input$Cstation == 'MCB') {Cmile = MCBmile}
    if(input$Cstation == 'COB') {Cmile = COBmile}
    if(input$Cstation == 'KOB') {Cmile = KOBmile}
    if(input$Cstation == 'CLB') {Cmile = CLBmile}
    if(input$Cstation == 'PAB') {Cmile = PABmile}
    if(input$Cstation == 'MDB') {Cmile = MDBmile}
    if(input$Cstation == 'EPB') {Cmile = EPBmile}
    if(input$Cstation == 'MVB') {Cmile = MVBmile}
    if(input$Cstation == 'VAB') {Cmile = VABmile}
    if(input$Cstation == 'PLJ') {Cmile = PLJmile}
    if(input$Cstation == 'STB') {Cmile = STBmile}
    if(input$Cstation == 'OXB') {Cmile = OXBmile}
    if(input$Cstation == 'HFB') {Cmile = HFBmile}
    if(input$Cstation == 'BNB') {Cmile = BNBmile}
    if(input$Cstation == 'ATB') {Cmile = ATBmile}
    if(input$Cstation == 'DAB') {Cmile = DABmile}
    if(input$Cstation == 'DNB') {Cmile = DNBmile}
    if(input$Cstation == 'ANB') {Cmile = ANBmile}
    if(input$Cstation == 'GFB') {Cmile = GFBmile}
    if(input$Cstation == 'KAB') {Cmile = KABmile}
    return(Cmile)
  })
  
  Aele <- reactive({
    if(input$Astation == 'HEB') {Aele = HEBele}
    if(input$Astation == 'LKC') {Aele = LKCele}
    if(input$Astation == 'CHB') {Aele = CHBele}
    if(input$Astation == 'KRZ') {Aele = KRZele}
    if(input$Astation == 'BRJ') {Aele = BRJele}
    if(input$Astation == 'FEB') {Aele = FEBele}
    if(input$Astation == 'MCB') {Aele = MCBele}
    if(input$Astation == 'COB') {Aele = COBele}
    if(input$Astation == 'KOB') {Aele = KOBele}
    if(input$Astation == 'CLB') {Aele = CLBele}
    if(input$Astation == 'PAB') {Aele = PABele}
    if(input$Astation == 'MDB') {Aele = MDBele}
    if(input$Astation == 'EPB') {Aele = EPBele}
    if(input$Astation == 'MVB') {Aele = MVBele}
    if(input$Astation == 'VAB') {Aele = VABele}
    if(input$Astation == 'PLJ') {Aele = PLJele}
    if(input$Astation == 'STB') {Aele = STBele}
    if(input$Astation == 'OXB') {Aele = OXBele}
    if(input$Astation == 'HFB') {Aele = HFBele}
    if(input$Astation == 'BNB') {Aele = BNBele}
    if(input$Astation == 'ATB') {Aele = ATBele}
    if(input$Astation == 'DAB') {Aele = DABele}
    if(input$Astation == 'DNB') {Aele = DNBele}
    if(input$Astation == 'ANB') {Aele = ANBele}
    if(input$Astation == 'GFB') {Aele = GFBele}
    if(input$Astation == 'KAB') {Aele = KABele}
    return(Aele)
  })
  
  Bele <- reactive({
    if(input$Bstation == 'HEB') {Bele = HEBele}
    if(input$Bstation == 'LKC') {Bele = LKCele}
    if(input$Bstation == 'CHB') {Bele = CHBele}
    if(input$Bstation == 'KRZ') {Bele = KRZele}
    if(input$Bstation == 'BRJ') {Bele = BRJele}
    if(input$Bstation == 'FEB') {Bele = FEBele}
    if(input$Bstation == 'MCB') {Bele = MCBele}
    if(input$Bstation == 'COB') {Bele = COBele}
    if(input$Bstation == 'KOB') {Bele = KOBele}
    if(input$Bstation == 'CLB') {Bele = CLBele}
    if(input$Bstation == 'PAB') {Bele = PABele}
    if(input$Bstation == 'MDB') {Bele = MDBele}
    if(input$Bstation == 'EPB') {Bele = EPBele}
    if(input$Bstation == 'MVB') {Bele = MVBele}
    if(input$Bstation == 'VAB') {Bele = VABele}
    if(input$Bstation == 'PLJ') {Bele = PLJele}
    if(input$Bstation == 'STB') {Bele = STBele}
    if(input$Bstation == 'OXB') {Bele = OXBele}
    if(input$Bstation == 'HFB') {Bele = HFBele}
    if(input$Bstation == 'BNB') {Bele = BNBele}
    if(input$Bstation == 'ATB') {Bele = ATBele}
    if(input$Bstation == 'DAB') {Bele = DABele}
    if(input$Bstation == 'DNB') {Bele = DNBele}
    if(input$Bstation == 'ANB') {Bele = ANBele}
    if(input$Bstation == 'GFB') {Bele = GFBele}
    if(input$Bstation == 'KAB') {Bele = KABele}
    return(Bele)
  })
  
  Cele <- reactive({
    if(input$Cstation == 'HEB') {Cele = HEBele}
    if(input$Cstation == 'LKC') {Cele = LKCele}
    if(input$Cstation == 'CHB') {Cele = CHBele}
    if(input$Cstation == 'KRZ') {Cele = KRZele}
    if(input$Cstation == 'BRJ') {Cele = BRJele}
    if(input$Cstation == 'FEB') {Cele = FEBele}
    if(input$Cstation == 'MCB') {Cele = MCBele}
    if(input$Cstation == 'COB') {Cele = COBele}
    if(input$Cstation == 'KOB') {Cele = KOBele}
    if(input$Cstation == 'CLB') {Cele = CLBele}
    if(input$Cstation == 'PAB') {Cele = PABele}
    if(input$Cstation == 'MDB') {Cele = MDBele}
    if(input$Cstation == 'EPB') {Cele = EPBele}
    if(input$Cstation == 'MVB') {Cele = MVBele}
    if(input$Cstation == 'VAB') {Cele = VABele}
    if(input$Cstation == 'PLJ') {Cele = PLJele}
    if(input$Cstation == 'STB') {Cele = STBele}
    if(input$Cstation == 'OXB') {Cele = OXBele}
    if(input$Cstation == 'HFB') {Cele = HFBele}
    if(input$Cstation == 'BNB') {Cele = BNBele}
    if(input$Cstation == 'ATB') {Cele = ATBele}
    if(input$Cstation == 'DAB') {Cele = DABele}
    if(input$Cstation == 'DNB') {Cele = DNBele}
    if(input$Cstation == 'ANB') {Cele = ANBele}
    if(input$Cstation == 'GFB') {Cele = GFBele}
    if(input$Cstation == 'KAB') {Cele = KABele}
    return(Cele)
  })
# factor for DR calculation  
  xo <- reactive({
    if (input$line == 1 && input$Astation == 'BRJ' ||
        input$line == 1 && input$Astation == 'FEB' ||
        input$line == 1 && input$Astation == 'MCB' ||
        input$line == 1 && input$Astation == 'COB' ||
        input$line == 1 && input$Astation == 'CLB' ||
        input$line == 1 && input$Astation == 'PAB' ||
        input$line == 1 && input$Astation == 'MDB' ||
        input$line == 1 && input$Astation == 'EPB' ||
        input$line == 1 && input$Astation == 'MVB' ||
        input$line == 1 && input$Astation == 'VAB' ||
        input$line == 1 && input$Astation == 'PLJ' ||
        input$line == 1 && input$Astation == 'STB' ||
        input$line == 1 && input$Astation == 'OXB' ||
        input$line == 1 && input$Astation == 'HFB' ||
        input$line == 1 && input$Astation == 'BNB') {xo = 60}
    else {xo = 100}
    return(xo)
  })

# mile to inches
  x <- reactive({
    if (input$line == 1 && input$Astation == 'BRJ' ||
        input$line == 1 && input$Astation == 'FEB' ||
        input$line == 1 && input$Astation == 'MCB' ||
        input$line == 1 && input$Astation == 'COB' ||
        input$line == 1 && input$Astation == 'CLB' ||
        input$line == 1 && input$Astation == 'PAB' ||
        input$line == 1 && input$Astation == 'MDB' ||
        input$line == 1 && input$Astation == 'EPB' ||
        input$line == 1 && input$Astation == 'MVB' ||
        input$line == 1 && input$Astation == 'VAB' ||
        input$line == 1 && input$Astation == 'PLJ' ||
        input$line == 1 && input$Astation == 'STB' ||
        input$line == 1 && input$Astation == 'OXB' ||
        input$line == 1 && input$Astation == 'HFB' ||
        input$line == 1 && input$Astation == 'BNB') {x = 0.104}
    else {x = 0.06}
    return(x)
  })
  # for BRJ and Atlanta Bypass
  adder <- reactive ({
    if (input$line == 1 && input$Bstation == 'BRJ'||
        input$line == 1 && input$Bstation == 'ATB'
        ) {adder = 0.0749}
    else {adder = x()}
    return(adder)
  })

  #coefficients
  # psi to inches
  y <- reactive({
    if (input$line == 1) {y = 0.0079}
    else {y = 0.0067}
    return(y)
  })
    
  # feet to inches
  z = 0.0025
  
  #calculations
  dispin = reactive(input$discharge*y()) #discharge pressure in inches
  altpin = reactive(input$alternate*y()) #alternate pressure in inches
  sucpin = reactive(input$suction*y()) #suction pressure in inches
  mpdiff = reactive(Cmile() - Amile()) # mileage difference C-A
  elediff = reactive(Aele() - Cele()) # elevation difference A-C
  mpdiffin = reactive(mpdiff()*adder()) #mileage diff in inches
  elediffin = reactive(elediff()*z) #elevation diff in inches
  #alternates 
  mpdiffalt = reactive(Cmile() - Bmile()) # mileage difference C-B
  elediffalt = reactive(Bele() - Cele()) # mileage difference B-C
  
  # mileage diff in inches
  # need to figure out how to consider atlanta bypass here. *0.06
  mpdiffaltin = reactive({
    if (input$line == 1 && input$Bstation == 'BRJ') {mpdiffaltin = mpdiffalt()*0.104}
    else {mpdiffaltin = mpdiffalt()*x()}
    return(mpdiffaltin)
  })
  elediffaltin = reactive(elediffalt()*z) #elevation diff in inches
  #angles (custom)
  angleac = reactive(
    atan(mpdiffin()/(elediffin()+dispin()-sucpin()))
         ) # calculates angle from A to C
  anglebc = reactive(
    atan(mpdiffaltin()/(elediffaltin()+altpin()-sucpin()))
  )
  anglemax = reactive(max(angleac(),anglebc()))
  
  #finish up X and DR and rate and PPM 
  ratein <- reactive({
    if (input$line == 1){ratein = input$rate^2*0.0017+0.0216*input$rate-0.1167}
    else {ratein = input$rate^2*0.0037+0.0462*input$rate-0.1978}
    return(ratein)
  })

  xin = reactive(tan(anglemax())*ratein())
  xmile = reactive(xin()/x())
  DR = reactive((1-xo()/xmile()+0.0012*mpdiff())*100)
  PPM = reactive(m()*DR()/((SGDRA/SG())-b*SGDRA/SG()*DR()))
  
  #reactive expressions cache values
  output$PPM_Results <- renderPrint('PPM results provided below!')
  output$stats <- renderPrint(PPM())
  output$LOL <- renderPrint("Have a Great Day")
  
  #Line 3 and Line 4
  
  #mileage data
  GBNmile = 0
  RSBmile = 305.93
  LDBmile = 366.79
  WBJmile = 405.69
  ALBmile = 445.2
  DSYmile = 288.85
  
  #Elevation data
  GBNele = 870
  RSBele = 670
  LDBele = 310
  WBJele = 52
  ALBele = 85.25
  DSYele = 15
  
  SG3 <- reactive({
    if(input$product3 == 'GAS') {SG3 = 0.73}
    if(input$product3 == 'OIL') {SG3 = 0.85}
    return(SG3)
  })
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  output$PPM_Results3 <- renderPrint('PPM results provided below!')
  output$stats3 <- renderPrint(PPM())
  output$LOL3 <- renderPrint(SG3())
  
  
  
}
shinyApp(ui = ui, server = server)

#idea: show input parameters visualizations as check
#test baton rouge and atlanta bypass L1
