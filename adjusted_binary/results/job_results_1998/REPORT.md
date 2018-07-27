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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

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
![](/tmp/2b9f6352-66af-4716-9138-d85b8e77149f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b9f6352-66af-4716-9138-d85b8e77149f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b9f6352-66af-4716-9138-d85b8e77149f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b9f6352-66af-4716-9138-d85b8e77149f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2307692   0.0979744   0.3635641
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0886076   0.0256757   0.1515395
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4285714   0.2718731   0.5852697
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3230903   0.3154198   0.3307608
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1848341   0.1323536   0.2373147
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2702703   0.1268849   0.4136556
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2564103   0.1593102   0.3535104
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2202381   0.1574460   0.2830302
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3611111   0.2826117   0.4396105
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3630952   0.3267140   0.3994765
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4000000   0.1645728   0.6354272
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512066   0.2430920   0.2593212
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3546798   0.2887284   0.4206312
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3529412   0.1919694   0.5139130
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7205882   0.6136873   0.8274892
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7172414   0.6437686   0.7907142
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4242424   0.3268027   0.5216821
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4421053   0.3974041   0.4868064


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
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.3839662   0.1539245   0.9578076
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.7538774   0.5223317   1.0880654
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 1.4622315   0.8011048   2.6689653
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8589286   0.5346790   1.3798154
6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 1.0054945   0.7914536   1.2774206
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.6280164   0.3489781   1.1301701
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.9950980   0.6080796   1.6284384
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9953554   0.8311555   1.1919940
24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0421053   0.8108219   1.3393611


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0951760   -0.1943025   0.0039505
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.1052927   -0.2620587   0.0514733
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0127465   -0.0103476   0.0358407
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0247029   -0.1037008   0.0542949
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0016340   -0.0696180   0.0728859
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.1486163   -0.3834328   0.0862002
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0002494   -0.0252056   0.0247068
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022784   -0.0905825   0.0860257
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0147820   -0.0739338   0.1034978


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7019231   -1.5639195   -0.1297321
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.3257026   -0.9116555    0.0806464
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0645130   -0.0592989    0.1738537
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1066127   -0.5055147    0.1865960
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0045045   -0.2126384    0.1827644
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.5911932   -1.8603739    0.1148375
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0007037   -0.0736521    0.0672883
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0031719   -0.1339561    0.1125284
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0336700   -0.1911017    0.2160253
