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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              79   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             70   241
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   183
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       107   203
Birth       ki0047075b-MAL-ED       INDIA                          0%              46   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   203
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   168
Birth       ki0047075b-MAL-ED       NEPAL                          0%              56   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             55   168
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        84   279
Birth       ki0047075b-MAL-ED       PERU                           0%              82   279
Birth       ki0047075b-MAL-ED       PERU                           >5%            113   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             192   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        40   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             19   118
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     5
Birth       ki1000109-ResPak        PAKISTAN                       0%               0     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             10    23
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0     8
Birth       ki1114097-CMIN          BANGLADESH                     0%               6     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2     8
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        46   111
Birth       ki1114097-CMIN          BRAZIL                         0%              36   111
Birth       ki1114097-CMIN          BRAZIL                         >5%             29   111
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       168   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       189   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            271   672
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   634
6 months    ki1114097-CMIN          PERU                           0%             184   634
6 months    ki1114097-CMIN          PERU                           >5%            266   634
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
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
![](/tmp/2d6d7d19-8dfc-4b64-9402-e66889d113ba/25b8ac29-7d2e-4269-b545-8cc93d7b109a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7733509   -1.0211835   -0.5255183
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3097149   -1.5616119   -1.0578179
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.2032573   -1.4453668   -0.9611479
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0630291   -0.1435314    0.2695896
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.5590562   -0.8924313   -0.2256812
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0087678    0.7359120    1.2816236
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.3746512   -1.1624698    0.4131675
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.1064382   -0.5595728    0.3466964
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1555545   -0.3857491    0.0746401
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9737124   -1.2707986   -0.6766263
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2635755    0.0319133    0.4952377
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.1116294    0.9160754    1.3071833
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2863000   -0.0752648    0.6478648
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6579104    0.3958074    0.9200133
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0474310   -0.2957434    0.2008814
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.2920201   -0.4586948   -0.1253454
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0733524   -0.2358080    0.0891032
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0124821   -0.1353713    0.1603355
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6247035   -0.8708638   -0.3785433
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.3147962   -0.0903171    0.7199094
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0858181   -0.2437648    0.0721286
6 months    ki1114097-CMIN          PERU                           optimal              observed           0.9254352    0.7645646    1.0863058
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.8535928    0.6277121    1.0794734
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9194473   -1.1439095   -0.6949850
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9942803   -1.1552360   -0.8333246
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4675639   -0.6719600   -0.2631678
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.2212014    0.0382804    0.4041225
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1396634   -0.0259910    0.3053178
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2082011   -0.1257181    0.5421202
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8589407   -1.0502355   -0.6676458
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.7900475   -0.9413986   -0.6386963
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5343772   -0.6691747   -0.3995797
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.7014830   -0.9212025   -0.4817635
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.1835644   -0.4115821    0.0444532
24 months   ki1114097-CMIN          PERU                           optimal              observed           0.9212085    0.7447124    1.0977046
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.4645673    0.1751461    0.7539885


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0415200   -0.1860797    0.1030397
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1114097-CMIN          BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-ResPak        PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN          BRAZIL                         observed             observed           0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0832589   -0.1713269    0.0048090
6 months    ki1114097-CMIN          PERU                           observed             observed           0.6708938    0.5815040    0.7602836
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.2053345   -0.3365972   -0.0740718
24 months   ki1114097-CMIN          PERU                           observed             observed           0.7958060    0.6890764    0.9025356
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1897196   -0.3844819    0.0050426
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.2406016    0.0200778    0.4611255
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2987931    0.0983387    0.4992474
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1366133   -0.3075564    0.0343297
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.5175362    0.2180463    0.8170261
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2155474   -0.4410352    0.0099403
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.3762184   -1.1268848    0.3744480
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0268050   -0.3969894    0.3433794
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0157585   -0.1744024    0.2059194
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.2703156    0.0334304    0.5072007
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1525303   -0.3349292    0.0298686
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0572338   -0.2063061    0.0918386
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2557735   -0.1132008    0.6247477
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1408591   -0.3813011    0.0995829
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1209307   -0.2879639    0.0461025
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1468900   -0.2844909   -0.0092892
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1350182   -0.2642150   -0.0058214
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0172801   -0.1090202    0.1435805
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0466583   -0.1649309    0.2582474
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.2741853   -0.0437967    0.5921674
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0025592   -0.1299690    0.1350874
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.2545414   -0.3923617   -0.1167211
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.2148390    0.0075483    0.4221298
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0986218   -0.0881789    0.2854225
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0419896   -0.0786484    0.1626275
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0911165   -0.0720733    0.2543064
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1013009   -0.2344810    0.0318792
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2870383    0.1600213    0.4140552
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1581076   -0.4530322    0.1368169
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0526384   -0.2146479    0.1093712
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0978937   -0.2157368    0.0199494
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0759730   -0.1586563    0.0067103
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1520561   -0.3497037    0.0455914
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0217701   -0.1972434    0.1537032
24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.1254025   -0.2601150    0.0093101
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.1022620   -0.1545564    0.3590804
