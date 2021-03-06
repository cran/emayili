% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/server.R
\name{server}
\alias{server}
\title{Create a SMTP server object.}
\usage{
server(
  host,
  port = 25,
  username = NULL,
  password = NULL,
  insecure = FALSE,
  reuse = TRUE,
  helo = NA,
  ...
)
}
\arguments{
\item{host}{DNS name or IP address of the SMTP server.}

\item{port}{Port that the SMTP server is listening on.}

\item{username}{Username for SMTP server.}

\item{password}{Password for SMTP server.}

\item{insecure}{Whether to ignore SSL issues.}

\item{reuse}{Whether the connection to the SMTP server should be left open for reuse.}

\item{helo}{The HELO domain name of the sending host. If left as \code{NA} then will use local host name.}

\item{...}{Additional curl options. See \code{curl::curl_options()} for a list of supported options.}
}
\value{
A function which is used to send messages to the server.
}
\description{
Create a SMTP server object.
}
\examples{
library(magrittr)

# Set parameters for SMTP server (with username and password)
smtp <- server(host = "smtp.gmail.com",
               port = 465,
               username = "bob@gmail.com",
               password = "bd40ef6d4a9413de9c1318a65cbae5d7")

# Set parameters for a (fake) testing SMTP server.
#
# More information about this service can be found at https://www.smtpbucket.com/.
#
smtp <- server(host = "mail.smtpbucket.com",
               port = 8025)

# Create a message
msg <- envelope() \%>\%
  from("bob@gmail.com") \%>\%
  to("alice@yahoo.com")

# Send message (verbose output from interactions with server)
\dontrun{
smtp(msg, verbose = TRUE)
}

# To confirm that the message was sent, go to https://www.smtpbucket.com/ then:
#
# - fill in "bob@gmail.com" for the Sender field and
# - fill in "alice@yahoo.com" for the Recipient field then
# - press the Search button.

# With explicit HELO domain.
#
smtp <- server(host = "mail.example.com",
               helo = "client.example.com")
}
