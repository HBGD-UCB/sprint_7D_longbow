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
![](/tmp/d4076812-0877-4fd2-918c-e825c75225b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d4076812-0877-4fd2-918c-e825c75225b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1423862   0.0939415   0.1908309
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5046118   0.3796673   0.6295563
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4760484   0.4215024   0.5305944
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2911140   0.2531732   0.3290548
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.5320243   0.4703063   0.5937424
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1554890   0.1386518   0.1723262
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3923763   0.3840512   0.4007014
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7717367   0.7470577   0.7964158
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6862518   0.6694921   0.7030115
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1823204   0.1282391   0.2364017
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4113326   0.2721567   0.5505084
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2998623   0.2494945   0.3502301
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1636980   0.1334811   0.1939149
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2998548   0.2420867   0.3576229
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0844622   0.0732014   0.0957231
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2564188   0.2489844   0.2638531
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3150799   0.2850682   0.3450916
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2367915   0.2214411   0.2521420
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4150933   0.2437888   0.5863978
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3661029   0.2732345   0.4589713
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2254611   0.2040265   0.2468956
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3746194   0.3012144   0.4480245
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0689451   0.0556469   0.0822432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2325458   0.2040101   0.2610816
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7545573   0.7239049   0.7852096
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6118617   0.5284242   0.6952992


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2329077   0.1786112   0.2872042
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6228135   0.5680830   0.6775441
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5489821   0.4938109   0.6041533
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3500968   0.3309330   0.3692606
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5536757   0.4955467   0.6118048
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1677770   0.1490964   0.1864576
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3967930   0.3886933   0.4048927
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7795447   0.7561508   0.8029386
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6867801   0.6702317   0.7033286
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1933530   0.1425566   0.2441495
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4257253   0.3699591   0.4814916
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3608881   0.3077161   0.4140602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1971626   0.1812006   0.2131246
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3172227   0.2610948   0.3733507
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0993193   0.0862747   0.1123639
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2582441   0.2509932   0.2654949
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3251995   0.2957832   0.3546159
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2384014   0.2231930   0.2536097
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3928010   0.3140097   0.4715923
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3640452   0.2889872   0.4391032
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2277185   0.2070896   0.2483474
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3892521   0.3188034   0.4597008
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0766238   0.0626584   0.0905891
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2465840   0.2371009   0.2560671
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7622081   0.7330506   0.7913656
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6452463   0.6247635   0.6657291


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.6113418   0.4820130   0.7753708
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.8102133   0.6505353   1.0090851
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8671474   0.8043764   0.9348169
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8315244   0.7345401   0.9413140
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9608952   0.9260012   0.9971040
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9267598   0.8989399   0.9554405
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9888692   0.9832156   0.9945553
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9899839   0.9824946   0.9975303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9992307   0.9955679   1.0029071
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9429403   0.8285869   1.0730756
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.9661924   0.7026328   1.3286138
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8309010   0.7386806   0.9346348
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8302691   0.6947972   0.9921554
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9452502   0.8837098   1.0110761
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.8504111   0.8238397   0.8778395
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9929319   0.9855106   1.0004092
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9688817   0.9436398   0.9947988
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9932473   0.9830294   1.0035715
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          1.0567520   0.7257896   1.5386343
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          1.0056522   0.8469203   1.1941341
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9900866   0.9613656   1.0196657
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9624084   0.9031401   1.0255661
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8997870   0.8764492   0.9237463
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9430695   0.8365770   1.0631180
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9899623   0.9804452   0.9995717
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9482606   0.8283780   1.0854926
