#' M4 Competition data
#'
#' Featuring 100000 time series from different domains
#'
#' @rdname M4
#' @docType data
#'
#' @usage data(M4)
#'
#' @format M4 is a list of 100000 series.
#' Each series within \code{M4} is an object with the following structure:
#' \describe{
#'   \item{st}{Series number and period. For example "Y1" denotes first yearly series,
#'   "Q20" denotes 20th quarterly series and so on.}
#'   \item{n}{The number of observations in the time series}
#'   \item{h}{The number of required forecasts}
#'   \item{period}{Interval of the time series.
#'             Possible values are "Yearly", "Quarterly", "Monthly", "Weekly",
#'              "Daily" & "Hourly".}
#'   \item{type}{The type of series.
#'             Possible values are "Demographic", "Finance", "Industry", "Macro",
#'             "Micro" & "Other".}
#'   \item{x}{A time series of length \code{n} (the historical data)}
#' }
#'
#'@note Series start date is not provided in the competition; in this package it is assumed to be the first period in the year (e.g., January for monthly data).
#' @keywords datasets
#'
#' @references
#' (\href{https://www.m4.unic.ac.cy/resources/makridakis-competitions/}{M4 Competition Web})
#'
#' @source \href{https://www.m4.unic.ac.cy/the-dataset/}{M4 Competition Dataset}
#'
#' @examples
#' data(M4)
#' names(M4[[1]])
#' #extract yearly series
#' yearly_M4 <- Filter(function(l) l$period == "Yearly", M4)
"M4"
