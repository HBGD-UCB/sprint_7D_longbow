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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        single    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       47     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      196     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       45     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       98     212
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      151     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        6     191
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      175     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        2     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      145     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        3     169
Birth       ki0047075b-MAL-ED          INDIA                          0               0      173     205
Birth       ki0047075b-MAL-ED          INDIA                          0               1       32     205
6 months    ki0047075b-MAL-ED          INDIA                          0               0      190     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1       44     234
24 months   ki0047075b-MAL-ED          INDIA                          0               0      131     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1       94     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      224     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1       12     236
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      179     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       49     228
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       18     173
Birth       ki0047075b-MAL-ED          PERU                           0               0      226     287
Birth       ki0047075b-MAL-ED          PERU                           0               1       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               0       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               1        7     287
6 months    ki0047075b-MAL-ED          PERU                           0               0      192     273
6 months    ki0047075b-MAL-ED          PERU                           0               1       48     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       21     273
6 months    ki0047075b-MAL-ED          PERU                           1               1       12     273
24 months   ki0047075b-MAL-ED          PERU                           0               0      111     201
24 months   ki0047075b-MAL-ED          PERU                           0               1       65     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       16     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      133     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      101     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       15     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      121     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       19     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       83     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       31     254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       85     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       46     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       69     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       38     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      100     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       17     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      183     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       61     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      147     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        6     214
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      173     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       75     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       18     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1       11     277
Birth       ki1119695-PROBIT           BELARUS                        0               0    13312   13884
Birth       ki1119695-PROBIT           BELARUS                        0               1       31   13884
Birth       ki1119695-PROBIT           BELARUS                        1               0      539   13884
Birth       ki1119695-PROBIT           BELARUS                        1               1        2   13884
6 months    ki1119695-PROBIT           BELARUS                        0               0    14188   15761
6 months    ki1119695-PROBIT           BELARUS                        0               1      930   15761
6 months    ki1119695-PROBIT           BELARUS                        1               0      585   15761
6 months    ki1119695-PROBIT           BELARUS                        1               1       58   15761
24 months   ki1119695-PROBIT           BELARUS                        0               0     3559    4035
24 months   ki1119695-PROBIT           BELARUS                        0               1      331    4035
24 months   ki1119695-PROBIT           BELARUS                        1               0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        1               1       13    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11582   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1320   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      763   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      107   13772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6498    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1277    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      393    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       97    8265
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      150     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      263     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0        9     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     456
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      499     893
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      327     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       30     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       37     893
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      198    1013
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      728    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       11    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       76    1013
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      679     767
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       40     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       43     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        5     767
Birth       ki1135781-COHORTS          INDIA                          0               0     4206    4778
Birth       ki1135781-COHORTS          INDIA                          0               1      565    4778
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4778
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4778
6 months    ki1135781-COHORTS          INDIA                          0               0     3991    4971
6 months    ki1135781-COHORTS          INDIA                          0               1      971    4971
6 months    ki1135781-COHORTS          INDIA                          1               0        7    4971
6 months    ki1135781-COHORTS          INDIA                          1               1        2    4971
24 months   ki1135781-COHORTS          INDIA                          0               0     1900    3756
24 months   ki1135781-COHORTS          INDIA                          0               1     1847    3756
24 months   ki1135781-COHORTS          INDIA                          1               0        3    3756
24 months   ki1135781-COHORTS          INDIA                          1               1        6    3756
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2760    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      176    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       68    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        6    3010
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2055    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      553    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       54    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       14    2676
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      895    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1462    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       24    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       35    2416


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       stunted
## single   0   1
##      0 114  98
##      1   0   0
##       stunted
## single   0   1
##      0 131  94
##      1   0   0
##       stunted
## single   0   1
##      0 179  49
##      1   0   0
##       stunted
## single   0   1
##      0 196  45
##      1   0   0
##       stunted
## single   0   1
##      0 190  44
##      1   0   0
##       stunted
## single   0   1
##      0 224  12
##      1   0   0
##       stunted
## single   0   1
##      0 210  47
##      1   0   0
##       stunted
## single   0   1
##      0 173  32
##      1   0   0
##       stunted
## single   0   1
##      0 155  18
##      1   0   0
```




# Results Detail

## Results Plots
![](/tmp/4ac44da2-2a52-4c16-ae1c-0ed80a6b5b07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ac44da2-2a52-4c16-ae1c-0ed80a6b5b07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ac44da2-2a52-4c16-ae1c-0ed80a6b5b07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ac44da2-2a52-4c16-ae1c-0ed80a6b5b07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0903614   0.0466334   0.1340895
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2400000   0.0721465   0.4078535
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                0.1067194   0.0686074   0.1448313
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                0.2058824   0.0697321   0.3420326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0890411   0.0427554   0.1353268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1293103   0.0681320   0.1904887
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1023097   0.0970803   0.1075392
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1229885   0.1011643   0.1448127
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513574   0.0685336
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0188793   0.1432829
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2000000   0.1493010   0.2506990
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3636364   0.1992089   0.5280638
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1357143   0.0788706   0.1925580
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2719298   0.1900895   0.3537701
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986376   0.0849915   0.1122837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0786517   0.0390957   0.1182076
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3024194   0.2451517   0.3596870
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3793103   0.2023936   0.5562271
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0615161   0.0478304   0.0752018
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0902022   0.0609997   0.1194046
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1642444   0.1560085   0.1724802
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1979592   0.1626764   0.2332419
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3958838   0.3625146   0.4292530
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5522388   0.4331034   0.6713742
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2120399   0.1963494   0.2277304
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2058824   0.1097595   0.3020052
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3511450   0.2692337   0.4330563
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3551402   0.2642738   0.4460065
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0850900   0.0543677   0.1158123
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0896552   0.0500934   0.1292169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6368039   0.5903712   0.6832365
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7906977   0.6689718   0.9124235
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7861771   0.7597564   0.8125978
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8735632   0.8036939   0.9434326
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6202800   0.6006833   0.6398768
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5932203   0.4678486   0.7185921


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036160   0.0985259   0.1087061
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662432   0.1582164   0.1742700
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6513158   0.6075279   0.6951037
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7936821   0.7687506   0.8186137
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6196192   0.6002567   0.6389817


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.6560000   1.1346616   6.217128
Birth       ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 1.9291939   0.9098576   4.090518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4522546   0.7190881   2.932942
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2021195   0.9994220   1.445927
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.528447
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6197717   2.951849
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.8181818   1.0826943   3.053295
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.0036934   1.1962950   3.356018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7973803   0.4732978   1.343373
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.2542529   0.7581664   2.074941
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4663188   1.1317394   1.899811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2052722   1.0015548   1.450426
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3949518   1.1065489   1.758522
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9709605   0.6052100   1.557747
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0113775   0.7153936   1.429820
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0536514   0.6161681   1.801751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2416659   1.0471916   1.472256
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1111532   1.0188177   1.211857
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9563751   0.7723678   1.184220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0195862   -0.0042246   0.0433970
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0117475   -0.0054086   0.0289037
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0178291   -0.0162228   0.0518810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013063   -0.0001139   0.0027265
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010285   0.0020678
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0197802   -0.0019636   0.0415241
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0611361    0.0156412   0.1066310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017673   -0.0054756   0.0019411
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0080500   -0.0116153   0.0277152
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011703    0.0001543   0.0021863
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019988   -0.0001560   0.0041537
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0117310    0.0020630   0.0213991
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001565   -0.0026317   0.0023187
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0017961   -0.0532043   0.0567966
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001641   -0.0015387   0.0018668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0145119    0.0015502   0.0274736
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0075050    0.0009147   0.0140953
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0006608   -0.0037641   0.0024425


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1781411   -0.0569878   0.3609652
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0991630   -0.0549019   0.2307272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1668297   -0.2149637   0.4286474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0126072   -0.0011836   0.0262082
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173182   0.0338454
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0900000   -0.0133927   0.1828439
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3105714    0.0481228   0.5006585
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0182436   -0.0571908   0.0192689
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0259284   -0.0394954   0.0872345
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0186692    0.0025728   0.0345058
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0120235   -0.0010160   0.0248931
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0287796    0.0047314   0.0522468
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0007385   -0.0124887   0.0108754
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0050891   -0.1636132   0.1493326
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0019243   -0.0186117   0.0220462
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0222809    0.0020242   0.0421265
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0094560    0.0010822   0.0177595
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010665   -0.0060877   0.0039297
