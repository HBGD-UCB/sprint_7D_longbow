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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
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
![](/tmp/05a072fa-a8f5-4146-b880-bea47dab63fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05a072fa-a8f5-4146-b880-bea47dab63fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05a072fa-a8f5-4146-b880-bea47dab63fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05a072fa-a8f5-4146-b880-bea47dab63fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0877705    0.0442508   0.1312903
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.0777895   -0.0520427   0.2076217
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                0.1095023    0.0720187   0.1469859
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                0.3822132    0.3134210   0.4510053
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0941066    0.0536312   0.1345820
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2498627    0.1959711   0.3037542
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1022397    0.0970281   0.1074513
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1012040    0.0835612   0.1188469
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0545388    0.0381118   0.0709658
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0180137    0.0021499   0.0338776
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0625783    0.0540345   0.0711220
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9635107    0.9569220   0.9700994
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1884073    0.1383554   0.2384592
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.0458549   -0.0415609   0.1332706
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0771677    0.0377942   0.1165411
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1338172    0.0829050   0.1847293
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0976072    0.0840877   0.1111266
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0350682    0.0116234   0.0585131
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2991276    0.2423282   0.3559269
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1108368    0.0063342   0.2153394
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0627188    0.0486687   0.0767689
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0393776    0.0251976   0.0535577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1640521    0.1558691   0.1722351
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1668821    0.1416975   0.1920666
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3850114    0.3525900   0.4174328
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0974425    0.0677601   0.1271249
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2288868    0.2128671   0.2449065
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9761738    0.9702531   0.9820945
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3239909    0.2570354   0.3909464
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.0442133    0.0101976   0.0782290
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2533169    0.1965467   0.3100871
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2316768    0.1774337   0.2859198
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0825105    0.0526121   0.1124089
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0033507    0.0013633   0.0053380
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6419688    0.5965996   0.6873379
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8698308    0.8273687   0.9122929
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7910668    0.7657637   0.8163700
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9707686    0.9515697   0.9899675
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6274638    0.6081061   0.6468215
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9885720    0.9840334   0.9931105


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
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
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


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8862825    0.1552490    5.0595931
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  3.4904578    2.3788468    5.1215133
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  2.6551021    1.6361528    4.3086242
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.9898705    0.8256948    1.1866899
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.3302919    0.1312296    0.8313115
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 15.3968882   13.4260682   17.6570059
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.2433816    0.0354402    1.6713942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.7341088    0.9001732    3.3406164
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3592792    0.1815203    0.7111136
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.3705335    0.1417160    0.9688047
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.6278441    0.4254142    0.9265986
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.0172504    0.8682058    1.1918814
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2530899    0.1847949    0.3466247
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.2648759    3.9706916    4.5808561
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1364647    0.0600798    0.3099644
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.9145728    0.6556654    1.2757168
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0406091    0.0207325    0.0795416
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.3549426    1.2464962    1.4728239
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.2271638    1.1820316    1.2740192
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000    1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.5755043    1.5267945    1.6257681


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0221771   -0.0019979    0.0463522
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0089646   -0.0074997    0.0254289
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0127636   -0.0189747    0.0445019
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013764   -0.0000458    0.0027985
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0041313   -0.0012483    0.0095109
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0021132   -0.0037169   -0.0005094
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0313730    0.0086600    0.0540859
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1196827    0.0787349    0.1606305
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007368   -0.0043972    0.0029235
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0113418   -0.0084690    0.0311525
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0000324   -0.0012516    0.0011867
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021911    0.0000800    0.0043022
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0226034    0.0124063    0.0328005
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0170034   -0.0220119   -0.0119949
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0441683    0.0153353    0.0730013
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0996242    0.0552638    0.1439846
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0027435    0.0011612    0.0043259
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0093470   -0.0023199    0.0210140
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0026153   -0.0035600    0.0087906
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0078446   -0.0115868   -0.0041024


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.2017061   -0.0377070    0.3858834
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0756718   -0.0705963    0.2019562
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1194310   -0.2186305    0.3637106
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0132832   -0.0005180    0.0268940
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0704159   -0.0238932    0.1560384
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0349484   -0.0626598   -0.0079596
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.1427470    0.0343225    0.2389977
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.6079882    0.4060937    0.7412500
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076063   -0.0460983    0.0294692
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0365310   -0.0293208    0.0981699
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0005175   -0.0201411    0.0187285
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0131801    0.0004199    0.0257774
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0554529    0.0303432    0.0799123
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0802488   -0.1051885   -0.0558719
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1199707    0.0398109    0.1934386
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2822687    0.1606558    0.3862610
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0321807    0.0099438    0.0539182
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0143510   -0.0037568    0.0321321
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0032951   -0.0045100    0.0110396
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0126604   -0.0187697   -0.0065877
