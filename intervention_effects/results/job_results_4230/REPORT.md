---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXgagebrth

## Data Summary

agecat      studyid                    country                        intXgagebrth                   sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS            MALAWI                         Full or late term_Birth               0        0       1
Birth       iLiNS_DYADM_LNS            MALAWI                         Full or late term_Birth               1        1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                         0      125     135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                         1       10     135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term_Birth                      0        8       9
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term_Birth                      1        1       9
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth               0     7095    7095
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth               1        0    7095
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                         0      471     472
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                         1        1     472
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth                      0     6313    6317
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth                      1        4    6317
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth               0      338     341
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth               1        3     341
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                         0       91      95
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                         1        4      95
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth                      0      179     181
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth                      1        2     181
Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_Birth               0        0       1
Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_Birth               1        1       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth               0    18186   19084
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth               1      898   19084
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                         0     5736    7548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                         1     1812    7548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth                      0     9278   10236
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth                      1      958   10236
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months            0      427     442
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months            1       15     442
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months                      0       40      45
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months                      1        5      45
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months                   0      183     196
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months                   1       13     196
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6 months            0       16      16
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6 months            1        0      16
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months                      0      506     555
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months                      1       49     555
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months                   0       39      44
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months                   1        5      44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months            0      977     990
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months            1       13     990
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months                      0      239     246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months                      1        7     246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months                   0      361     364
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months                   1        3     364
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months            0     7309    7394
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months            1       85    7394
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months                      0      489     507
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months                      1       18     507
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months                   0     6472    6599
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months                   1      127    6599
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months            0      347     380
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months            1       33     380
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months                      0       83     110
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months                      1       27     110
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months                   0      171     204
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months                   1       33     204
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months            0      649     676
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months            1       27     676
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months                      0       60      70
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months                      1       10      70
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months                   0      267     283
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months                   1       16     283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months            0    12646   13186
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months            1      540   13186
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months                      0     4248    4792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months                      1      544    4792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months                   0     6504    6932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months                   1      428    6932
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months           0       20      22
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months           1        2      22
24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_24 months                     0        1       2
24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_24 months                     1        1       2
24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_24 months                  0       10      11
24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_24 months                  1        1      11
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_24 months           0        2       3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_24 months           1        1       3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_24 months                  0        1       1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_24 months                  1        0       1
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months           0      391     401
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months           1       10     401
24 months   ki1119695-PROBIT           BELARUS                        Preterm_24 months                     0       25      27
24 months   ki1119695-PROBIT           BELARUS                        Preterm_24 months                     1        2      27
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months                  0      407     413
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months                  1        6     413
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months           0       16      26
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months           1       10      26
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_24 months                     0        3       3
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_24 months                     1        0       3
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months                  0        6      13
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months                  1        7      13
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months           0       37      44
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months           1        7      44
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_24 months                     0        4       5
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_24 months                     1        1       5
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months                  0       14      16
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months                  1        2      16
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_24 months           0        7       9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_24 months           1        2       9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months                     0       10      17
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months                     1        7      17
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_24 months                  0        5       7
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_24 months                  1        2       7


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Preterm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_Birth
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/239f8b97-7570-4724-8cc2-2b8df1d149f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/239f8b97-7570-4724-8cc2-2b8df1d149f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/239f8b97-7570-4724-8cc2-2b8df1d149f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/239f8b97-7570-4724-8cc2-2b8df1d149f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                0.0634921    0.0012314   0.1257527
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Other                NA                0.0833333    0.0063666   0.1603001
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                0.0493854    0.0426381   0.0561328
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Maternal             NA                0.0449258    0.0383691   0.0514825
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                0.2461916    0.2238874   0.2684959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Maternal             NA                0.2328925    0.2061859   0.2595990
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                0.1034082    0.0896286   0.1171878
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Maternal             NA                0.0835962    0.0707265   0.0964659
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                0.0398230    0.0143002   0.0653458
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    LNS                  NA                0.0277778    0.0058374   0.0497182
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                0.1923077    0.0391063   0.3455091
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              LNS                  NA                0.0000000    0.0000000   0.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                0.0808081    0.0269846   0.1346316
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           LNS                  NA                0.0515464    0.0074320   0.0956608
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                0.0926641    0.0580575   0.1272707
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Other                NA                0.0844595    0.0614792   0.1074397
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                0.1600000    0.0284659   0.2915341
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Other                NA                0.0526316   -0.0789588   0.1842220
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                0.0169492    0.0004723   0.0334260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Other                NA                0.0079365   -0.0030245   0.0188975
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Zinc                 NA                0.0139442    0.0036815   0.0242070
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                0.0634921    0.0031559   0.1238282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Other                NA                0.0327869   -0.0119926   0.0775663
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Zinc                 NA                0.0081967   -0.0078352   0.0242286
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                0.0134731    0.0059732   0.0209730
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Maternal             NA                0.0098668    0.0058720   0.0138616
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                0.0382775    0.0161886   0.0603664
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Maternal             NA                0.0335570    0.0080534   0.0590607
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                0.0238563    0.0108441   0.0368685
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Maternal             NA                0.0138340    0.0050303   0.0226377
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                0.1065089    0.0599379   0.1530798
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Other                NA                0.0710900    0.0363708   0.1058093
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                0.2923077    0.1812326   0.4033828
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Other                NA                0.1777778    0.0655609   0.2899947
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                0.1904762    0.1151830   0.2657694
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Other                NA                0.1313131    0.0646197   0.1980066
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                0.0398230    0.0143102   0.0653358
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Maternal             NA                0.0400000    0.0218812   0.0581188
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                0.1923077    0.0397243   0.3448911
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Maternal             NA                0.1136364    0.0191844   0.2080883
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                0.0808081    0.0270270   0.1345892
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Maternal             NA                0.0434783    0.0139600   0.0729966
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                0.0432873    0.0356577   0.0509169
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Maternal             NA                0.0387665    0.0321875   0.0453456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                0.1245580    0.1037162   0.1453997
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Maternal             NA                0.1010236    0.0771009   0.1249463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                0.0689655    0.0566597   0.0812713
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Maternal             NA                0.0544612    0.0417242   0.0671982
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                0.0227273   -0.0042380   0.0496926
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Maternal             NA                0.0260223    0.0005421   0.0515025
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                0.0131579   -0.0232782   0.0495940
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Maternal             NA                0.0162162   -0.0017696   0.0342021
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                0.3333333    0.0900497   0.5766170
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Other                NA                0.4545455    0.1544659   0.7546250
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Control              NA                0.8571429    0.5873331   1.1269527
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Other                NA                0.1666667   -0.1437087   0.4770421
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                0.1666667   -0.1349799   0.4683132
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Maternal             NA                0.1578947    0.0406170   0.2751724
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Control              NA                0.2500000   -0.1750807   0.6750807
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Maternal             NA                0.5555556    0.0767361   1.0343750


### Parameter: E(Y)


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 NA                   NA                0.0740741    0.0238558   0.1242923
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       NA                   NA                0.0470551    0.0423544   0.0517558
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 NA                   NA                0.2400636    0.2228442   0.2572830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              NA                   NA                0.0935912    0.0841293   0.1030532
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    NA                   NA                0.0339367    0.0170375   0.0508358
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              NA                   NA                0.1111111    0.0182521   0.2039702
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           NA                   NA                0.0663265    0.0313987   0.1012544
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              NA                   NA                0.0882883    0.0679925   0.1085841
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           NA                   NA                0.1136364    0.0167258   0.2105470
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    NA                   NA                0.0131313    0.0060366   0.0202260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              NA                   NA                0.0284553    0.0076354   0.0492751
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    NA                   NA                0.0114958    0.0072157   0.0157759
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              NA                   NA                0.0355030    0.0180273   0.0529787
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           NA                   NA                0.0192453    0.0107772   0.0277135
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    NA                   NA                0.0868421    0.0584912   0.1151930
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              NA                   NA                0.2454545    0.1646635   0.3262456
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           NA                   NA                0.1617647    0.1111094   0.2124200
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    NA                   NA                0.0399408    0.0251683   0.0547133
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              NA                   NA                0.1428571    0.0602912   0.2254231
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           NA                   NA                0.0565371    0.0295813   0.0834929
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    NA                   NA                0.0409525    0.0359344   0.0459707
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              NA                   NA                0.1135225    0.0977257   0.1293194
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           NA                   NA                0.0617426    0.0528780   0.0706073
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   NA                   NA                0.0249377    0.0055706   0.0443047
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          NA                   NA                0.0145278   -0.0071985   0.0362542
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   NA                   NA                0.3846154    0.1939092   0.5753215
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          NA                   NA                0.5384615    0.2564033   0.8205198
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   NA                   NA                0.1590909    0.0497680   0.2684138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             NA                   NA                0.4117647    0.0674341   0.7560953


### Parameter: RR


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Other                Control           1.3125000   0.3353475    5.1369284
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Maternal             Control           0.9096974   0.7449281    1.1109117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Maternal             Control           0.9459804   0.8173400    1.0948673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Maternal             Control           0.8084098   0.6594853    0.9909644
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    LNS                  Control           0.6975309   0.2522395    1.9289183
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              LNS                  Control           0.0000000   0.0000000    0.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           LNS                  Control           0.6378866   0.2156579    1.8867815
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Other                Control           0.9114583   0.5744545    1.4461656
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Other                Control           0.3289474   0.0238228    4.5421397
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Other                Control           0.4682540   0.0864953    2.5349566
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Zinc                 Control           0.8227092   0.2430562    2.7847479
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Other                Control           0.5163934   0.0978092    2.7263504
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Zinc                 Control           0.1290984   0.0146735    1.1358142
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Maternal             Control           0.7323357   0.3714768    1.4437390
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Maternal             Control           0.8766779   0.3372085    2.2791954
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Maternal             Control           0.5798884   0.2495025    1.3477644
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Other                Control           0.6674566   0.3465249    1.2856168
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Other                Control           0.6081871   0.2911125    1.2706138
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Other                Control           0.6893939   0.3622084    1.3121288
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Maternal             Control           1.0044444   0.4583236    2.2013018
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Maternal             Control           0.5909091   0.1872752    1.8644946
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Maternal             Control           0.5380435   0.2079326    1.3922336
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Maternal             Control           0.8955628   0.7011766    1.1438384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Maternal             Control           0.8110569   0.6069139    1.0838658
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Maternal             Control           0.7896871   0.5884365    1.0597674
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Maternal             Control           1.1449814   0.2468434    5.3109875
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Maternal             Control           1.2324324   0.0640686   23.7072278
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Other                Control           1.3636364   0.5096782    3.6483888
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Other                Control           0.1944444   0.0294142    1.2853869
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Maternal             Control           0.9473684   0.1339311    6.7012561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Maternal             Control           2.2222222   0.3302920   14.9512319


### Parameter: PAR


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                 0.0105820   -0.0449924    0.0661564
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                -0.0023303   -0.0072489    0.0025883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                -0.0061281   -0.0221580    0.0099019
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                -0.0098170   -0.0191911   -0.0004428
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                -0.0058864   -0.0223437    0.0105710
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                -0.0811966   -0.1517077   -0.0106855
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                -0.0144816   -0.0489836    0.0200205
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                -0.0043758   -0.0268522    0.0181006
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                -0.0463636   -0.1374022    0.0446749
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                -0.0038178   -0.0176881    0.0100524
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                -0.0350368   -0.0820399    0.0119664
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                -0.0019772   -0.0066143    0.0026598
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                -0.0027746   -0.0227559    0.0172068
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                -0.0046110   -0.0117676    0.0025457
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                -0.0196668   -0.0519698    0.0126363
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                -0.0468531   -0.1123052    0.0185989
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                -0.0287115   -0.0776933    0.0202704
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                 0.0001178   -0.0207127    0.0209483
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                -0.0494505   -0.1626047    0.0637036
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                -0.0242710   -0.0642129    0.0156710
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                -0.0023348   -0.0075442    0.0028746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                -0.0110354   -0.0259405    0.0038697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                -0.0072229   -0.0160704    0.0016247
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                 0.0022104   -0.0225819    0.0270026
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                 0.0013700   -0.0167366    0.0194765
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                 0.0512821   -0.1138335    0.2163976
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Control              NA                -0.3186813   -0.5906318   -0.0467309
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                -0.0075758   -0.2870869    0.2719354
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Control              NA                 0.1617647   -0.1976690    0.5211984


### Parameter: PAF


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                 0.1428571   -0.9994682    0.6325554
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                -0.0495228   -0.1596534    0.0501489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                -0.0255268   -0.0947470    0.0393166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                -0.1048919   -0.2095310   -0.0093054
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                -0.1734513   -0.7632404    0.2190583
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                -0.7307692   -1.2281095   -0.3444412
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                -0.2183372   -0.8510206    0.1980934
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                -0.0495627   -0.3335124    0.1739246
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                -0.4080000   -1.6309673    0.2464885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                -0.2907432   -1.9001985    0.4255504
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                -1.2312925   -3.2207911   -0.1795576
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                -0.1719972   -0.6227085    0.1535279
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                -0.0781499   -0.8393452    0.3680320
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                -0.2395884   -0.6380730    0.0619591
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                -0.2264658   -0.6533409    0.0901946
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                -0.1908832   -0.4876624    0.0466904
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                -0.1774892   -0.5191712    0.0873440
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                 0.0029499   -0.6822329    0.4090539
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                -0.3461538   -1.3993872    0.2447529
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                -0.4292929   -1.3024208    0.1127260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                -0.0570124   -0.1915169    0.0623085
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                -0.0972091   -0.2386662    0.0280935
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                -0.1169836   -0.2716503    0.0188716
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                 0.0886364   -1.6640669    0.6882272
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                 0.0942982   -2.9987503    0.7948620
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                 0.1333333   -0.4229543    0.4721467
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months          Control              NA                -0.5918367   -1.4995868   -0.0137452
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                -0.0476190   -4.6036123    0.8041432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months             Control              NA                 0.3928571   -1.4430474    0.8491137
