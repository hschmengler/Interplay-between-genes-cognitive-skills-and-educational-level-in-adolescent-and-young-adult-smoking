*** /// Table S1 \\\ ***


sum g1ageyrc g2ageyrc g3ageyrc g4ageyrc g5ageyrc g6ageyrc
gen byte T1_completed = g1ageyrc != . 
gen byte T2_completed = g2ageyrc != . 
gen byte T3_completed = g3ageyrc != . 
gen byte T4_completed = g4ageyrc != . 
gen byte T5_completed = g5ageyrc != . 
gen byte T6_completed = g6ageyrc != . 
tab1 T1_completed T2_completed T3_completed T4_completed T5_completed T6_completed

tab T6_completed


format g1ageyrc mean_edu_par T1_smok_par_3cat Zsmok_PRS1 Zedu_PRS1 g1wiscdq T3_ladder_4cat T4_ladder_4cat T5_ladder_4cat T6_ladder_4cat smoking3_MP smoking4_MP smoking5_MP smoking6_MP p1eaefc %9.2f


ttest Zsmok_PRS1, by(T6_completed)
by T6_completed, sort: sum Zsmok_PRS1, format

ttest Zedu_PRS1, by(T6_completed)
by T6_completed, sort: sum Zedu_PRS1, format

ttest g1wiscdq, by(T6_completed)
by T6_completed, sort: sum g1wiscdq, format

ttest p1eaefc, by(T6_completed)
by T6_completed, sort: sum p1eaefc, format

tab2 g1sex T6_completed, col chi2

ttest g1ageyrc, by(T6_completed)
by T6_completed, sort: sum g1ageyrc, format

ttest mean_edu_par, by(T6_completed)
by T6_completed, sort: sum mean_edu_par, format

ttest T1_smok_par_3cat, by(T6_completed)
by T6_completed, sort: sum T1_smok_par_3cat, format

tab2 cohort T6_completed, col chi2


ttest T3_ladder_4cat, by(T6_completed)
by T6_completed, sort: sum T3_ladder_4cat, format

ttest T4_ladder_4cat, by(T6_completed)
by T6_completed, sort: sum T4_ladder_4cat, format

ttest T5_ladder_4cat, by(T6_completed)
by T6_completed, sort: sum T5_ladder_4cat, format



ttest smoking3_MP, by(T6_completed)
by T6_completed, sort: sum smoking3_MP, format

ttest smoking4_MP, by(T6_completed)
by T6_completed, sort: sum smoking4_MP, format

ttest smoking5_MP, by(T6_completed)
by T6_completed, sort: sum smoking5_MP, format