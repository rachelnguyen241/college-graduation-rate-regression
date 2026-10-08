*==============================================================
* Rachel Nguyen

* College Dataset - 25 four-year, degree-granting institutions
*
* Source: National Center for Education Statistics, College Navigator
*         https://nces.ed.gov/collegenavigator/
* Data year: Published in-state tuition & fees are for the 2024-25
*            academic year; undergraduate enrollment is as of fall
*            2024; six-year graduation rate is for the most recent
*            entering cohort reported in the IPEDS Graduation Rate
*            Survey as of this data pull.
* Date accessed: September 16, 2026
*
* Variables:
*   institution  - name of the institution
*   tuition      - published in-state tuition & fees, 2024-25 (USD)
*   enrollment   - undergraduate enrollment, fall 2024 (headcount)
*   gradrate     - six-year graduation rate, most recent cohort (%)
*   private      - =1 if private institution, =0 if public
*==============================================================

clear
input str50 institution tuition enrollment gradrate private

"Baylor University"                              58100 14915 80 1
"University of Texas at Austin"                  11687 43165 89 0
"Texas A&M University"                            12928 60710 61 0
"Texas Christian University"                     63590 11049 86 1
"Southern Methodist University"                   67040  7115 84 1
"University of Houston"                          11888 39257 65 0
"Rice University"                                65475  4789 95 1
"Harvard University"                             64796  7038 98 1
"Stanford University"                            68544  7904 92 1
"Duke University"                                73172  6523 97 1
"Vanderbilt University"                          71226  7221 94 1
"University of Notre Dame"                       67607  8880 95 1
"University of Michigan-Ann Arbor"               19497 34454 93 0
"University of California-Los Angeles"           14824 33471 93 0
"University of Virginia"                         23897 17901 95 0
"University of North Carolina at Chapel Hill"     9096 21075 91 0
"Ohio State University"                          13641 46815 88 0
"Yale University"                                69900  6814 96 1
"Princeton University"                           65210  5813 98 1
"University of Florida"                           6381 36573 91 0
"Pennsylvania State University"                  21098 42619 85 0
"Georgia Institute of Technology"                12008 20592 92 0
"Emory University"                               68056  7407 92 1
"Indiana University Bloomington"                 12144 38093 80 0
"Boston University"                              71372 18805 89 1

end

* --- Variable labels (including units) ---
label variable institution "Institution name"
label variable tuition     "Published in-state tuition and fees, 2024-25 academic year (USD)"
label variable enrollment  "Undergraduate enrollment, fall 2024 (headcount)"
label variable gradrate    "Six-year graduation rate, most recent cohort (percent)"
label variable private     "=1 if private institution, =0 if public"

* --- Missing figures ---
* No figures were missing for any of the 25 institutions; every cell
* above reflects a value located on NCES College Navigator / the
* underlying IPEDS data as of the access date noted above. Had any
* figure been unavailable, it would have been coded as . rather than
* estimated, and listed here.

describe
summarize tuition enrollment gradrate private
