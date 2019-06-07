---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
![](/tmp/a450eb68-e60d-4cf7-9c7e-3e2192851cda/13ad964d-718e-48e8-b509-132deb9480a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a450eb68-e60d-4cf7-9c7e-3e2192851cda/13ad964d-718e-48e8-b509-132deb9480a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1575521   0.0875480   0.2275562
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5796675   0.4171432   0.7421919
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4590590   0.3693268   0.5487912
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3769277   0.3203041   0.4335512
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5316373   0.4698622   0.5934125
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2027442   0.1785130   0.2269754
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4106730   0.3954484   0.4258976
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7746287   0.7499949   0.7992625
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.7257131   0.6959132   0.7555129
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1839864   0.1296603   0.2383125
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4671450   0.3097539   0.6245362
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2958761   0.2139726   0.3777797
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1597476   0.1158263   0.2036688
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3810142   0.3171211   0.4449074
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.1020644   0.0879864   0.1161423
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2679227   0.2529611   0.2828843
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3147899   0.2845341   0.3450458
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2623947   0.2101779   0.3146114
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3104470   0.0840207   0.5368733
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4127128   0.2939253   0.5315004
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2419376   0.2083105   0.2755646
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3750723   0.3015810   0.4485635
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0855520   0.0674044   0.1036996
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2804745   0.2503043   0.3106448
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7545286   0.7238680   0.7851892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6964290   0.6001025   0.7927555


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3482105   0.3290467   0.3673744
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3967178   0.3886181   0.4048175
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7796189   0.7562250   0.8030128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6868787   0.6703303   0.7034272
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1957895   0.1798275   0.2117515
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2581291   0.2508782   0.2653799
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3244353   0.2950189   0.3538517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2385686   0.2233602   0.2537770
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2278162   0.2071874   0.2484451
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2458975   0.2364144   0.2553806
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7621951   0.7330377   0.7913526
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6452074   0.6247246   0.6656902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.4710031   1.0148745   2.1321355
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.0703757   0.8309038   1.3788649
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1863094   1.0184827   1.3817908
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9238126   0.8029109   1.0629196
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0405430   1.0027206   1.0797920
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.8260920   0.7425034   0.9190908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9660188   0.9364787   0.9964907
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0064421   0.9980209   1.0149343
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9464880   0.9124126   0.9818360
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.0497137   0.9229275   1.1939171
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.9113713   0.6666559   1.2459165
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2162948   0.9778098   1.5129456
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2256179   0.9444044   1.5905679
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           0.8319405   0.7461177   0.9276351
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9749601   0.9316516   1.0202819
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9634460   0.9179464   1.0112009
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0306407   1.0024605   1.0596131
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9091975   0.7510570   1.1006357
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2754936   0.6408651   2.5385750
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8838588   0.7028210   1.1115295
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9416323   0.8464478   1.0475204
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0376379   0.9733908   1.1061255
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.8982965   0.7801200   1.0343750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.8767195   0.7924423   0.9699597
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0101607   1.0004262   1.0199899
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9264511   0.8081028   1.0621318


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0742075    0.0136559    0.1347591
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0407945   -0.1055110    0.1871000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0855270    0.0162852    0.1547688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0287171   -0.0815968    0.0241625
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0215542    0.0020575    0.0410508
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0352588   -0.0556325   -0.0148852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0139552   -0.0267108   -0.0011995
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0049902   -0.0015083    0.0114887
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0388343   -0.0653332   -0.0123355
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0091466   -0.0146074    0.0329007
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0414025   -0.1874752    0.1046702
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0639965   -0.0002192    0.1282122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0360419   -0.0056295    0.0777133
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.0640331   -0.1025217   -0.0255445
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0025557   -0.0071990    0.0020877
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0097937   -0.0227569    0.0031696
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0096454    0.0009178    0.0183730
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0238261   -0.0739269    0.0262747
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0855262   -0.1276634    0.2987158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0479330   -0.1417782    0.0459123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0141213   -0.0399197    0.0116770
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0141169   -0.0098224    0.0380563
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0087009   -0.0206267    0.0032248
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0345770   -0.0629329   -0.0062212
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0076665    0.0003916    0.0149414
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0512216   -0.1463136    0.0438705


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.3201918    0.0146565    0.5309867
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0657486   -0.2035088    0.2747658
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1570496    0.0181473    0.2763014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0824706   -0.2454682    0.0591951
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0389633    0.0027132    0.0738957
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.2105189   -0.3467952   -0.0880318
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0351766   -0.0678299   -0.0035217
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0064008   -0.0019830    0.0147145
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0565374   -0.0959954   -0.0185000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0473593   -0.0835087    0.1624209
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0972477   -0.5000243    0.1973780
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1778309   -0.0226938    0.3390377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1840851   -0.0588684    0.3712937
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                -0.2020091   -0.3402712   -0.0780101
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0256830   -0.0733626    0.0198787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0379409   -0.0893882    0.0110768
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0297298    0.0024545    0.0562593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0998710   -0.3314569    0.0914342
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2159898   -0.5603909    0.6060782
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1314025   -0.4228373    0.1003388
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0619857   -0.1814077    0.0453647
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0362727   -0.0273366    0.0959435
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.1132182   -0.2818541    0.0332327
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.1406157   -0.2619216   -0.0309706
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0100585    0.0004260    0.0195981
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0793878   -0.2374664    0.0584973
