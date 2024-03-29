% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_util_fun.R
\name{diff_tz}
\alias{diff_tz}
\title{Get the time zone difference between two times.}
\usage{
diff_tz(t1, t2, in_min = FALSE)
}
\arguments{
\item{t1}{First time (required, as "POSIXt" time point/moment).}

\item{t2}{Second time (required, as "POSIXt" time point/moment).}

\item{in_min}{Return time-zone based time 
difference in minutes (Boolean)? 
Default: \code{in_min = FALSE}.}
}
\value{
A character (in "HH:MM" format) or 
numeric vector (number of minutes).
}
\description{
\code{diff_tz} computes the time difference 
between two times \code{t1} and \code{t2} 
that is exclusively due to both times being in 
different time zones.
}
\details{
\code{diff_tz} ignores all differences in nominal times, 
but allows adjusting time-based computations 
for time shifts that are due to time zone differences 
(e.g., different locations, or 
changes to/from daylight saving time, DST),  
rather than differences in actual times. 

Internally, \code{diff_tz} determines and contrasts the POSIX 
conversion specifications "%Z" and "%z" for both times 
(in numeric form). 

If the lengths of \code{t1} and \code{t2} differ, 
the shorter vector is recycled to the length of the longer one.
}
\examples{
# Time zones differences:
tm <- "2020-01-01 01:00:00"  # nominal time
t1 <- as.POSIXct(tm, tz = "Pacific/Auckland")
t2 <- as.POSIXct(tm, tz = "Europe/Berlin")
t3 <- as.POSIXct(tm, tz = "Pacific/Honolulu")

# as character (in "HH:MM"):
diff_tz(t1, t2)
diff_tz(t2, t3)
diff_tz(t1, t3)

# as numeric (in minutes):
diff_tz(t1, t3, in_min = TRUE)

# Compare local times (POSIXlt): 
t4 <- as.POSIXlt(Sys.time(), tz = "Pacific/Auckland")
t5 <- as.POSIXlt(Sys.time(), tz = "Europe/Berlin")
diff_tz(t4, t5)
diff_tz(t4, t5, in_min = TRUE)

# DSL shift: Spring ahead (on 2020-03-29: 02:00:00 > 03:00:00):
s6 <- "2020-03-29 01:00:00 CET"   # before DSL switch
s7 <- "2020-03-29 03:00:00 CEST"  # after DSL switch
t6 <- as.POSIXct(s6, tz = "Europe/Berlin")  # CET
t7 <- as.POSIXct(s7, tz = "Europe/Berlin")  # CEST

diff_tz(t6, t7)  # 1 hour forward
diff_tz(t6, t7, in_min = TRUE)

}
\seealso{
\code{\link{days_in_month}} for the number of days in given months; 
\code{\link{is_leap_year}} to check for leap years.

Other date and time functions: 
\code{\link{change_time}()},
\code{\link{change_tz}()},
\code{\link{cur_date}()},
\code{\link{cur_time}()},
\code{\link{days_in_month}()},
\code{\link{diff_dates}()},
\code{\link{diff_times}()},
\code{\link{is_leap_year}()},
\code{\link{what_date}()},
\code{\link{what_month}()},
\code{\link{what_time}()},
\code{\link{what_wday}()},
\code{\link{what_week}()},
\code{\link{what_year}()},
\code{\link{zodiac}()}
}
\concept{date and time functions}
