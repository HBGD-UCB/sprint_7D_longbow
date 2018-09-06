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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        intXgagebrth                   stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS            MALAWI                         Full or late term_Birth              0        0       1
Birth       iLiNS_DYADM_LNS            MALAWI                         Full or late term_Birth              1        1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                        0       99     135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                        1       36     135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term_Birth                     0        7       9
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term_Birth                     1        2       9
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth              0     7090    7095
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth              1        5    7095
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                        0      458     472
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                        1       14     472
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth                     0     6303    6317
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth                     1       14    6317
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth              0      330     341
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth              1       11     341
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                        0       82      95
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                        1       13      95
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth                     0      170     181
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth                     1       11     181
Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_Birth              0        0       1
Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_Birth              1        1       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth              0    14864   19084
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth              1     4220   19084
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                        0     3614    7548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                        1     3934    7548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth                     0     6572   10236
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth                     1     3664   10236
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months           0      359     442
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months           1       83     442
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months                     0       25      45
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months                     1       20      45
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months                  0      144     196
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months                  1       52     196
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6 months           0       15      16
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6 months           1        1      16
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months                     0      394     555
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months                     1      161     555
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months                  0       34      44
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months                  1       10      44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months           0      894     990
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months           1       96     990
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months                     0      212     246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months                     1       34     246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months                  0      320     364
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months                  1       44     364
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months           0     6982    7394
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months           1      412    7394
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months                     0      446     507
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months                     1       61     507
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months                  0     6148    6599
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months                  1      451    6599
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months           0      250     380
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months           1      130     380
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months                     0       47     110
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months                     1       63     110
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months                  0      101     204
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months                  1      103     204
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months           0      553     676
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months           1      123     676
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months                     0       41      70
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months                     1       29      70
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months                  0      202     283
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months                  1       81     283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months           0    10378   13186
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months           1     2808   13186
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months                     0     3092    4792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months                     1     1700    4792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months                  0     5002    6932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months                  1     1930    6932
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months          0       13      22
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months          1        9      22
24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_24 months                    0        0       2
24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_24 months                    1        2       2
24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_24 months                 0        7      11
24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_24 months                 1        4      11
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_24 months          0        2       3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_24 months          1        1       3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_24 months                 0        1       1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_24 months                 1        0       1
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months          0      349     401
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months          1       52     401
24 months   ki1119695-PROBIT           BELARUS                        Preterm_24 months                    0       23      27
24 months   ki1119695-PROBIT           BELARUS                        Preterm_24 months                    1        4      27
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months                 0      369     413
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months                 1       44     413
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months          0        7      26
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months          1       19      26
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_24 months                    0        2       3
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_24 months                    1        1       3
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months                 0        3      13
24 months   ki1135781-COHORTS          GUATEMALA                      Early term_24 months                 1       10      13
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months          0       26      44
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months          1       18      44
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_24 months                    0        3       5
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_24 months                    1        2       5
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months                 0        9      16
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months                 1        7      16
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_24 months          0        4       9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_24 months          1        5       9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months                    0        2      17
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_24 months                    1       15      17
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_24 months                 0        2       7
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_24 months                 1        5       7


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
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_Birth
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_24 months
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
```




# Results Detail

## Results Plots
![](/tmp/1b8703e8-6c30-4f4f-9748-95faacac8f2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b8703e8-6c30-4f4f-9748-95faacac8f2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b8703e8-6c30-4f4f-9748-95faacac8f2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b8703e8-6c30-4f4f-9748-95faacac8f2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                0.2539683    0.1168901   0.3910464
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Other                NA                0.2777778    0.1478153   0.4077402
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Control              NA                0.0012516    0.0001623   0.0023409
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Maternal             NA                0.0002565   -0.0013982   0.0019111
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Control              NA                0.0456853    0.0001878   0.0911828
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Maternal             NA                0.0181818   -0.0035308   0.0398944
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Control              NA                0.0023627    0.0009243   0.0038010
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Maternal             NA                0.0020471    0.0003969   0.0036973
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Control              NA                0.0142857   -0.0053999   0.0339713
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Other                NA                0.0447761    0.0161433   0.0734089
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Control              NA                0.0925926    0.0148716   0.1703136
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Other                NA                0.1951220    0.0731747   0.3170692
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Control              NA                0.0520833    0.0075126   0.0966541
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Other                NA                0.0705882    0.0159858   0.1251907
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                0.2291484    0.2149743   0.2433225
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Maternal             NA                0.2137986    0.2009900   0.2266073
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                0.5371007    0.5116062   0.5625952
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Maternal             NA                0.5025877    0.4702814   0.5348940
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                0.3760651    0.3534339   0.3986962
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Maternal             NA                0.3395110    0.3180192   0.3610029
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                0.2035398    0.1509874   0.2560922
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    LNS                  NA                0.1712963    0.1209941   0.2215985
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                0.3846154    0.1954995   0.5737313
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              LNS                  NA                0.5263158    0.2992672   0.7533644
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                0.2626263    0.1757194   0.3495331
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           LNS                  NA                0.2680412    0.1796688   0.3564137
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                0.2857143    0.2399219   0.3315067
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Other                NA                0.2939189    0.2472513   0.3405865
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                0.3200000    0.2200418   0.4199582
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Other                NA                0.1052632   -0.0260581   0.2365844
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                0.0974576    0.0596000   0.1353152
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Other                NA                0.0912698    0.0556946   0.1268451
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Zinc                 NA                0.0996016    0.0733916   0.1258115
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                0.1428571    0.0562727   0.2294416
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Other                NA                0.1475410    0.0583624   0.2367196
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Zinc                 NA                0.1311475    0.0711262   0.1911689
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Control              NA                0.1122449    0.0496610   0.1748288
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Other                NA                0.1447368    0.0655272   0.2239465
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Zinc                 NA                0.1157895    0.0702298   0.1613492
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                0.0598802    0.0344521   0.0853084
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Maternal             NA                0.0522940    0.0392148   0.0653733
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                0.1674641    0.1004473   0.2344810
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Maternal             NA                0.0872483    0.0492394   0.1252572
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                0.0788661    0.0519225   0.1058098
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Maternal             NA                0.0559947    0.0335905   0.0783989
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                0.3727811    0.2997826   0.4457795
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Other                NA                0.3175355    0.2546407   0.3804304
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                0.5846154    0.4642685   0.7049623
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Other                NA                0.5555556    0.4097086   0.7014025
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                0.5428571    0.4473383   0.6383760
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Other                NA                0.4646465    0.3661594   0.5631335
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                0.2035398    0.1510080   0.2560716
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Maternal             NA                0.1711111    0.1362894   0.2059329
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                0.3846154    0.1962624   0.5729684
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Maternal             NA                0.4318182    0.2844036   0.5792327
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                0.2626263    0.1757878   0.3494647
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Maternal             NA                0.2989130    0.2326508   0.3651753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                0.2202008    0.2029582   0.2374433
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Maternal             NA                0.2061674    0.1904034   0.2219314
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                0.3650295    0.3347765   0.3952824
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Maternal             NA                0.3431242    0.3042163   0.3820320
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                0.2908046    0.2643129   0.3172963
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Maternal             NA                0.2659328    0.2413875   0.2904781
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   Control              NA                0.6666667    0.2805950   1.0527383
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   LNS                  NA                0.3125000    0.0800384   0.5449616
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                0.1439394    0.0173320   0.2705468
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Maternal             NA                0.1226766    0.0597173   0.1856358
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                0.1140351    0.0352328   0.1928374
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Maternal             NA                0.0972973    0.0258107   0.1687839
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                0.8000000    0.5935670   1.0064330
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Other                NA                0.6363636    0.3464593   0.9262680
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                0.6666667    0.2851106   1.0482227
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Maternal             NA                0.3684211    0.2132772   0.5235649
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Control              NA                0.4000000   -0.0434892   0.8434892
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Maternal             NA                0.4545455    0.1506431   0.7584478


### Parameter: E(Y)


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 NA                   NA                0.2666667    0.1723439   0.3609894
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       NA                   NA                0.0007047   -0.0003205   0.0017300
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 NA                   NA                0.0296610    0.0062728   0.0530493
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              NA                   NA                0.0022162    0.0011284   0.0033040
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       NA                   NA                0.0322581    0.0134775   0.0510386
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 NA                   NA                0.1368421    0.0673654   0.2063188
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              NA                   NA                0.0607735    0.0258712   0.0956758
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       NA                   NA                0.2211276    0.2115962   0.2306591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 NA                   NA                0.5211977    0.5008750   0.5415204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              NA                   NA                0.3579523    0.3422599   0.3736447
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    NA                   NA                0.1877828    0.1513332   0.2242324
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              NA                   NA                0.4444444    0.2976214   0.5912675
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           NA                   NA                0.2653061    0.2033395   0.3272727
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              NA                   NA                0.2900901    0.2571217   0.3230584
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           NA                   NA                0.2272727    0.1105601   0.3439854
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    NA                   NA                0.0969697    0.0785272   0.1154122
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              NA                   NA                0.1382114    0.0949961   0.1814267
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           NA                   NA                0.1208791    0.0873444   0.1544138
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    NA                   NA                0.0557209    0.0419170   0.0695247
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              NA                   NA                0.1203156    0.0839654   0.1566657
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           NA                   NA                0.0683437    0.0494580   0.0872293
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    NA                   NA                0.3421053    0.2943428   0.3898677
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              NA                   NA                0.5727273    0.4798603   0.6655943
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           NA                   NA                0.5049020    0.4361240   0.5736799
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    NA                   NA                0.1819527    0.1528479   0.2110575
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              NA                   NA                0.4142857    0.2980562   0.5305152
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           NA                   NA                0.2862191    0.2334651   0.3389731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    NA                   NA                0.2129531    0.2013001   0.2246061
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              NA                   NA                0.3547579    0.3304488   0.3790671
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           NA                   NA                0.2784189    0.2603263   0.2965116
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   NA                   NA                0.4090909    0.1988057   0.6193761
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   NA                   NA                0.1296758    0.0705725   0.1887791
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          NA                   NA                0.1065375    0.0513421   0.1617330
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   NA                   NA                0.7307692    0.5568969   0.9046416
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   NA                   NA                0.4090909    0.2621360   0.5560458
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          NA                   NA                0.4375000    0.1864543   0.6885457


### Parameter: RR


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level     estimate    ci_lower      ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  ----------  ----------  ------------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Other                Control           1.0937500   0.5347404     2.2371397
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Maternal             Control           0.2049243   0.0003088   135.9871604
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Maternal             Control           0.3979798   0.0840528     1.8843866
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Maternal             Control           0.8664278   0.3151042     2.3823780
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Other                Control           3.1343284   0.6861072    14.3184829
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Other                Control           2.1073171   0.7400126     6.0009591
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Control              Control           1.0000000   1.0000000     1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Other                Control           1.3552941   0.4276152     4.2955028
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              Control           1.0000000   1.0000000     1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Maternal             Control           0.9330140   0.8560299     1.0169214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              Control           1.0000000   1.0000000     1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Maternal             Control           0.9357420   0.8638724     1.0135906
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              Control           1.0000000   1.0000000     1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Maternal             Control           0.9027987   0.8272917     0.9851972
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    LNS                  Control           0.8415862   0.5692205     1.2442756
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              LNS                  Control           1.3684211   0.7114431     2.6320813
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           LNS                  Control           1.0206186   0.6397261     1.6282941
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Other                Control           1.0287162   0.8209250     1.2891033
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Other                Control           0.3289474   0.0909239     1.1900763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Other                Control           0.9365079   0.5401587     1.6236840
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Zinc                 Control           1.0219990   0.6392675     1.6338729
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Other                Control           1.0327869   0.4388008     2.4308268
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Zinc                 Control           0.9180328   0.4295587     1.9619767
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Other                Control           1.2894737   0.5903534     2.8165205
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Zinc                 Control           1.0315789   0.5213519     2.0411456
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Maternal             Control           0.8733103   0.5342424     1.4275746
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Maternal             Control           0.5209971   0.2859819     0.9491440
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Maternal             Control           0.7099972   0.4193981     1.2019511
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Other                Control           0.8518017   0.6447256     1.1253876
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Other                Control           0.9502924   0.6807255     1.3266077
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Other                Control           0.8559277   0.6498282     1.1273937
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Maternal             Control           0.8406763   0.6051859     1.1678010
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Maternal             Control           1.1227273   0.6180401     2.0395385
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Maternal             Control           1.1381689   0.7643986     1.6947028
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              Control           1.0000000   1.0000000     1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Maternal             Control           0.9362702   0.8391917     1.0445788
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              Control           1.0000000   1.0000000     1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Maternal             Control           0.9399903   0.8168304     1.0817199
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              Control           1.0000000   1.0000000     1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Maternal             Control           0.9144724   0.8032393     1.0411092
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   Control              Control           1.0000000   1.0000000     1.0000000
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   LNS                  Control           0.4687500   0.1826097     1.2032581
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              Control           1.0000000   1.0000000     1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Maternal             Control           0.8522794   0.3086747     2.3532226
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              Control           1.0000000   1.0000000     1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Maternal             Control           0.8532225   0.3136004     2.3213893
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              Control           1.0000000   1.0000000     1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Other                Control           0.7954545   0.4712295     1.3427595
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              Control           1.0000000   1.0000000     1.0000000
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Maternal             Control           0.5526316   0.2715460     1.1246773
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Control              Control           1.0000000   1.0000000     1.0000000
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Maternal             Control           1.1363636   0.3113380     4.1476544


### Parameter: PAR


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                 0.0126984   -0.0894122    0.1148090
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Control              NA                -0.0005468   -0.0016349    0.0005412
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Control              NA                -0.0160243   -0.0458235    0.0137750
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Control              NA                -0.0001464   -0.0011694    0.0008765
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Control              NA                 0.0179724   -0.0025710    0.0385157
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Control              NA                 0.0442495   -0.0189993    0.1074983
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Control              NA                 0.0086901   -0.0244375    0.0418178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                -0.0080207   -0.0180324    0.0019909
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                -0.0159031   -0.0348884    0.0030823
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                -0.0181127   -0.0336579   -0.0025676
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                -0.0157570   -0.0513392    0.0198251
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                 0.0598291   -0.0666367    0.1862948
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                 0.0026799   -0.0586617    0.0640214
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                 0.0043758   -0.0307047    0.0394564
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                -0.0927273   -0.1969846    0.0115300
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                -0.0004879   -0.0335034    0.0325275
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                -0.0046458   -0.0789732    0.0696817
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Control              NA                 0.0086342   -0.0455165    0.0627850
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                -0.0041594   -0.0198986    0.0115799
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                -0.0471485   -0.0989699    0.0046728
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                -0.0105224   -0.0265490    0.0055041
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                -0.0306758   -0.0842502    0.0228986
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                -0.0118881   -0.0892893    0.0655130
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                -0.0379552   -0.1047538    0.0288434
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                -0.0215872   -0.0635575    0.0203832
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                 0.0296703   -0.1207688    0.1801094
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                 0.0235928   -0.0474559    0.0946416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                -0.0072476   -0.0193487    0.0048535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                -0.0102715   -0.0333864    0.0128433
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                -0.0123857   -0.0304182    0.0056469
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   Control              NA                -0.2575758   -0.5921956    0.0770441
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                -0.0142636   -0.1088256    0.0802984
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                -0.0074976   -0.0545033    0.0395082
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                -0.0692308   -0.2230992    0.0846377
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                -0.2575758   -0.6146132    0.0994617
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Control              NA                 0.0375000   -0.3323377    0.4073377


### Parameter: PAF


agecat      studyid                    country                        intXgagebrth                  intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm_Birth                 Control              NA                 0.0476190   -0.4235729    0.3628500
Birth       ki1119695-PROBIT           BELARUS                        Full or late term_Birth       Control              NA                -0.7759700   -5.4894579    0.5139703
Birth       ki1119695-PROBIT           BELARUS                        Preterm_Birth                 Control              NA                -0.5402465   -1.7537447    0.1384970
Birth       ki1119695-PROBIT           BELARUS                        Early term_Birth              Control              NA                -0.0660704   -0.6490616    0.3108165
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term_Birth       Control              NA                 0.5571429   -0.5363415    0.8723445
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm_Birth                 Control              NA                 0.3233618   -0.2940004    0.6461831
Birth       ki1135781-COHORTS          GUATEMALA                      Early term_Birth              Control              NA                 0.1429924   -0.6084840    0.5433825
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_Birth       Control              NA                -0.0362719   -0.0824952    0.0079776
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm_Birth                 Control              NA                -0.0305125   -0.0678072    0.0054795
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term_Birth              Control              NA                -0.0506010   -0.0948830   -0.0081099
6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_6 months    Control              NA                -0.0839109   -0.2905519    0.0896432
6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_6 months              Control              NA                 0.1346154   -0.2041460    0.3780733
6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_6 months           Control              NA                 0.0101010   -0.2503381    0.2162920
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_6 months              Control              NA                 0.0150843   -0.1134117    0.1287509
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_6 months           Control              NA                -0.4080000   -1.1673879    0.0853211
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6 months    Control              NA                -0.0050318   -0.4102761    0.2837651
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6 months              Control              NA                -0.0336134   -0.7389588    0.3856342
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6 months           Control              NA                 0.0714286   -0.5037686    0.4266107
6 months    ki1119695-PROBIT           BELARUS                        Full or late term_6 months    Control              NA                -0.0746468   -0.3868499    0.1672742
6 months    ki1119695-PROBIT           BELARUS                        Preterm_6 months              Control              NA                -0.3918739   -0.8980937   -0.0206624
6 months    ki1119695-PROBIT           BELARUS                        Early term_6 months           Control              NA                -0.1539635   -0.4089993    0.0549095
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_6 months    Control              NA                -0.0896677   -0.2581590    0.0562594
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_6 months              Control              NA                -0.0207570   -0.1653396    0.1058873
6 months    ki1135781-COHORTS          GUATEMALA                      Early term_6 months           Control              NA                -0.0751734   -0.2164916    0.0497281
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6 months    Control              NA                -0.1186416   -0.3743299    0.0894769
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6 months              Control              NA                 0.0716180   -0.3730261    0.3722675
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6 months           Control              NA                 0.0824292   -0.2024634    0.2998239
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6 months    Control              NA                -0.0340339   -0.0923765    0.0211927
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6 months              Control              NA                -0.0289537   -0.0966435    0.0345581
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_6 months           Control              NA                -0.0444857   -0.1111398    0.0181699
24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_24 months   Control              NA                -0.6296296   -1.8219664    0.0589212
24 months   ki1119695-PROBIT           BELARUS                        Full or late term_24 months   Control              NA                -0.1099942   -1.1132156    0.4169610
24 months   ki1119695-PROBIT           BELARUS                        Early term_24 months          Control              NA                -0.0703748   -0.6085462    0.2877406
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_24 months   Control              NA                -0.0947368   -0.3340537    0.1016488
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_24 months   Control              NA                -0.6296296   -1.8463762    0.0669917
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_24 months          Control              NA                 0.0857143   -1.3062958    0.6375494
