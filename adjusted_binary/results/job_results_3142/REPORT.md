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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      113     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1       11     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     124
Birth       ki0047075b-MAL-ED          INDIA                          0                0      161     191
Birth       ki0047075b-MAL-ED          INDIA                          0                1       30     191
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0     191
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      150     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                1       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0                0      211     247
Birth       ki0047075b-MAL-ED          PERU                           0                1       27     247
Birth       ki0047075b-MAL-ED          PERU                           1                0        8     247
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      164     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       19     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       31     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       72     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       40   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       30   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    26478   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1    12638   39186
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1150    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      494    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      195     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       45     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      140     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        2     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
6 months    ki0047075b-MAL-ED          INDIA                          0                0      190     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1       45     235
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      221     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                1       11     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
6 months    ki0047075b-MAL-ED          PERU                           0                0      195     259
6 months    ki0047075b-MAL-ED          PERU                           0                1       53     259
6 months    ki0047075b-MAL-ED          PERU                           1                0        8     259
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      172     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       39     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      131     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       37     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      217     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      163     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      391     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1      144     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      487     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       94     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      565     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1      150     715
6 months    ki1114097-CONTENT          PERU                           0                0        3      57
6 months    ki1114097-CONTENT          PERU                           0                1        0      57
6 months    ki1114097-CONTENT          PERU                           1                0       52      57
6 months    ki1114097-CONTENT          PERU                           1                1        2      57
6 months    ki1148112-LCNI-5           MALAWI                         0                0       92     816
6 months    ki1148112-LCNI-5           MALAWI                         0                1       52     816
6 months    ki1148112-LCNI-5           MALAWI                         1                0      428     816
6 months    ki1148112-LCNI-5           MALAWI                         1                1      244     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       23   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1       16   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    25100   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     8422   33561
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        2    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     7055    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     2384    9441
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       98     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      110     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        3     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113
24 months   ki0047075b-MAL-ED          INDIA                          0                0      132     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       95     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      176     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       49     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     193
24 months   ki0047075b-MAL-ED          PERU                           0                1       69     193
24 months   ki0047075b-MAL-ED          PERU                           1                0        3     193
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      131     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       72     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       12     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       19     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       49     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       41     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      104     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      190     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      237     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      386     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      190     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      382     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1      132     514
24 months   ki1114097-CONTENT          PERU                           0                0        3      48
24 months   ki1114097-CONTENT          PERU                           0                1        0      48
24 months   ki1114097-CONTENT          PERU                           1                0       42      48
24 months   ki1114097-CONTENT          PERU                           1                1        3      48
24 months   ki1148112-LCNI-5           MALAWI                         0                0       57     574
24 months   ki1148112-LCNI-5           MALAWI                         0                1       42     574
24 months   ki1148112-LCNI-5           MALAWI                         1                0      265     574
24 months   ki1148112-LCNI-5           MALAWI                         1                1      210     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0        6   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       16   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8757   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     8429   17208
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        2    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     5624    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     3644    9270


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b8a38b44-6eaf-4abe-a333-7999f59fa5ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8a38b44-6eaf-4abe-a333-7999f59fa5ff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8a38b44-6eaf-4abe-a333-7999f59fa5ff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8a38b44-6eaf-4abe-a333-7999f59fa5ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2307692   0.0979744   0.3635641
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0886076   0.0256757   0.1515395
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4137529   0.3469294   0.4805763
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3230562   0.3153849   0.3307276
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1837190   0.1314437   0.2359942
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2788124   0.1356573   0.4219675
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4575010   0.3704296   0.5445724
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2504918   0.1892605   0.3117230
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3559576   0.2797531   0.4321621
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3642089   0.3280855   0.4003323
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.1975618   0.1183401   0.2767835
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512423   0.2431274   0.2593572
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3484571   0.2835302   0.4133840
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2266729   0.1164716   0.3368742
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7310701   0.6262474   0.8358927
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7120165   0.6393448   0.7846882
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.3329558   0.2453816   0.4205299
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4384415   0.3943672   0.4825157
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.7272721   0.4167795   1.0377646
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.4904573   0.4773254   0.5035893


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1355932   0.0735587   0.1976277
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3232787   0.3156210   0.3309364
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2317073   0.1788752   0.2845395
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2514228   0.2432969   0.2595487
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7183099   0.6577588   0.7788609
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.4907601   0.4776428   0.5038774


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.3839662   0.1539245   0.9578076
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.7807951   0.6635674   0.9187326
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 1.5176027   0.8452330   2.7248321
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5475218   0.4025979   0.7446143
6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 1.0231806   0.8103105   1.2919721
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 1.2717149   0.8524085   1.8972813
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.6505044   0.3864688   1.0949294
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9739374   0.8185215   1.1588627
24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.3168159   0.9976773   1.7380411
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.6743795   0.4396061   1.0345345


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0951760   -0.1943025    0.0039505
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0904741   -0.1573423   -0.0236060
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0138617   -0.0090051    0.0367285
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2257937   -0.2974061   -0.1541813
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0067875   -0.0618619    0.0754369
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.0538610   -0.0249717    0.1326936
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0059732   -0.0186725    0.0306190
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0127602   -0.0985019    0.0729815
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.1060686    0.0270076    0.1851296
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.2365119   -0.5469443    0.0739204


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7019231   -1.5639195   -0.1297321
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.2798642   -0.5049760   -0.0884242
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0701571   -0.0523568    0.1784080
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9744779   -1.4039836   -0.6217096
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0187115   -0.1900307    0.1908385
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.2142247   -0.1711773    0.4728016
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0168531   -0.0551458    0.0839390
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0177642   -0.1444272    0.0948799
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.2416007    0.0376057    0.4023557
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.4819299   -1.2714589    0.0331693
