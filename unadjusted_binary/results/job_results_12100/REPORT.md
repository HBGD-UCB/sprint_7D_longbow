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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      104     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1      161     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      154     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       43     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       25     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1       11     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      101     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      148     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      157     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       83     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      101     303
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1      167     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       21     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       82     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       94     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       61     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       77     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       38     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      214     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1400    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      751    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      148    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       76    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      118     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1      134     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       22     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13524   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     2680   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      543   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      150   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7948   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     5178   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      507   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      382   14015
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      254    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      855    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       12    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       86    1207
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     3293    5384
0-24 months   ki1135781-COHORTS          INDIA                          0                    1     2082    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        5    5384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      924    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     2019    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       21    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       54    3018
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      171     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       94     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      161     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       27     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        9     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      165     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       84     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      198     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       42     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      154     303
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1      114     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       15     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      118     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       58     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       83     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       55     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      147     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      105     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1726    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      425    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      184    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       40    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      167     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       71     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1       13     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    14615   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     1585   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      597   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       96   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9755   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3351   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      626   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      261   13993
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      622     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      283     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       36     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       33     974
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4207    5203
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      988    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        6    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        2    5203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2246    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      697    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       52    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       23    3018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       92     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       67     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      138     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        7     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       21     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     168
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       91     155
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       64     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      154     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       41     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     195
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0       77     149
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       53     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       13     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        6     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       58     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       36     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       43     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       22     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       31     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      109     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        4     145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1115    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      326    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      112    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       36    1589
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      105     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       63     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        9     185
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13270   14951
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1095   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      532   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       54   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5632    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1827    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      342    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      121    7922
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      186     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      572     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0        9     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       53     820
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     3016    4117
6-24 months   ki1135781-COHORTS          INDIA                          0                    1     1094    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        3    4117
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      724    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1322    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       20    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       31    2097


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/43ca182c-16f7-4c58-9eea-771017f77e9a/1eaa9a20-7a80-43d0-8629-73bbc0829979/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/43ca182c-16f7-4c58-9eea-771017f77e9a/1eaa9a20-7a80-43d0-8629-73bbc0829979/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/43ca182c-16f7-4c58-9eea-771017f77e9a/1eaa9a20-7a80-43d0-8629-73bbc0829979/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/43ca182c-16f7-4c58-9eea-771017f77e9a/1eaa9a20-7a80-43d0-8629-73bbc0829979/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2182741   0.1604675   0.2760807
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.3055556   0.1547579   0.4563532
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.6231343   0.5650201   0.6812486
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6000000   0.4374311   0.7625689
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5340909   0.4602763   0.6079056
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5579710   0.4749797   0.6409623
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3491399   0.3289905   0.3692894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3392857   0.2772695   0.4013019
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5317460   0.4700280   0.5934641
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7333333   0.5748097   0.8918569
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1653913   0.1462422   0.1845403
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2164502   0.1792715   0.2536290
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3944842   0.3861229   0.4028456
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4296963   0.3971541   0.4622385
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7709648   0.7462231   0.7957066
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8775510   0.8126235   0.9424785
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6860347   0.6692644   0.7028049
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7200000   0.6183670   0.8216330
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1827411   0.1286598   0.2368224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2500000   0.1082473   0.3917527
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.4253731   0.3660838   0.4846625
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.4285714   0.2643520   0.5927908
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3295455   0.2599907   0.3991002
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3985507   0.3167339   0.4803675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1975825   0.1807521   0.2144129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1785714   0.1284058   0.2287371
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2983193   0.2400834   0.3565553
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4814815   0.2926566   0.6703063
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0978395   0.0847400   0.1109390
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1385281   0.1073700   0.1696863
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2556844   0.2482155   0.2631534
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2942503   0.2642597   0.3242409
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3127072   0.2824877   0.3429266
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4782609   0.3603359   0.5961858
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2368332   0.2214709   0.2521955
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3066667   0.2022923   0.4110410
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4076923   0.3229347   0.4924499
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1060755   0.5255034
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3829787   0.2843981   0.4815594
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3384615   0.2230648   0.4538583
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2262318   0.2046228   0.2478408
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2432432   0.1740996   0.3123869
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3750000   0.3015949   0.4484051
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5294118   0.2914989   0.7673246
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0762269   0.0620780   0.0903759
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0921502   0.0630005   0.1212998
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2449390   0.2351789   0.2546991
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2613391   0.2213161   0.3013621
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7546174   0.7239651   0.7852698
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8548387   0.7671013   0.9425761
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6461388   0.6254146   0.6668630
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6078431   0.4738162   0.7418701


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3482105   0.3290467   0.3673744
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3967178   0.3886181   0.4048175
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7796189   0.7562250   0.8030128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6868787   0.6703303   0.7034272
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1957895   0.1798275   0.2117515
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2581291   0.2508782   0.2653799
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3244353   0.2950189   0.3538517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2385686   0.2233602   0.2537770
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2278162   0.2071874   0.2484451
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458975   0.2364144   0.2553806
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7621951   0.7330377   0.7913526
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6452074   0.6247246   0.6656902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3998708   0.7995481   2.450932
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9628743   0.7229741   1.282379
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0447117   0.8527443   1.279894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9717757   0.8022707   1.177094
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3791045   1.0790454   1.762603
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.3087162   1.0880157   1.574185
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0892610   1.0068800   1.178382
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1382504   1.0500576   1.233850
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0495097   0.9094321   1.211163
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3680556   0.7216559   2.593447
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.0075188   0.6701519   1.514722
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2093953   0.9009454   1.623447
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9037815   0.6738650   1.212143
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.6139802   1.0414655   2.501218
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4158712   1.1438194   1.752629
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1508338   1.0350617   1.279555
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.5294208   1.1735781   1.993159
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2948637   0.9156952   1.831037
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.7745780   0.3862340   1.553387
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8837607   0.5765057   1.354771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0751948   0.7966225   1.451182
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4117647   0.8647352   2.304844
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2088924   0.8812884   1.658278
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0669558   0.9107969   1.249889
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1328107   1.0144231   1.265015
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9407315   0.7528313   1.175530


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0134855   -0.0117949   0.0387660
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0026723   -0.0226321   0.0172875
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0104951   -0.0383360   0.0593262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009294   -0.0070806   0.0052218
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214455    0.0019436   0.0409473
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0020941    0.0003874   0.0038008
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022336    0.0000976   0.0043696
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0086541    0.0027782   0.0145299
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0008441   -0.0017227   0.0034108
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0103919   -0.0132574   0.0340413
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0003694   -0.0197986   0.0205375
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0303272   -0.0170204   0.0776748
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017930   -0.0067886   0.0032025
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0186618   -0.0025515   0.0398751
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0016692    0.0004227   0.0029156
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0024446    0.0004793   0.0044100
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0117281    0.0027007   0.0207556
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0017354   -0.0009149   0.0043857
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0117192   -0.0409824   0.0175441
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0181988   -0.0803375   0.0439398
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015845   -0.0051672   0.0083361
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0141892   -0.0095805   0.0379589
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0006241   -0.0005355   0.0017838
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009585   -0.0014507   0.0033677
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0075777    0.0003202   0.0148352
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0009314   -0.0042394   0.0023766


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0581876   -0.0570474   0.1608602
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0043069   -0.0370022   0.0273575
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0192717   -0.0746530   0.1049873
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0026691   -0.0204908   0.0148414
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0387668    0.0025234   0.0736932
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0125031    0.0018449   0.0230475
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0056301    0.0002310   0.0110001
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0111004    0.0034904   0.0186522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0012288   -0.0025154   0.0049591
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0538071   -0.0764105   0.1682718
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0008678   -0.0476446   0.0471337
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0842719   -0.0572368   0.2068400
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0091580   -0.0349928   0.0160318
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0588735   -0.0103760   0.1233768
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0167741    0.0039816   0.0294023
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0094706    0.0018291   0.0170537
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0361494    0.0079334   0.0635629
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0072743   -0.0038935   0.0183179
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0295958   -0.1063031   0.0417928
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0498899   -0.2349086   0.1074085
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0069550   -0.0231251   0.0361507
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0364583   -0.0266802   0.0957140
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0081210   -0.0073318   0.0233367
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0038980   -0.0059475   0.0136470
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0099420    0.0003332   0.0194583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0014435   -0.0065842   0.0036709
