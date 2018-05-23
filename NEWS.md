# hpar 1.22

## Changes in version 1.22.2

- Rename 16.1 objects <2018-05-23 Wed>

## Changes in version 1.23.1

- Update to HPA version 18

## Changes in version 1.22.0

- New Bioconductor release

# hpar 1.21

## Changes in version 1.21.1

- use html_document (rather that deprecated html_document2)
  <2018-01-19 Fri>

# hpar 1.19

## Changes in version 1.19.1

- Re-generate data sets from scripts/getHpaData.R, as discrepancies
   with the data downloaded form the hpa site were documented by
   Martin Bush <2017-07-19 Wed>

## Changes in version 1.19.0

- new Bioconductor devel

## Changes in version 1.18.0

- new Bioconductor release

## Changes in version 1.17.2

- Update to HPA version 16.1 (2017.01.31) <2017-02-14 Tue>

## Changes in version 1.17.1

- Using travis and codecov <2016-12-22 Thu>
- Migrate vignette to BiocStyle's html2 <2016-12-22 Thu>

## Changes in version 1.17.0

- Bioconductor devel 3.5

## Changes in version 1.16.0

- Bioconductor release 3.4

## Changes in version 1.15.3

- Updating to HPA version 15, with new datasets <2016-09-14 Wed>

## Changes in version 1.15.2

- Version bump to trigger package rebuilding now that purl()'ing issue
  has been correctly identified. knitr does not create purl()'ed
  (Stangle equivalent) .R files if _R_CHECK_TIMINGS_ is set, which the
  build system was setting. Now it's not set, so these .R files are
  now created. See https://github.com/yihui/knitr/issues/1212 for
  more. r117512 | d.tenenbaum | 2016-05-15 21:14:22 +0100 (Sun, 15 May
  2016) | 6 lines

## Changes in version 1.15.1

- Bump version of all packages that use knitr for vignettes. This is
  because of an issue (now fixed) in knitr which failed to create
  purl()'ed R files from vignette sources and include them in the
  package. This version bump will cause these packages to propagate
  with those R files included. r117081 | d.tenenbaum | 2016-05-03
  22:30:44 +0100 (Tue, 03 May 2016) | 2 lines

## Changes in version 1.15.0

- Bioc version 3.3

## Changes in version 1.13.0

- Bioc version 3.1

## Changes in version 1.11.1

- unit tests <2015-06-30 Tue>

## Changes in version 1.11.0

- Bio version 3.2 (devel)

## Changes in version 1.10.0

- Bio version 3.1 (release)

## Changes in version 1.9.1

- Updated to HPA version 13 <2014-11-15 Sat>
- Use BiocStyle for vignette <2014-11-15 Sat>

## Changes in version 1.3.1

- Updated to HPA version 11 <2013-04-11 Thu>

## Changes in version 1.3.0

- Bioc 2.13 devel version bump

## Changes in version 1.2.0

- Bioc 2.12 stable version bump

## Changes in version 1.1.2

- Vignette update for knitr 1.0 compatibility,
   thanks Dan! <2013-01-15 Tue>

## Changes in version 1.1.1

- fixing vignette <2012-10-02 Tue>

## Changes in version 1.1.0

- version bump for new devel <2012-10-01 Mon>

# hpar 0.99

## Changes in version 0.99.1

- Added collate field <2012-09-14 Fri>
- Updated to HPA version 10 <2012-09-15 Sat>
- Updated installation part in section to use
   biocLite <2012-09-15 Sat>

## Changes in version 0.99.0

- Added vignette <2012-09-06 Thu>

## Changes in version 0.1.0

- Initial commit <2012-09-06 Thu>
