% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_fun.R
\name{what_year}
\alias{what_year}
\title{What year is it?}
\usage{
what_year(when = Sys.Date(), abbr = FALSE, as_integer = FALSE)
}
\arguments{
\item{when}{Date (as a scalar or vector).
Default: \code{when = NA}. 
Using \code{as.Date(when)} to convert strings into dates, 
and \code{Sys.Date()}, if \code{when = NA}.}

\item{abbr}{Boolean: Return abbreviated?
Default: \code{abbr = FALSE}.}

\item{as_integer}{Boolean: Return as integer? 
Default: \code{as_integer = FALSE}.}
}
\description{
\code{what_year} provides a satisficing version of 
to determine the year corresponding to a given date.
}
\details{
\code{what_year} returns the year     
of \code{when} or \code{Sys.Date()} 
(as a name or number).
}
\examples{
what_year()
what_year(abbr = TRUE)
what_year(as_integer = TRUE)

# with date vectors (as characters):
ds <- c("2020-01-01", "2020-02-29", "2020-12-24", "2020-12-31")
what_year(when = ds)
what_year(when = ds, abbr = TRUE, as_integer = FALSE)
what_year(when = ds, abbr = TRUE, as_integer = TRUE)

# with time vector (strings of POSIXct times):
ts <- c("2020-02-29 10:11:12 CET", "2020-12-31 23:59:59")
what_year(ts)

}
\seealso{
\code{what_week()} function to obtain weeks; 
\code{what_month()} function to obtain months; 
\code{cur_time()} function to print the current time; 
\code{cur_date()} function to print the current date; 
\code{now()} function of the \strong{lubridate} package; 
\code{Sys.time()} function of \strong{base} R.

Other date and time functions: 
\code{\link{change_time}()},
\code{\link{change_tz}()},
\code{\link{cur_date}()},
\code{\link{cur_time}()},
\code{\link{days_in_month}()},
\code{\link{diff_dates}()},
\code{\link{diff_times}()},
\code{\link{diff_tz}()},
\code{\link{is_leap_year}()},
\code{\link{what_date}()},
\code{\link{what_month}()},
\code{\link{what_time}()},
\code{\link{what_wday}()},
\code{\link{what_week}()}
}
\concept{date and time functions}
