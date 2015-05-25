#' medd
#'
#' converts the total dosages of various opioid medications and routes
#' into a Morphine Equivalent Daily Dose (MEDD)
#' @param x data frame entanyl_iv IV fentaNYL total
#'
#' @keywords medd
#' @return a data frame with the original columns, new morphine equivalent columns
#' and the total morphine equivalent for each row
#' @export
#' @examples
#' library(dplyr)
#' data <- data.frame(
#'   names=c("identity", "john", "jane", "jane"),
#'   pod=c(1,1,1,2),
#'   hydrocodone_po=c(1,5,1,1),
#'   morphine_iv=c(1,0,1,1),
#'   morphine_po=c(1,0,1,1),
#'   nalbuphine_iv=c(1,0,10,10),
#'   hydromorphone_iv = c(1,1,2,2),
#'   fentanyl_iv = c(1,2,2,0),
#'   fentanyl_td = c(1,1,1,1),
#'   hydromorphone_po = c(1,NA, 2, 2),
#'   methadone_iv = c(1,1,0,0),
#'   oxycodone_po = c(1,NA, 1, 1),
#'   oxymorphone_po = c(1,2,0,0),
#'   sufentanil_iv = c(1,2,0,0),
#'   tramadol_iv = c(1,1,NA,NA)
#'   )
#'
#' meq <- meq_po
#' medd(data)



medd<- function(x) {
    # load the morphine equivalents table
    meq <- hash::hash(meq_po$med_route, meq_po$meq_po)

    results <-
        x %>%
        rowwise() %>%
        mutate(
               me_fentanyl_iv =
                   ifelse("fentanyl_iv" %in% names(x), prod(fentanyl_iv, meq$fentanyl_iv, na.rm = TRUE), 0),
               me_fentanyl_td =
                   ifelse("fentanyl_td" %in% names(x), prod(fentanyl_td, meq$fentanyl_td, na.rm = TRUE), 0),
               me_hydrocodone_po =
                   ifelse("hydrocodone_po" %in% names(x), prod(hydrocodone_po, meq$hydrocodone_po, na.rm = TRUE), 0),
               me_hydromorphone_iv =
                   ifelse("hydromorphone_iv" %in% names(x), prod(hydromorphone_iv, meq$hydromorphone_iv, na.rm = TRUE), 0),
               me_hydromorphone_po =
                   ifelse("hydromorphone_po" %in% names(x), prod(hydromorphone_po, meq$hydromorphone_po, na.rm = TRUE), 0),
               me_methadone_iv =
                   ifelse("methadone_iv" %in% names(x), prod(methadone_iv, meq$methadone_iv, na.rm = TRUE), 0),
               me_morphine_iv =
                   ifelse("morphine_iv" %in% names(x), prod(morphine_iv, meq$morphine_iv, na.rm = TRUE), 0),
               me_morphine_po =
                   ifelse("morphine_po" %in% names(x), prod(morphine_po, meq$morphine_po, na.rm = TRUE), 0),
               me_nalbuphine_iv =
                   ifelse("nalbuphine_iv" %in% names(x), prod(nalbuphine_iv, meq$nalbuphine_iv, na.rm = TRUE), 0),
               me_oxycodone_po =
                   ifelse("oxycodone_po" %in% names(x), prod(oxycodone_po, meq$oxycodone_po, na.rm = TRUE), 0),
               me_sufentanil_iv =
                   ifelse("sufentanil_iv" %in% names(x), prod(sufentanil_iv, meq$sufentanil_iv, na.rm = TRUE), 0),
               me_tramadol_iv =
                   ifelse("tramadol_iv" %in% names(x), prod(tramadol_iv, meq$tramadol_iv, na.rm = TRUE), 0)
               ) %>%
        # revert back to data frame for rowSums to work correctly
        data.frame() %>%
        mutate(me_total = rowSums(select(., starts_with("me_"))))

    results
}
