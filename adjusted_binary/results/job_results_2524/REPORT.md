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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      196     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1       38     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      195     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       45     240
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       98     212
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      113     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1       11     124
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      140     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        2     142
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      110     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        3     113
Birth       ki0047075b-MAL-ED          INDIA                          0                0      161     191
Birth       ki0047075b-MAL-ED          INDIA                          0                1       30     191
6 months    ki0047075b-MAL-ED          INDIA                          0                0      190     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1       45     235
24 months   ki0047075b-MAL-ED          INDIA                          0                0      132     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       95     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      221     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                1       11     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      176     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       49     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      150     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                1       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0                0      211     247
Birth       ki0047075b-MAL-ED          PERU                           0                1       27     247
Birth       ki0047075b-MAL-ED          PERU                           1                0        8     247
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     247
6 months    ki0047075b-MAL-ED          PERU                           0                0      195     259
6 months    ki0047075b-MAL-ED          PERU                           0                1       53     259
6 months    ki0047075b-MAL-ED          PERU                           1                0        8     259
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     259
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     193
24 months   ki0047075b-MAL-ED          PERU                           0                1       69     193
24 months   ki0047075b-MAL-ED          PERU                           1                0        3     193
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     193
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      164     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       19     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       31     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     216
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      172     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       39     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     248
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      131     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       72     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       12     237
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       72     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      131     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       37     246
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       19     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       49     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       41     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      104     213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      217     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      163     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      391     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1      144     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      190     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      237     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      487     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       94     581
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      386     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      190     576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      565     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1      150     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      382     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1      132     514
6 months    ki1114097-CONTENT          PERU                           0                0        3      57
6 months    ki1114097-CONTENT          PERU                           0                1        0      57
6 months    ki1114097-CONTENT          PERU                           1                0       52      57
6 months    ki1114097-CONTENT          PERU                           1                1        2      57
24 months   ki1114097-CONTENT          PERU                           0                0        3      48
24 months   ki1114097-CONTENT          PERU                           0                1        0      48
24 months   ki1114097-CONTENT          PERU                           1                0       42      48
24 months   ki1114097-CONTENT          PERU                           1                1        3      48
6 months    ki1148112-LCNI-5           MALAWI                         0                0       92     816
6 months    ki1148112-LCNI-5           MALAWI                         0                1       52     816
6 months    ki1148112-LCNI-5           MALAWI                         1                0      428     816
6 months    ki1148112-LCNI-5           MALAWI                         1                1      244     816
24 months   ki1148112-LCNI-5           MALAWI                         0                0       57     574
24 months   ki1148112-LCNI-5           MALAWI                         0                1       42     574
24 months   ki1148112-LCNI-5           MALAWI                         1                0      265     574
24 months   ki1148112-LCNI-5           MALAWI                         1                1      210     574
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       20   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       15   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    13239   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6319   19593
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       12   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        8   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    12567   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4216   16803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0        3    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        8    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4388    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4224    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2884    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1862    4747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3607    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1217    4825
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        stunted
## safeh20   0   1
##       0 114  98
##       1   0   0
##        stunted
## safeh20   0   1
##       0 132  95
##       1   0   0
##        stunted
## safeh20   0   1
##       0   0   0
##       1 386 190
##        stunted
## safeh20   0   1
##       0   0   0
##       1 382 132
##        stunted
## safeh20   0   1
##       0 195  45
##       1   0   0
##        stunted
## safeh20   0   1
##       0 190  45
##       1   0   0
##        stunted
## safeh20   0   1
##       0   0   0
##       1 217 163
##        stunted
## safeh20   0   1
##       0   0   0
##       1 487  94
##        stunted
## safeh20   0   1
##       0   0   0
##       1 565 150
##        stunted
## safeh20   0   1
##       0 196  38
##       1   0   0
##        stunted
## safeh20   0   1
##       0 113  11
##       1   0   0
##        stunted
## safeh20   0   1
##       0 161  30
##       1   0   0
##        stunted
## safeh20  0  1
##       0  0  0
##       1 22  5
##        stunted
## safeh20   0   1
##       0   0   0
##       1 575 247
```




# Results Detail

## Results Plots
![](/tmp/25bc5e5c-4f5f-4c1f-8d57-a820e4db02bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25bc5e5c-4f5f-4c1f-8d57-a820e4db02bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25bc5e5c-4f5f-4c1f-8d57-a820e4db02bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25bc5e5c-4f5f-4c1f-8d57-a820e4db02bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2188095   0.1012086   0.3364103
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0901138   0.0277006   0.1525271
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.6394958   0.5897219   0.6892698
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3230636   0.3153924   0.3307348
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1849738   0.1334273   0.2365203
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2678925   0.1409844   0.3948005
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6941279   0.5991331   0.7891227
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3283941   0.2633673   0.3934210
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3582992   0.2859656   0.4306329
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3634788   0.3276117   0.3993460
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.3824654   0.1810041   0.5839267
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512278   0.2431141   0.2593416
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3485327   0.2847803   0.4122851
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1460836   0.0668881   0.2252790
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7357859   0.6307089   0.8408629
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7097260   0.6370697   0.7823823
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4382455   0.3508995   0.5255915
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4398583   0.3960029   0.4837137


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1355932   0.0735587   0.1976277
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3232787   0.3156210   0.3309364
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2317073   0.1788752   0.2845395
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7183099   0.6577588   0.7788609
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.4118369   0.1728989   0.9809761
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.5051848   0.4657907   0.5479106
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 1.4482727   0.8560013   2.4503393
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.4731032   0.3671640   0.6096094
6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 1.0144561   0.8151493   1.2624941
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.6568642   0.3884359   1.1107897
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.4191388   0.2376059   0.7393643
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9645822   0.8111043   1.1471013
24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0036801   0.8083224   1.2462524


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0832163   -0.1690631    0.0026306
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.3162171   -0.3662790   -0.2661552
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0126069   -0.0080573    0.0332710
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4624206   -0.5446488   -0.3801924
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0044459   -0.0602134    0.0691051
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.1310817   -0.3318585    0.0696950
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0058977   -0.0177809    0.0295763
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0174760   -0.1033062    0.0683541
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0007789   -0.0773747    0.0789325


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.6137199   -1.3792112   -0.0945190
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.9781563   -1.1439063   -0.8252208
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0638062   -0.0461587    0.1622123
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.9957099   -2.6525123   -1.4570150
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0122561   -0.1830822    0.1753423
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.5214408   -1.5702882    0.0994075
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0166398   -0.0523206    0.0810812
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0243294   -0.1510848    0.0884679
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0017741   -0.1930988    0.1648178
