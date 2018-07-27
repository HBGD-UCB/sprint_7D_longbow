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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      217     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       48     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      180     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       17     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       28     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        8     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      208     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       41     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      212     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       28     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      238     303
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1       30     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       28     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        7     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      160     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      120     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       18     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      210     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       42     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        9     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2004    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      147    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      211    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       13    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      187     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       51     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       15     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1       12     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    16065   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      135   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      675   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       18   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11746   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1360   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      773   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      114   13993
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      795     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      110     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       51     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       18     974
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4563    5203
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      632    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        8    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        0    5203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2766    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      177    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       69    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1        6    3018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      122     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       73     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      169     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        6     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       26     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     203
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      127     193
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       66     193
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      188     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       36     224
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      137     229
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       68     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       17     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        7     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       94     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       36     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       71     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       23     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       69     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      111     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        5     187
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1436    1833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      226    1833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      150    1833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    1833
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      131     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       31     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        7     183
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    15052   16303
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1      592   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      631   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       28   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7547    9278
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1188    9278
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      468    9278
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       75    9278
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      236     582
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      312     582
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       14     582
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       20     582
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     4028    4035
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    4035
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     1088    2195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1047    2195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       31    2195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       29    2195
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      131     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1      134     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      170     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       27     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       27     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        9     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      125     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      124     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      181     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       59     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      150     303
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1      118     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       17     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       18     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      112     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       64     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       81     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       57     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       76     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      176     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6     262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1659    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      492    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      177    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       47    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      138     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1      114     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       11     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       19     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0    14602   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1602   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      595   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1       98   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9318   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3808   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      596   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      293   14015
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      300    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      809    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       16    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       82    1207
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     4100    5384
0-24 months   ki1135781-COHORTS          INDIA                          0                    1     1275    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        2    5384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     1259    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1684    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       31    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       44    3018


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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       ever_stunted
## single   0   1
##      0 131 134
##      1   0   0
##       ever_stunted
## single   0   1
##      0 125 124
##      1   0   0
##       ever_stunted
## single   0   1
##      0 181  59
##      1   0   0
##       ever_stunted
## single   0   1
##      0 217  48
##      1   0   0
##       ever_stunted
## single   0   1
##      0 208  41
##      1   0   0
##       ever_stunted
## single   0   1
##      0 212  28
##      1   0   0
##       ever_stunted
## single   0   1
##      0 122  73
##      1   0   0
##       ever_stunted
## single   0   1
##      0 127  66
##      1   0   0
##       ever_stunted
## single   0   1
##      0 188  36
##      1   0   0
##       ever_stunted
## single    0
##      0 4028
##      1    7
```




# Results Detail

## Results Plots
![](/tmp/48ed8050-2328-4eae-8c51-40dfaf8eb21a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/48ed8050-2328-4eae-8c51-40dfaf8eb21a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/48ed8050-2328-4eae-8c51-40dfaf8eb21a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/48ed8050-2328-4eae-8c51-40dfaf8eb21a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1370558   0.0889288   0.1851829
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2500000   0.1082473   0.3917527
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4402985   0.3807665   0.4998305
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5142857   0.3484322   0.6801392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3636364   0.2924543   0.4348185
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4130435   0.3307620   0.4953250
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2287308   0.2109773   0.2464844
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2098214   0.1564876   0.2631553
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4523810   0.3908192   0.5139427
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.6333333   0.4605862   0.8060804
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0988645   0.0828855   0.1148435
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1414141   0.1142400   0.1685883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2901112   0.2823474   0.2978750
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3295838   0.2986831   0.3604845
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7294860   0.7033304   0.7556417
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8367347   0.7635271   0.9099422
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5722052   0.5543272   0.5900832
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5866667   0.4752025   0.6981309
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0862944   0.0469989   0.1255900
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2222222   0.0861240   0.3583204
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1119403   0.0741298   0.1497508
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2000000   0.0672630   0.3327370
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0909091   0.0483697   0.1334485
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1304348   0.0741554   0.1867141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0683403   0.0576747   0.0790059
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0580357   0.0274104   0.0886610
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2142857   0.1620570   0.2665145
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4444444   0.2566600   0.6322289
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0083333   0.0052719   0.0113948
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0259740   0.0129646   0.0389835
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1037693   0.0985480   0.1089905
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1285231   0.1064979   0.1505483
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1215470   0.1002470   0.1428469
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2608696   0.1572077   0.3645314
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0601427   0.0515516   0.0687338
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0800000   0.0185915   0.1414085
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3317073   0.2671148   0.3962999
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2916667   0.1094219   0.4739114
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2769231   0.1998292   0.3540169
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2446809   0.1575803   0.3317814
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1359807   0.1194972   0.1524643
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1228070   0.0735999   0.1720141
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1913580   0.1306170   0.2520990
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3333333   0.1311609   0.5355058
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0378420   0.0283348   0.0473492
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0424886   0.0284661   0.0565112
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1360046   0.1288155   0.1431936
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1381215   0.1090997   0.1671434
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5693431   0.5278492   0.6108369
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5882353   0.4226651   0.7538055
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4903981   0.4691883   0.5116080
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4833333   0.3568597   0.6098070


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1545064   0.1079979   0.2010150
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3853503   0.3314343   0.4392663
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2269474   0.2100983   0.2437964
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4716312   0.4132646   0.5299979
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2926151   0.2850825   0.3001476
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7381939   0.7133826   0.7630052
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5725646   0.5549120   0.5902172
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1072961   0.0674717   0.1471206
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1221122   0.0851852   0.1590392
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1082803   0.0738560   0.1427045
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0673684   0.0572854   0.0774514
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2377358   0.1863852   0.2890865
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1053384   0.1002517   0.1104250
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1314168   0.1101882   0.1526455
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0606362   0.0521200   0.0691523
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2633929   0.2055812   0.3212045
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1347518   0.1191159   0.1503877
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2076503   0.1487202   0.2665804
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1361285   0.1291503   0.1431067
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5704467   0.5301958   0.6106977
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4902050   0.4692872   0.5111228


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.8240741   0.9362562   3.553777
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.1680387   0.8233584   1.657012
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.1358696   0.8590827   1.501834
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9173291   0.7032362   1.196600
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4000000   1.0321571   1.898936
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.4303837   1.1685319   1.750913
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1360601   1.0305216   1.252407
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1470195   1.0435340   1.260767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0252732   0.8457017   1.242974
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.5751634   1.2004941   5.523947
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.7866667   0.8484516   3.762357
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4347826   0.7592023   2.711532
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8492165   0.4898122   1.472337
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.0740741   1.2734617   3.378023
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 3.1168831   1.8200939   5.337615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2385470   1.0359650   1.480744
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 2.1462451   1.3901680   3.313533
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3301695   0.6092799   2.904003
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.8792892   0.4569778   1.691875
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8835697   0.5623139   1.388362
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9031206   0.5942112   1.372621
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.7419355   0.8784811   3.454075
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1227905   0.8411160   1.498793
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0155654   0.8177328   1.261259
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0331825   0.7725120   1.381812
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9855938   0.7559872   1.284936


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0174506   -0.0062680   0.0411692
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0085464   -0.0119824   0.0290752
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0217140   -0.0261791   0.0696070
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017835   -0.0070897   0.0035228
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0192503   -0.0013209   0.0398214
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0017451    0.0005422   0.0029480
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025038    0.0004765   0.0045311
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0087078    0.0021830   0.0152327
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0003594   -0.0024472   0.0031659
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0210017   -0.0017800   0.0437834
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0101719   -0.0060837   0.0264275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0173712   -0.0137099   0.0484522
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009719   -0.0040329   0.0020891
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0234501    0.0018883   0.0450120
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007237    0.0002003   0.0012470
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015691    0.0001308   0.0030074
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0098699    0.0020437   0.0176961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0004935   -0.0010514   0.0020383
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0041964   -0.0245229   0.0161301
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0135302   -0.0623871   0.0353266
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012290   -0.0060734   0.0036154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0162922   -0.0088086   0.0413930
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001878   -0.0003078   0.0006834
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0001239   -0.0016260   0.0018738
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0011037   -0.0088744   0.0110818
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001931   -0.0036989   0.0033126


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1129442   -0.0516056   0.2517460
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0190408   -0.0278178   0.0637632
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0563486   -0.0765440   0.1728365
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0078584   -0.0315097   0.0152505
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0408163   -0.0040252   0.0836551
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0173452    0.0045247   0.0300007
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0085567    0.0016049   0.0154601
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0117962    0.0028766   0.0206359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0006277   -0.0042861   0.0055174
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1957360   -0.0339605   0.3744050
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0832997   -0.0579063   0.2056580
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1604278   -0.1766897   0.4009623
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0144264   -0.0608503   0.0299659
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0986395    0.0044409   0.1839250
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0799020    0.0205454   0.1356614
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0148960    0.0011614   0.0284417
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0751036    0.0145477   0.1319383
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0081382   -0.0176464   0.0332695
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0128130   -0.0768169   0.0473867
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0513690   -0.2541270   0.1186086
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0091203   -0.0457079   0.0261872
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0784600   -0.0494930   0.1908132
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0049389   -0.0083784   0.0180804
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009101   -0.0120275   0.0136824
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0019347   -0.0157121   0.0192750
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0003939   -0.0075712   0.0067322
