% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_fun.R
\name{diff_dates}
\alias{diff_dates}
\title{Get the difference between two dates (in human units).}
\usage{
diff_dates(
  from_date,
  to_date = Sys.Date(),
  unit = "years",
  as_character = TRUE
)
}
\arguments{
\item{from_date}{From date (required, scalar or vector, as "Date"). 
Date of birth (DOB), assumed to be of class "Date", 
and coerced into "Date" when of class "POSIXt".}

\item{to_date}{To date (optional, scalar or vector, as "Date"). 
Default: \code{to_date = Sys.Date()}. 
Maximum date/date of death (DOD), assumed to be of class "Date", 
and coerced into "Date" when of class "POSIXt".}

\item{unit}{Largest measurement unit for representing results. 
Units represent human time periods, rather than 
chronological time differences. 
Default: \code{unit = "years"} for completed years, months, and days. 
Options available: 
\enumerate{

  \item \code{unit = "years"}: completed years, months, and days (default)
  
  \item \code{unit = "months"}: completed months, and days
  
  \item \code{unit = "days"}: completed days
  
  }
Units may be abbreviated.}

\item{as_character}{Boolean: Return output as character? 
Default: \code{as_character = TRUE}.  
If \code{as_character = FALSE}, results are returned 
as columns of a data frame 
and include \code{from_date} and \code{to_date}.}
}
\value{
A character vector or data frame 
(with dates, sign, and numeric columns for units).
}
\description{
\code{diff_dates} computes the difference between two dates 
(i.e., from some \code{from_date} to some \code{to_date}) 
in human measurement units (periods).
}
\details{
\code{diff_dates} answers questions like 
"How much time has elapsed between two dates?" 
or "How old are you?" in human time periods 
of (full) years, months, and days. 

Key characteristics:

\itemize{

  \item If \code{to_date} or \code{from_date} are not "Date" objects, 
  \code{diff_dates} aims to coerce them into "Date" objects. 

  \item If \code{to_date} is missing (i.e., \code{NA}), 
  \code{to_date} is set to today's date (i.e., \code{Sys.Date()}).
  
  \item If \code{to_date} is specified, any intermittent missing values 
  (i.e., \code{NA}) are set to today's date (i.e., \code{Sys.Date()}). 
  Thus, dead people (with both birth dates and death dates specified) 
  do not age any further, but people still alive (with \code{is.na(to_date)}, 
  are measured to today's date (i.e., \code{Sys.Date()}). 

  \item If \code{to_date} precedes \code{from_date} (i.e., \code{from_date > to_date}) 
  computations are performed on swapped days and 
  the result is marked as negative (by a character \code{"-"}) in the output.

  \item If the lengths of \code{from_date} and \code{to_date} differ, 
  the shorter vector is recycled to the length of the longer one. 

}

By default, \code{diff_dates} provides output as (signed) character strings. 
For numeric outputs, use \code{as_character = FALSE}.
}
\examples{
y_100 <- Sys.Date() - (100 * 365.25) + -1:1
diff_dates(y_100)

# with "to_date" argument: 
y_050 <- Sys.Date() - (50 * 365.25) + -1:1 
diff_dates(y_100, y_050)
diff_dates(y_100, y_050, unit = "d") # days (with decimals)

# Time unit and output format:
ds_from <- as.Date("2010-01-01") + 0:2
ds_to   <- as.Date("2020-03-01")  # (2020 is leap year)
diff_dates(ds_from, ds_to, unit = "y", as_character = FALSE)  # years
diff_dates(ds_from, ds_to, unit = "m", as_character = FALSE)  # months
diff_dates(ds_from, ds_to, unit = "d", as_character = FALSE)  # days

# Robustness:
days_cur_year <- 365 + is_leap_year(Sys.Date())
diff_dates(Sys.time() - (1 * (60 * 60 * 24) * days_cur_year))  # for POSIXt times
diff_dates("10-08-11", "20-08-10")   # for strings
diff_dates(20200228, 20200301)       # for numbers (2020 is leap year)

# Recycling "to_date" to length of "from_date":
y_050_2 <- Sys.Date() - (50 * 365.25)
diff_dates(y_100, y_050_2)

# Note maxima and minima: 
diff_dates("0000-01-01", "9999-12-31")  # max. d + m + y
diff_dates("1000-06-01", "1000-06-01")  # min. d + m + y

# If from_date == to_date:
diff_dates("2000-01-01", "2000-01-01")

# If from_date > to_date:
diff_dates("2000-01-02", "2000-01-01")  # Note negation "-"
diff_dates("2000-02-01", "2000-01-01", as_character = TRUE)
diff_dates("2001-02-02", "2000-02-02", as_character = FALSE)

# Test random date samples:
f_d <- sample_date(size = 10)
t_d <- sample_date(size = 10)
diff_dates(f_d, t_d, as_character = TRUE)

# Using 'fame' data:
dob <- as.Date(fame$DOB, format = "\%B \%d, \%Y")
dod <- as.Date(fame$DOD, format = "\%B \%d, \%Y")
head(diff_dates(dob, dod))  # Note: Deceased people do not age further.
head(diff_dates(dob, dod, as_character = FALSE))  # numeric outputs

}
\seealso{
Time spans (\code{interval} \code{as.period}) in the \strong{lubridate} package.

Other date and time functions: 
\code{\link{change_time}()},
\code{\link{change_tz}()},
\code{\link{cur_date}()},
\code{\link{cur_time}()},
\code{\link{days_in_month}()},
\code{\link{diff_times}()},
\code{\link{diff_tz}()},
\code{\link{is_leap_year}()},
\code{\link{what_date}()},
\code{\link{what_month}()},
\code{\link{what_time}()},
\code{\link{what_wday}()},
\code{\link{what_week}()},
\code{\link{what_year}()}
}
\concept{date and time functions}
