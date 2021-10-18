#' Run Validation on environment
#'
#' @import rstudioapi
#' @import withr
#'
#' @export
run_val <- function() {
  f_ <- system.file("validation/val.R", package = "SystemValidation")
  r_path <- paste0(c(R.home(), "bin"), collapse = .Platform$file.sep)

  val_dir <- rstudioapi::selectDirectory(
    caption = "Select File for Validation Information"
  )

  withr::with_dir(new = val_dir,
                  code = {
                    file.copy(
                      from = list.files(system.file("validation/", package = "SystemValidation"),
                                        recursive = TRUE,
                                        full.names = TRUE,
                                        include.dirs = TRUE),
                      to = "./",
                      recursive = TRUE
                    )

                    rstudioapi::terminalExecute(paste0(r_path, .Platform$file.sep, "R", " -e ", "'source(\"", f_, "\", echo = TRUE)'"))
                  })


}
