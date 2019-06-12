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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              86   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             75   257
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             176   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   191
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       109   206
Birth       ki0047075b-MAL-ED       INDIA                          0%              47   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   206
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%              60   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             56   173
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        88   287
Birth       ki0047075b-MAL-ED       PERU                           0%              83   287
Birth       ki0047075b-MAL-ED       PERU                           >5%            116   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             193   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        42   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              60   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   123
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     6
Birth       ki1000109-ResPak        PAKISTAN                       0%               1     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               8    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             12    27
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0    13
Birth       ki1114097-CMIN          BANGLADESH                     0%              11    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2    13
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        47   115
Birth       ki1114097-CMIN          BRAZIL                         0%              38   115
Birth       ki1114097-CMIN          BRAZIL                         >5%             30   115
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       190   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            270   672
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   635
6 months    ki1114097-CMIN          PERU                           0%             184   635
6 months    ki1114097-CMIN          PERU                           >5%            267   635
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             151   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           0%              84   164
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
![](/tmp/7bf105c7-894f-41be-afed-f8f94a3959f3/cd090824-722f-466b-8d5e-528f6353001f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0934741   -1.3133800   -0.8735683
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.0258464   -1.2238904   -0.8278024
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.6709674   -0.9513997   -0.3905352
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.8090271   -0.9878570   -0.6301973
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3381145   -1.3133378    0.6371088
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8125626   -1.2874747   -0.3376506
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.2438417   -1.8277172   -0.6599663
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0095594   -0.2812937    0.2621750
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0968876   -1.2789769   -0.9147984
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.2658765   -1.4815024   -1.0502506
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.5193640   -0.7197170   -0.3190111
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2483326   -1.4141381   -1.0825270
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.7499755   -1.7845205    0.2845696
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2521736   -1.5143727   -0.9899744
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -1.1201617   -1.6182017   -0.6221217
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3393703   -1.4976307   -1.1811099
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1491790   -1.2803362   -1.0180218
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1467267   -1.2435099   -1.0499436
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -1.9112650   -2.1730607   -1.6494693
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed          -0.5406967   -0.8942707   -0.1871227
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.5106401   -0.6618904   -0.3593897
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.4218442   -0.5650949   -0.2785936
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1818411   -0.4861105    0.1224283
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -2.0455768   -2.2540477   -1.8371059
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.8392453   -2.0349545   -1.6435362
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.2914119   -1.5068477   -1.0759762
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.6079886   -1.7853176   -1.4306596
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.2899534   -2.0879639   -0.4919430
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6269095   -2.8921952   -2.3616238
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.0832282   -2.2640185   -1.9024380
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.6063805   -1.7591718   -1.4535892
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4718431   -1.5824159   -1.3612703
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -2.3944319   -2.6041252   -2.1847386
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -1.3501728   -1.5682795   -1.1320661
24 months   ki1114097-CMIN          PERU                           optimal              observed          -1.3650459   -1.5450840   -1.1850079
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -1.0144157   -1.2903388   -0.7384926


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0090772   -0.1661541    0.1843086
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0152153   -0.1501394    0.1805700
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0379343   -0.2668002    0.1909316
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1232028   -0.2694590    0.0230533
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3687506   -1.3216620    0.5841609
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1212585   -0.4756294    0.2331124
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.1338417   -0.3403070    0.6079905
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed           0.0672115   -0.1276572    0.2620802
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1087901   -0.2598802    0.0423000
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0455092   -0.1172359    0.2082544
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0416953   -0.2034715    0.1200810
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0784684   -0.2082133    0.0512764
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3134005   -1.3245959    0.6977949
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1079479   -0.3335503    0.1176545
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.2827603   -0.7375444    0.1720238
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0680118   -0.1979709    0.0619474
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0620749   -0.0521394    0.1762892
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0519516   -0.1264441    0.0225410
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.1268274   -0.0755833    0.3292382
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed          -0.1434700   -0.4414417    0.1545018
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.1136308   -0.2407606    0.0134991
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.0915311   -0.2143211    0.0312589
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1320806   -0.4054734    0.1413122
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1024636   -0.0668165    0.2717437
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0065696   -0.1452767    0.1321374
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0161926   -0.1573906    0.1897758
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1421109   -0.2808937   -0.0033281
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3328827   -1.1165074    0.4507420
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0210216   -0.2079493    0.2499926
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0975662   -0.2480887    0.0529562
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0202626   -0.1105775    0.1511028
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0423100   -0.0475353    0.1321553
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1165185   -0.2879701    0.0549332
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.2267985   -0.4267462   -0.0268509
24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.1058831   -0.2576227    0.0458566
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.3181962    0.0672631    0.5691293
