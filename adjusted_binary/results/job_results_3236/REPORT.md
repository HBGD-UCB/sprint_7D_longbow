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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

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
![](/tmp/156c0033-bf6b-4756-94c0-509f4fb67f1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/156c0033-bf6b-4756-94c0-509f4fb67f1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/156c0033-bf6b-4756-94c0-509f4fb67f1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/156c0033-bf6b-4756-94c0-509f4fb67f1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2179836   0.1604045   0.2755627
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.3087629   0.1594816   0.4580443
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.6228628   0.5647922   0.6809333
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6025518   0.4416303   0.7634732
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3538044   0.2964458   0.4111631
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3344316   0.2782142   0.3906491
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3481043   0.3281481   0.3680604
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2816801   0.2420324   0.3213278
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5317460   0.4700280   0.5934641
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7333333   0.5748097   0.8918569
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1648335   0.1456091   0.1840579
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1357759   0.1122652   0.1592866
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3963803   0.3880675   0.4046932
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4188081   0.3918639   0.4457523
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7718126   0.7471377   0.7964875
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9081650   0.8575951   0.9587349
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6861130   0.6693530   0.7028731
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5947995   0.5342838   0.6553152
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1827411   0.1286598   0.2368224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2500000   0.1082473   0.3917527
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.4288033   0.3695791   0.4880275
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.5007642   0.3403780   0.6611504
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2050038   0.1536095   0.2563981
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2140696   0.1614970   0.2666422
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1968823   0.1802454   0.2135193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1132067   0.0844137   0.1419997
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2983121   0.2403454   0.3562789
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5071688   0.3674272   0.6469104
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1001644   0.0871572   0.1131716
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1453751   0.1202619   0.1704882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2562739   0.2488404   0.2637073
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2593322   0.2347959   0.2838685
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3141249   0.2841084   0.3441414
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4233615   0.3557613   0.4909618
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2368098   0.2214601   0.2521596
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0955091   0.0497696   0.1412486
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4076923   0.3229347   0.4924499
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1060755   0.5255034
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3550323   0.2646640   0.4454005
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2851294   0.1869125   0.3833463
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2259422   0.2045429   0.2473415
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2657862   0.2214188   0.3101537
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3750000   0.3015949   0.4484051
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5294118   0.2914989   0.7673246
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0760750   0.0619741   0.0901758
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0784057   0.0544047   0.1024066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2467606   0.2370524   0.2564688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2873550   0.2577770   0.3169329
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7546174   0.7239651   0.7852698
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8548387   0.7671013   0.9425761
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6462696   0.6255548   0.6669844
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6091000   0.5306565   0.6875435


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.4164503   0.8176795   2.4536893
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9673909   0.7293534   1.2831160
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9452444   0.7374535   1.2115841
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8091831   0.6958687   0.9409495
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3791045   1.0790454   1.7626034
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.8237155   0.6905877   0.9825069
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0565814   0.9878589   1.1300848
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1766652   1.1036782   1.2544788
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8669119   0.7811214   0.9621247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3680556   0.7216559   2.5934466
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.1678180   0.8248327   1.6534248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0442227   0.7207381   1.5128950
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5749967   0.4407175   0.7501887
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.7001279   1.2178243   2.3734416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4513651   1.2046752   1.7485716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0119338   0.9168556   1.1168715
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3477490   1.1229399   1.6175642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.4033156   0.2489664   0.6533550
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.7745780   0.3862340   1.5533872
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8031083   0.5226409   1.2340843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1763462   0.9715679   1.4242857
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4117647   0.8647352   2.3048439
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0306368   0.7441376   1.4274406
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1645091   1.0436357   1.2993820
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1328107   1.0144231   1.2650147
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9424858   0.8256139   1.0759018


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0137761   -0.0114301   0.0389822
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0024007   -0.0221853   0.0173839
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1907816    0.1460969   0.2354662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001062   -0.0057896   0.0060021
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214455    0.0019436   0.0409473
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0026519    0.0007568   0.0045469
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0003375   -0.0017187   0.0023936
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0078063    0.0019950   0.0136176
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0007657   -0.0017608   0.0032921
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0103919   -0.0132574   0.0340413
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0030607   -0.0229044   0.0167830
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1548688    0.1120097   0.1977280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0010929   -0.0058577   0.0036720
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0186690   -0.0015483   0.0388863
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006557   -0.0020535   0.0007422
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018552   -0.0000738   0.0037842
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0103104    0.0018657   0.0187551
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0017587   -0.0007212   0.0042387
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0117192   -0.0409824   0.0175441
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0097476   -0.0473529   0.0668481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018740   -0.0047593   0.0085073
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0141892   -0.0095805   0.0379589
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007761   -0.0003468   0.0018989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0008631   -0.0032018   0.0014757
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0075777    0.0003202   0.0148352
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010622   -0.0043702   0.0022458


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0594411   -0.0553248   0.1617264
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0038693   -0.0362723   0.0275205
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3503240    0.2686090   0.4229094
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003051   -0.0167707   0.0170942
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0387668    0.0025234   0.0736932
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0158335    0.0038979   0.0276262
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008507   -0.0043454   0.0060199
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0100129    0.0024938   0.0174754
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011147   -0.0025705   0.0047864
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0538071   -0.0764105   0.1682718
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0071891   -0.0549023   0.0383659
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4303435    0.3123186   0.5281120
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0055819   -0.0302219   0.0184688
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0588962   -0.0070297   0.1205063
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0065892   -0.0208322   0.0074550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0071870   -0.0003094   0.0146273
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0317795    0.0054463   0.0574155
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073721   -0.0030768   0.0177121
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0295958   -0.1063031   0.0417928
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0267218   -0.1426678   0.1710010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082261   -0.0212997   0.0368983
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0364583   -0.0266802   0.0957140
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0100985   -0.0048864   0.0248599
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0035099   -0.0130708   0.0059607
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0099420    0.0003332   0.0194583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0016463   -0.0067872   0.0034684
