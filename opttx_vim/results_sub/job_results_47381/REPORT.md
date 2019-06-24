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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              86   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             75   257
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             176   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   191
Birth       ki0047075b-MAL-ED       INDIA                          0%              47   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       109   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   206
Birth       ki0047075b-MAL-ED       NEPAL                          0%              60   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             56   173
Birth       ki0047075b-MAL-ED       PERU                           0%              83   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        88   287
Birth       ki0047075b-MAL-ED       PERU                           >5%            116   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             193   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              60   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        42   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   123
Birth       ki1000109-ResPak        PAKISTAN                       0%               1     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               8    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             12    27
Birth       ki1114097-CMIN          BANGLADESH                     0%              11    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2    13
Birth       ki1114097-CMIN          BRAZIL                         0%              38   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        47   115
Birth       ki1114097-CMIN          BRAZIL                         >5%             30   115
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       190   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            270   672
6 months    ki1114097-CMIN          PERU                           0%             184   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   635
6 months    ki1114097-CMIN          PERU                           >5%            267   635
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             151   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/bfa63663-291b-444c-9909-389a1b2a9387/3ff389df-1a4a-4874-a959-dfe23487e63e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0452080   -1.2447232   -0.8456929
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9762668   -1.1945798   -0.7579539
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.7939030   -1.0663610   -0.5214451
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.8639980   -1.0558876   -0.6721083
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.9338716   -1.5974135   -0.2703297
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9813192   -1.5123716   -0.4502668
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.0633856   -1.8700638   -0.2567073
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed           0.1097194   -0.1627930    0.3822319
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0922297   -1.2714734   -0.9129859
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.2770314   -1.4423662   -1.1116966
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.5565233   -0.7408058   -0.3722407
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2596710   -1.4349891   -1.0843528
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.6089349   -1.6145751    0.3967054
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3506017   -1.5828848   -1.1183187
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -1.1768730   -1.6708514   -0.6828945
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3429015   -1.5005509   -1.1852522
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1004982   -1.2338102   -0.9671862
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1533915   -1.2719134   -1.0348696
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -1.8281251   -2.0605818   -1.5956684
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed          -0.4954438   -0.8932796   -0.0976080
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.6001063   -0.7596054   -0.4406073
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.5008514   -0.6384935   -0.3632092
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1765777   -0.4810910    0.1279356
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -2.0440422   -2.2682269   -1.8198575
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.7821485   -1.9500191   -1.6142778
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.2243181   -1.4301976   -1.0184386
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.5399327   -1.7138935   -1.3659718
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.2469060   -2.0166450   -0.4771669
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5999249   -2.8470946   -2.3527552
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.0985303   -2.2839194   -1.9131413
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5191030   -1.6776763   -1.3605297
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4490732   -1.5682163   -1.3299300
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -2.5382949   -2.7383020   -2.3382878
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -1.3459634   -1.5659192   -1.1260077
24 months   ki1114097-CMIN          PERU                           optimal              observed          -1.5106291   -1.7173451   -1.3039131
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -1.2748545   -1.4796333   -1.0700756


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.7068651   -0.8323249   -0.5814053
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1114097-CMIN          BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-ResPak        PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN          BRAZIL                         observed             observed          -0.6841667   -0.8870073   -0.4813261
6 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.6242708   -0.7083402   -0.5402014
6 months    ki1114097-CMIN          PERU                           observed             observed          -0.5133753   -0.5929878   -0.4337629
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -1.5769713   -1.7148941   -1.4390486
24 months   ki1114097-CMIN          PERU                           observed             observed          -1.4709290   -1.5934208   -1.3484372
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0391889   -0.2103990    0.1320213
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0343642   -0.2224350    0.1537065
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0850013   -0.1387258    0.3087284
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0682320   -0.2246262    0.0881622
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2270066   -0.4281181    0.8821312
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0474980   -0.3827002    0.4776962
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0466144   -0.6144289    0.5212001
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0520673   -0.2486843    0.1445497
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1134481   -0.2620808    0.0351846
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0566641   -0.0665544    0.1798827
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0045361   -0.1611113    0.1520392
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0671300   -0.2022164    0.0679564
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.4544411   -1.4367542    0.5278720
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0095197   -0.2119041    0.1928647
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.2260490   -0.6747022    0.2226042
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0644805   -0.1934645    0.0645034
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0133941   -0.1035723    0.1303606
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0452868   -0.1394132    0.0488396
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0436875   -0.1481142    0.2354893
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed          -0.1887229   -0.5110147    0.1335689
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0241645   -0.1542960    0.1059670
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.0125239   -0.1308240    0.1057761
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1373440   -0.4109098    0.1362217
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1009290   -0.0776758    0.2795337
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0636665   -0.1788336    0.0515006
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0509012   -0.2219077    0.1201052
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2101669   -0.3499658   -0.0703679
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3759302   -1.1316481    0.3797878
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0059629   -0.2254670    0.2135411
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0822641   -0.2383145    0.0737862
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0670148   -0.2037133    0.0696837
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0195401   -0.0747033    0.1137835
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0273445   -0.1387644    0.1934534
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.2310079   -0.4318117   -0.0302042
24 months   ki1114097-CMIN          PERU                           optimal              observed           0.0397002   -0.1221956    0.2015959
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.5786349    0.3699140    0.7873559
