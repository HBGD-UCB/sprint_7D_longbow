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
      Y: ['haz']
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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              47     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0             170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1              21     191
Birth       ki0047075b-MAL-ED          INDIA                          0             173     206
Birth       ki0047075b-MAL-ED          INDIA                          1              33     206
Birth       ki0047075b-MAL-ED          NEPAL                          0             155     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              18     173
Birth       ki0047075b-MAL-ED          PERU                           0             253     287
Birth       ki0047075b-MAL-ED          PERU                           1              34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              28     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              18     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              16      90
Birth       ki1000108-IRC              INDIA                          0             343     388
Birth       ki1000108-IRC              INDIA                          1              45     388
Birth       ki1000109-EE               PAKISTAN                       0               1       2
Birth       ki1000109-EE               PAKISTAN                       1               1       2
Birth       ki1000109-ResPak           PAKISTAN                       0               5       7
Birth       ki1000109-ResPak           PAKISTAN                       1               2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              46     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               5      27
Birth       ki1101329-Keneba           GAMBIA                         0            1459    1541
Birth       ki1101329-Keneba           GAMBIA                         1              82    1541
Birth       ki1114097-CMIN             BANGLADESH                     0               7      13
Birth       ki1114097-CMIN             BANGLADESH                     1               6      13
Birth       ki1114097-CMIN             BRAZIL                         0             110     115
Birth       ki1114097-CMIN             BRAZIL                         1               5     115
Birth       ki1114097-CMIN             PERU                           0              10      10
Birth       ki1114097-CMIN             PERU                           1               0      10
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13851   13884
Birth       ki1119695-PROBIT           BELARUS                        1              33   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1432   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640
Birth       ki1135781-COHORTS          INDIA                          1             792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            6338   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             247     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              21     209
6 months    ki0047075b-MAL-ED          INDIA                          0             197     236
6 months    ki0047075b-MAL-ED          INDIA                          1              39     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             209     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              27     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             229     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             296     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              73     369
6 months    ki1000108-IRC              INDIA                          0             361     407
6 months    ki1000108-IRC              INDIA                          1              46     407
6 months    ki1000109-EE               PAKISTAN                       0             246     372
6 months    ki1000109-EE               PAKISTAN                       1             126     372
6 months    ki1000109-ResPak           PAKISTAN                       0             173     235
6 months    ki1000109-ResPak           PAKISTAN                       1              62     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             523     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             504     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              59     563
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CMIN             BRAZIL                         0             104     108
6 months    ki1114097-CMIN             BRAZIL                         1               4     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0             748     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             100     848
6 months    ki1114097-CMIN             PERU                           0             605     637
6 months    ki1114097-CMIN             PERU                           1              32     637
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7446    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             849    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860
6 months    ki1135781-COHORTS          INDIA                          1             812    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11751   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5060   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              16     169
24 months   ki0047075b-MAL-ED          INDIA                          0             190     227
24 months   ki0047075b-MAL-ED          INDIA                          1              37     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             202     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              26     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             216     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              22     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             297     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              75     372
24 months   ki1000108-IRC              INDIA                          0             362     409
24 months   ki1000108-IRC              INDIA                          1              47     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              59     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0             448     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1              51     499
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             450     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             101     551
24 months   ki1114097-CMIN             PERU                           0             343     429
24 months   ki1114097-CMIN             PERU                           1              86     429
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             356     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             101     457
24 months   ki1135781-COHORTS          GUATEMALA                      0             742    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1             331    1073
24 months   ki1135781-COHORTS          INDIA                          0            4699    5340
24 months   ki1135781-COHORTS          INDIA                          1             641    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5961    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2671    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3396    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/25c5ec7f-3619-4686-aefa-89da9961cffb/fb7a81cf-f366-45ba-ad0f-0b2202580533/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7338767   -0.8344130   -0.6333405
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5028557   -0.6292824   -0.3764291
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6936405   -0.8046053   -0.5826756
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4671427   -0.5907335   -0.3435519
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6971508   -0.7889296   -0.6053721
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5024955   -0.6107043   -0.3942866
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5924195   -0.7494269   -0.4354122
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6152243   -0.7683742   -0.4620744
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0485704   -0.0897530    0.1868938
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9623287   -1.0709387   -0.8537188
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7413318   -1.0577323   -0.4249313
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2052579    0.1518246    0.2586911
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.1997190    0.0288507    0.3705873
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3344750    1.1740000    1.4949499
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2355482   -0.2526576   -0.2184388
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3067785    0.2350297    0.3785273
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3927768   -0.4163862   -0.3691675
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0874639   -0.1208594   -0.0540684
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9678575   -0.9820840   -0.9536310
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9829100   -1.0525674   -0.9132526
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0059836   -1.1136162   -0.8983510
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1238499   -0.0241308    0.2718306
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0415750   -1.1557310   -0.9274190
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5426133   -0.7441923   -0.3410343
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1680604   -1.2708870   -1.0652338
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9841010   -1.1130453   -0.8551566
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1759339   -1.2960438   -1.0558240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2234901   -1.3728319   -1.0741483
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1190514   -1.2528643   -0.9852385
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7225740   -1.8437125   -1.6014356
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.1952441   -1.4356991   -0.9547892
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0563825   -1.1330244   -0.9797407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2545303   -1.3469859   -1.1620747
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2250820   -1.3141209   -1.1360430
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9874666   -1.0643382   -0.9105950
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0450494   -1.1170265   -0.9730724
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4629372   -0.5118318   -0.4140427
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8054878   -0.8525981   -0.7583775
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.1784425   -1.2701738   -1.0867112
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1802710   -1.2526762   -1.1078659
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3231177   -1.4636398   -1.1825957
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4108420   -0.4805568   -0.3411272
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4361546   -0.5136269   -0.3586822
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1994817   -0.3710108   -0.0279526
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1204864    0.0223131    0.2186597
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8003209   -0.8268848   -0.7737569
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5929940   -1.6591701   -1.5268178
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8312676   -0.8582624   -0.8042727
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0651961   -1.1069660   -1.0234262
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.0574923   -1.1147481   -1.0002365
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9604213   -0.9838583   -0.9369843
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0074703   -1.0443405   -0.9706001
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8137226   -1.9460904   -1.6813549
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0933450   -0.0818244    0.2685145
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7309129   -1.8603682   -1.6014576
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1639551   -1.2821418   -1.0457683
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7275624   -1.8976375   -1.5574874
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6098252   -1.7557378   -1.4639125
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5080205   -2.6539745   -2.3620666
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4782053   -2.5906038   -2.3658069
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7186344   -1.8183485   -1.6189204
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0068621   -2.1121433   -1.9015810
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5116953   -1.5963886   -1.4270020
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3236688   -1.4089613   -1.2383762
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4811501   -1.5319680   -1.4303321
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7981825   -1.8846086   -1.7117564
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.2688810   -2.4106473   -2.1271147
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.3074432   -1.4057668   -1.2091196
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.3123384   -1.4079614   -1.2167153
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.6004296   -0.7753919   -0.4254672
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1287531   -0.4304945    0.1729883
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2602328   -2.3893116   -2.1311541
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6237570   -2.6990678   -2.5484461
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7887946   -1.8223520   -1.7552372
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3396238   -2.3852020   -2.2940456
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4868892   -1.5715952   -1.4021832
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7610145   -1.7907481   -1.7312810
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5292024   -1.5660780   -1.4923269


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8907480   -0.9167182   -0.8647779
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5626652   -1.6124881   -1.5128424
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8612302   -2.9255771   -2.7968833
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9067566   -1.9394274   -1.8740857
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3505202   -0.4477381   -0.2533022
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2580867   -0.3684913   -0.1476820
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3169906   -0.4230153   -0.2109659
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2417591   -0.3533758   -0.1301423
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2350791   -0.3159433   -0.1542150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2241076   -0.3094449   -0.1387703
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3414016   -0.5125160   -0.1702872
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3502202   -0.5211313   -0.1793090
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3566116   -0.4624248   -0.2507984
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4323237   -0.6059762   -0.2586711
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3686682   -0.6790278   -0.0583086
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1711112   -0.2096538   -0.1325686
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1420668   -0.2662344   -0.0178991
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0089974   -0.0136134   -0.0043814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2654178   -0.2792610   -0.2515746
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1770484   -0.2276988   -0.1263980
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2771193   -0.2963011   -0.2579374
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1615852   -0.1849499   -0.1382206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6068832   -0.6231661   -0.5906003
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5147542   -0.5830400   -0.4464684
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1996942   -0.2773661   -0.1220222
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0728292   -0.1307142   -0.0149441
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1787922   -0.2524046   -0.1051798
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0184460   -0.1835088    0.1466168
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1587406   -0.2204235   -0.0970577
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0792750   -0.1347381   -0.0238119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1841876   -0.2556916   -0.1126835
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1999606   -0.2809175   -0.1190038
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1153548   -0.1735857   -0.0571239
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4778964   -0.5799973   -0.3757955
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2076778   -0.3298989   -0.0854568
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3454737   -0.3868625   -0.3040850
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6441539   -0.7487291   -0.5395788
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1823001   -0.2318101   -0.1327901
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0996375   -0.1335397   -0.0657352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1536289   -0.1911084   -0.1161493
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0805017   -0.0988435   -0.0621599
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0986491   -0.1193689   -0.0779294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3834583   -0.4727223   -0.2941943
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1518811   -0.1961897   -0.1075726
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4613199   -0.5799508   -0.3426889
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1967523   -0.2418040   -0.1517006
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0771002   -0.1072133   -0.0469872
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1144400   -0.1887493   -0.0401308
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0134877   -0.0203599   -0.0066156
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0904272   -0.1010099   -0.0798445
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2227396   -0.2637173   -0.1817620
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1655779   -0.1802272   -0.1509285
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0753762   -0.0899738   -0.0607787
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.6026984   -0.6666489   -0.5387478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3526719   -0.3663158   -0.3390280
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3373238   -0.3617654   -0.3128821
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1293906   -0.1933967   -0.0653844
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0515107   -0.1064794    0.0034579
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1149021   -0.1825263   -0.0472779
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1112642   -0.1723021   -0.0502263
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0225371   -0.1492088    0.1041347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0130110   -0.0704879    0.0444660
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0978673   -0.1558102   -0.0399245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0811629   -0.1328897   -0.0294362
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0638432   -0.0993459   -0.0283405
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1739323   -0.2317229   -0.1161418
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0744226   -0.1097186   -0.0391266
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1058643   -0.1463943   -0.0653343
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0815152   -0.1021643   -0.0608660
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0854080   -0.1200601   -0.0507560
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2420695   -0.3436976   -0.1404413
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2671212   -0.3285314   -0.2057110
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.2683842   -0.3306043   -0.2061642
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0957900   -0.1683025   -0.0232774
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0026517   -0.0136282    0.0083248
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1392201   -0.2009059   -0.0775343
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2374732   -0.2816702   -0.1932763
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1179620   -0.1323780   -0.1035459
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0502412   -0.0630581   -0.0374244
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3885512   -0.4558754   -0.3212270
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2516314   -0.2681514   -0.2351114
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2290657   -0.2507561   -0.2073753
