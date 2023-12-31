## Package environment ---------------------------------------------
.hparEnv <- new.env(parent = emptyenv(), hash = TRUE)

## these rda files have been generated by inst/scripts/getHpaData.R
load(dir(system.file(package = "hpar", dir = "extdata"),
         full.name = TRUE,
         pattern = "hpaRelease.rda"))

assign("hpaVersion", hpaRelease["version"], envir = .hparEnv)
assign("hpaDate", hpaRelease["date"], envir = .hparEnv)
assign("hpaEnsembl", hpaRelease["ensembl"], envir = .hparEnv)

## Internal functions ----------------------------------------------

## Internal function that extracts the version, date and ensembl
## version from the Human Protein Atlas webpage.
getHpaRelease <- function() {
    rel <- readLines("http://www.proteinatlas.org/about/releases", warn = FALSE)
    suppressWarnings(reldate <- grep("Release date:", rel, value = TRUE)[1])
    suppressWarnings(relver <- grep("Protein Atlas version", rel, value = TRUE)[1])
    reldate <- sub("</b.+$", "", sub("^.+<b>", "", reldate))
    relver <- sub("<.+$", "", sub("^.+version ", "", relver))
    hpa <- c("version" = relver, "date" = reldate)
    ens <- grep("Ensembl version", rel, value = TRUE, useBytes=TRUE)[1]
    ens <- sub("</b>", "", sub("^.+<b>", "", ens))
    ens <- sub("\t", "", ens)
    ans <- c(hpa, ensembl = ens)
    return(ans)
}

## Internal function that return TRUE if the version extraced from the
## Human Protein Atlas webpage is different for the one in hpar. FALSE
## otherwise.
newHpaVersion <- function() {
    hpa_version <- getHpaRelease()['version']
    hpar_version <- getHpaVersion()
    !identical(hpa_version, hpar_version)
}


## Exported functions ----------------------------------------------

##' @title Obtain HPA data release information
##'
##' @description
##'
##' Obtain the data and release information of the Human Protein Atlas
##' (HPA) sets distributed by `hpar`. See
##' http://www.proteinatlas.org/about/releases for the HPA release
##' history.
##'
##' @return A `character()` with the release information.
##'
##' @aliases getHpaVersion getHpaEnsembl allHparData
##'
##' @author Laurent Gatto
##'
##' @export
##'
##' @examples
##'
##' allHparData()
##'
##' getHpaVersion()
##' getHpaDate()
##' getHpaEnsembl()
getHpaDate <- function()
    get("hpaDate", envir = .hparEnv)

##' @export
getHpaEnsembl <- function()
    get("hpaEnsembl", envir = .hparEnv)

##' @export
getHpaVersion <- function()
    get("hpaVersion", envir = .hparEnv)

##' @export
allHparData <- function() {
   fl <- system.file("extdata", "metadata.csv", package = "hpar")
   read.csv(fl, stringsAsFactors = FALSE)
}

##' @title Browser the HPA page for a gene.
##'
##' @param id A `character()` with one or multipel Ensembl gene
##'     identifiers.
##'
##' @return Returns the URL(s) for the provided gene identifiers. If
##'     interactive, opens the URL(s).
##'
##' @importFrom utils browseURL
##'
##' @export
##'
##' @author Laurent Gatto
##'
##' @examples
##'
##' browseHPA("ENSG00000163435")
browseHPA <- function(id) {
    if (missing(id)) stop("Missing gene identifier.")
    urls <- paste0("http://www.proteinatlas.org/", id)
    if (interactive()) {
        browseURL(urls[1])
        if (length(urls) > 1) {
            ## to avoid a browser error complaining about
            ## running but not responding
            Sys.sleep(0.5)
            tmp <- sapply(urls[-1], browseURL)
        }
    }
    urls
}
