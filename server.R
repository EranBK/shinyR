function(input, output, session) {
  observe({
    query <- parseQueryString(session$clientData$url_search)
    if (!is.null(query[['text']])) {
      updateTextInput(session, "text", value = query[['text']])
      sender <- "rplabbgu@gmail.com"
      recipients <- paste0(input$text)
      # recipients <- c("eran.barkalifa@gmail.com")
      # sub <- input$text
      if (input$text!="a@gmail.com"){
        pw <- "rpLAB890"
        send.mail(from = sender,
                  to = recipients,
                  subject = "Test mail from Rstudio 7",
                  #subject = input$text,
                  # subject = sub,
                  body = "Test email body",
                  smtp = list(host.name = "smtp.gmail.com", port = 465, 
                              user.name = "rplabbgu@gmail.com",            
                              passwd = pw, ssl = TRUE),
                  authenticate = TRUE,
                  send = TRUE)
      }
    }
  })
}
