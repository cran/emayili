#' Request read or delivery receipts
#'
#' Request the recipient to acknowledge that they have read the message. Inserts
#' MDN (Message Disposition Notification) header entries.
#'
#' @name receipt
#'
#' @param msg A message object.
#' @param addr Single address (optional). If `address` is not specified then
#'   will use sender address.
#' @return A message object.
#' @export
request_receipt_read <- function(msg, addr = NULL) {
  if (is.null(addr)) addr <- from(msg)
  if (is.null(addr)) stop("Either specify receipt address or call from() first.")

  msg <- header_set(msg, "Disposition-Notification-To", as.address(addr), append = FALSE)
  msg <- header_set(msg, "X-Confirm-Reading-To", as.address(addr), append = FALSE)

  if (get_option_invisible()) invisible(msg) else msg # nocov
}

#' @rdname receipt
#'
#' @export
request_receipt_delivery <- function(msg, addr = NULL) {
  if (is.null(addr)) addr <- from(msg)
  if (is.null(addr)) stop("Either specify receipt address or call from() first.")

  msg <- header_set(msg, "Return-Receipt-To", as.address(addr), append = FALSE)

  if (get_option_invisible()) invisible(msg) else msg # nocov
}
