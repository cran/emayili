% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/header-mail.R
\name{subject}
\alias{subject}
\title{Add or query subject of message.}
\usage{
subject(
  msg,
  subject = NULL,
  prefix = NA,
  suffix = NA,
  interpolate = TRUE,
  .open = "{{",
  .close = "}}",
  .envir = NULL
)
}
\arguments{
\item{msg}{A message object.}

\item{subject}{A subject for the message.}

\item{prefix}{A subject prefix.}

\item{suffix}{A subject suffix.}

\item{interpolate}{Whether or not to interpolate into input using \link[glue]{glue}.}

\item{.open}{The opening delimiter.}

\item{.close}{The closing delimiter.}

\item{.envir}{Environment used for \code{glue} interpolation. Defaults to \code{parent.frame()}.}
}
\value{
A message object or the subject of the message object (if \code{subject} is \code{NULL}).
}
\description{
Add or query subject of message.
}
\details{
The \code{prefix} and \code{suffix} can be used to add extra
\href{https://en.wikipedia.org/wiki/List_of_email_subject_abbreviations}{subject
abbreviations}.
}
\examples{
# Create a message and set the subject
msg <- envelope() \%>\% subject("Updated report")

# Retrieve the subject for a message
subject(msg)
}
\seealso{
\code{\link{to}}, \code{\link{from}}, \code{\link{cc}}, \code{\link{bcc}} and \code{\link{reply}}
}
