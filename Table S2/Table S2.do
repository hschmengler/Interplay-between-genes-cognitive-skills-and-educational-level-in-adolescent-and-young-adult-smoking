*** /// S2 Table - Compare participants with complete and incomplete education \\\ ***

* generate variables to compare those with available education measure to those without

gen T3_educomplete = .
replace T3_educomplete = 1 if inlist(T3_ladder_4cat, 1, 2, 3, 4) & T3_completed == 1 
replace T3_educomplete = 0 if T3_ladder_4cat == . & T3_completed == 1

gen T4_educomplete = .
replace T4_educomplete = 1 if inlist(T4_ladder_4cat, 1, 2, 3, 4) & T4_completed == 1 
replace T4_educomplete = 0 if T4_ladder_4cat == . & T4_completed == 1

gen T5_educomplete = .
replace T5_educomplete = 1 if inlist(T5_ladder_4cat, 1, 2, 3, 4) & T5_completed == 1 
replace T5_educomplete = 0 if T5_ladder_4cat == . & T5_completed == 1

gen T6_educomplete = .
replace T6_educomplete = 1 if inlist(T6_ladder_4cat, 1, 2, 3, 4) & T6_completed == 1 
replace T6_educomplete = 0 if T6_ladder_4cat == . & T6_completed == 1

label define educomplete 1 "complete" 0 "unclassifiable/missing"
label values T3_educomplete educomplete 
label values T4_educomplete educomplete 
label values T5_educomplete educomplete 
label values T6_educomplete educomplete 

tab1 T3_educomplete T4_educomplete T5_educomplete T6_educomplete


* Wave 3 * 
tab T3_completed
tab T3_educomplete T3_completed, col

ttest Zsmok_PRS1, by(T3_educomplete)
by T3_educomplete, sort: sum Zsmok_PRS1, format
ttest Zedu_PRS1, by(T3_educomplete)
by T3_educomplete, sort: sum Zedu_PRS1, format
ttest g1wiscdq, by(T3_educomplete)
by T3_educomplete, sort: sum g1wiscdq, format
ttest p1eaefc, by(T3_educomplete)
by T3_educomplete, sort: sum p1eaefc, format
tab T3_educomplete g1sex, chi2 row
ttest g1ageyrc, by(T3_educomplete)
by T3_educomplete, sort: sum g1ageyrc, format
ttest mean_edu_par, by(T3_educomplete)
by T3_educomplete, sort: sum mean_edu_par, format
ttest T1_smok_par_3cat, by(T3_educomplete)
by T3_educomplete, sort: sum T1_smok_par_3cat, format
tab T3_educomplete cohort, chi2 row
ttest smoking3_MP, by(T3_educomplete)
by T3_educomplete, sort: sum smoking3_MP, format


* Wave 4 * 
tab T4_completed
tab T4_educomplete T4_completed, col

ttest Zsmok_PRS1, by(T4_educomplete)
by T4_educomplete, sort: sum Zsmok_PRS1, format
ttest Zedu_PRS1, by(T4_educomplete)
by T4_educomplete, sort: sum Zedu_PRS1, format
ttest g1wiscdq, by(T4_educomplete)
by T4_educomplete, sort: sum g1wiscdq, format
ttest p1eaefc, by(T4_educomplete)
by T4_educomplete, sort: sum p1eaefc, format
tab T4_educomplete g1sex, chi2 row
ttest g1ageyrc, by(T4_educomplete)
by T4_educomplete, sort: sum g1ageyrc, format
ttest mean_edu_par, by(T4_educomplete)
by T4_educomplete, sort: sum mean_edu_par, format
ttest T1_smok_par_3cat, by(T4_educomplete)
by T4_educomplete, sort: sum T1_smok_par_3cat, format
tab T4_educomplete cohort, chi2 row
ttest smoking4_MP, by(T4_educomplete)
by T4_educomplete, sort: sum smoking4_MP, format


* Wave 5 * 
tab T5_completed
tab T5_educomplete T5_completed, col

ttest Zsmok_PRS1, by(T5_educomplete)
by T5_educomplete, sort: sum Zsmok_PRS1, format
ttest Zedu_PRS1, by(T5_educomplete)
by T5_educomplete, sort: sum Zedu_PRS1, format
ttest g1wiscdq, by(T5_educomplete)
by T5_educomplete, sort: sum g1wiscdq, format
ttest p1eaefc, by(T5_educomplete)
by T5_educomplete, sort: sum p1eaefc, format
tab T5_educomplete g1sex, chi2 row
ttest g1ageyrc, by(T5_educomplete)
by T5_educomplete, sort: sum g1ageyrc, format
ttest mean_edu_par, by(T5_educomplete)
by T5_educomplete, sort: sum mean_edu_par, format
ttest T1_smok_par_3cat, by(T5_educomplete)
by T5_educomplete, sort: sum T1_smok_par_3cat, format
tab T5_educomplete cohort, chi2 row
ttest smoking5_MP, by(T5_educomplete)
by T5_educomplete, sort: sum smoking5_MP, format


* Wave 6 * 
tab T6_completed
tab T6_educomplete T6_completed, col

ttest Zsmok_PRS1, by(T6_educomplete)
by T6_educomplete, sort: sum Zsmok_PRS1, format
ttest Zedu_PRS1, by(T6_educomplete)
by T6_educomplete, sort: sum Zedu_PRS1, format
ttest g1wiscdq, by(T6_educomplete)
by T6_educomplete, sort: sum g1wiscdq, format
ttest p1eaefc, by(T6_educomplete)
by T6_educomplete, sort: sum p1eaefc, format
tab T6_educomplete g1sex, chi2 row
ttest g1ageyrc, by(T6_educomplete)
by T6_educomplete, sort: sum g1ageyrc, format
ttest mean_edu_par, by(T6_educomplete)
by T6_educomplete, sort: sum mean_edu_par, format
ttest T1_smok_par_3cat, by(T6_educomplete)
by T6_educomplete, sort: sum T1_smok_par_3cat, format
tab T6_educomplete cohort, chi2 row
ttest smoking6_MP, by(T6_educomplete)
by T6_educomplete, sort: sum smoking6_MP, format
