mailR::send.mail(
  from = Sys.getenv('THEMADSTATTER_SMTP_USER'), 
  to = Sys.getenv('THEMADSTATTER_SMTP_USER'), 
  subject = "Update R Packages Rout", 
  body = paste(readLines('update_r_packages.Rout'), collapse = '\n'), 
  smtp = list(
    host.name = "smtp.office365.com", 
    port = 587, 
    user.name = Sys.getenv('THEMADSTATTER_SMTP_USER'), 
    passwd = Sys.getenv('THEMADSTATTER_SMTP_PASS'), 
    tls = TRUE
  ),
  authenticate = TRUE, 
  send = TRUE
)
