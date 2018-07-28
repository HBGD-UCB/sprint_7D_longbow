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
![](/tmp/5f139fa4-2630-481b-9926-8e62541a1386/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f139fa4-2630-481b-9926-8e62541a1386/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f139fa4-2630-481b-9926-8e62541a1386/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f139fa4-2630-481b-9926-8e62541a1386/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1374784    0.0893776   0.1855793
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2464380    0.1053274   0.3875485
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3909925    0.3341866   0.4477985
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.0588692    0.0276457   0.0900926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2595110    0.2061281   0.3128939
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2796410    0.2265650   0.3327170
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2283207    0.2106960   0.2459453
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2028972    0.1662417   0.2395526
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4580659    0.3974209   0.5187109
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5878685    0.4347323   0.7410047
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0980633    0.0822484   0.1138782
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0912299    0.0710249   0.1114349
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2913443    0.2836192   0.2990694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3101863    0.2846630   0.3357096
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7289570    0.7035505   0.7543635
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8461825    0.8113194   0.8810456
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5695306    0.5517983   0.5872629
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0241919    0.0184705   0.0299134
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0864170    0.0472966   0.1255373
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2246954    0.0983345   0.3510562
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1121845    0.0749051   0.1494639
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1335501    0.0644310   0.2026691
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0971991    0.0573552   0.1370430
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1365339    0.0866178   0.1864500
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0685871    0.0579971   0.0791772
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0764228    0.0545777   0.0982679
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2072549    0.1554364   0.2590733
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.0646933   -0.0308510   0.1602376
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0095480    0.0064593   0.0126367
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0291176    0.0148166   0.0434187
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1036865    0.0984873   0.1088858
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1105200    0.0928168   0.1282233
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1213457    0.1004635   0.1422278
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2905740    0.2341454   0.3470027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0679709    0.0590219   0.0769200
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9626086    0.9559531   0.9692641
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.2973294    0.2359448   0.3587141
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.0304310    0.0025541   0.0583079
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2634795    0.2056427   0.3213163
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2068956    0.1539459   0.2598454
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1367024    0.1203564   0.1530485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1880338    0.1553704   0.2206971
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1826344    0.1237493   0.2415194
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.0572979   -0.0185429   0.1331386
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0371047    0.0279021   0.0463072
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0369485    0.0254152   0.0484819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1369157    0.1297553   0.1440761
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1543818    0.1315938   0.1771699
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5736311    0.5329632   0.6142990
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9421368    0.9024281   0.9818454
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4799537    0.4588999   0.5010074
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0157710    0.0100146   0.0215273


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


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  1.7925574    0.9171987    3.5033434
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1505634    0.0849288    0.2669217
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.0775691    0.8103867    1.4328407
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.8886500    0.7311476    1.0800813
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  1.2833710    0.9675905    1.7022090
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.9303166    0.7383908    1.1721285
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.0646726    0.9768966    1.1603355
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.1608126    1.1007834    1.2241154
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0424769    0.0334362    0.0539622
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  2.6001304    1.2741605    5.3059862
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                  1.1904501    0.6452129    2.1964398
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.4046832    0.8130075    2.4269579
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  1.1142439    0.8059052    1.5405528
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.3121438    0.0697032    1.3978372
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                  3.0496032    1.8007722    5.1644954
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.0659053    0.9014603    1.2603484
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  2.3945972    1.8567010    3.0883248
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 14.1620638   12.4019542   16.1719717
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1023477    0.0393128    0.2664538
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.7852437    0.5608803    1.0993569
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  1.3754967    1.1166702    1.6943152
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.3137300    0.0807807    1.2184413
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.9957917    0.7304317    1.3575549
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.1275682    0.9644005    1.3183424
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.6424087    1.5125196    1.7834522
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0328593    0.0226783    0.0476109


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0170280   -0.0065760    0.0406320
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0578523    0.0309758    0.0847289
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1258393    0.0845868    0.1670919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0013733   -0.0064333    0.0036867
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0135653   -0.0043302    0.0314609
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0025463    0.0012310    0.0038615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012708   -0.0006966    0.0032382
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0092368    0.0030025    0.0154712
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0030340   -0.0003500    0.0064180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0208792   -0.0013954    0.0431538
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0099277   -0.0060381    0.0258935
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0110812   -0.0182640    0.0404264
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012187   -0.0042457    0.0018083
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0304810    0.0076043    0.0533576
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0004910   -0.0011409    0.0001589
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016519    0.0002195    0.0030842
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0100711    0.0025418    0.0176005
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0073347   -0.0100619   -0.0046075
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0301815    0.0076615    0.0527015
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0000866   -0.0391250    0.0389517
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019507   -0.0065834    0.0026820
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0250159    0.0003669    0.0496649
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009251    0.0003161    0.0015341
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0007873   -0.0025299    0.0009553
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0031844   -0.0131897    0.0068209
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0102514    0.0055383    0.0149644


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1102090   -0.0534230    0.2484235
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1288916    0.0682737    0.1855658
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3265582    0.2206239    0.4180938
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0060511   -0.0285976    0.0160011
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0287626   -0.0100188    0.0660549
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0253085    0.0114186    0.0390032
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0043428   -0.0024009    0.0110411
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0125128    0.0040329    0.0209205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0052990   -0.0006193    0.0111822
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1945939   -0.0291691    0.3697062
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0812996   -0.0563513    0.2010136
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1023381   -0.2066318    0.3321932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0180905   -0.0640528    0.0258865
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1282136    0.0282918    0.2178603
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0542127   -0.1348359    0.0206827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0156814    0.0020149    0.0291608
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0766352    0.0190589    0.1308320
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1209631   -0.1700435   -0.0739416
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0921542    0.0214528    0.1577472
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0003290   -0.1601134    0.1374481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0144761   -0.0494720    0.0193529
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1204714   -0.0039740    0.2294915
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0243266    0.0096220    0.0388129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0057832   -0.0186753    0.0069458
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0055823   -0.0233130    0.0118412
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0209124    0.0112843    0.0304467
