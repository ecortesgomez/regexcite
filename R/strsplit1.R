#' strsplit1
#'
#' @param x Character vector separated by the split character
#' @param split Split character
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x <- c('eins,zwei,drei')
#' strsplit1(x, ',')
strsplit1 <- function(x, split){
  strsplit(x=x, split = split)[[1]]
}
