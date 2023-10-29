#' Splitting a string
#'
#' @param string Character vector separated by the split character; accept one vector of size 1
#' @param pattern Character separator
#' @inheritParams stringr::str_split
#'
#' @return A character vector
#' @export
#'
#' @return character vector
#'
#' @examples
#' x <- c('alpha-beta-gamma-delta')
#' str_split_one(x, '-')
#' str_split_one(x, '-', n=2)
str_split_one <- function(string, pattern = stringr::fixed("."), n=Inf){
  stopifnot(is.character(string), length(string) <= 1)
  if(length(string) == 1){
    stringr::str_split(string = string, pattern = pattern, n=n)[[1]]
  }else{
    character()
  }
}
