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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0       17     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      167     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       38     222
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0      159     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        6     167
Birth       ki0047075b-MAL-ED          INDIA                          0                0        8     188
Birth       ki0047075b-MAL-ED          INDIA                          0                1        2     188
Birth       ki0047075b-MAL-ED          INDIA                          1                0      150     188
Birth       ki0047075b-MAL-ED          INDIA                          1                1       28     188
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       87     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        8     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       52     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                1       12     159
Birth       ki0047075b-MAL-ED          PERU                           0                0      194     252
Birth       ki0047075b-MAL-ED          PERU                           0                1        4     252
Birth       ki0047075b-MAL-ED          PERU                           1                0       53     252
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      182     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       14     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      104     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        2     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       59      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12      71
Birth       ki1000108-IRC              INDIA                          0                0        0     253
Birth       ki1000108-IRC              INDIA                          0                1        0     253
Birth       ki1000108-IRC              INDIA                          1                0      190     253
Birth       ki1000108-IRC              INDIA                          1                1       63     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       19      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        2      23
Birth       ki1114097-CONTENT          PERU                           0                0        0       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        2       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    26640   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1     2842   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     1688   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      162   31332
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1184    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       66    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      110    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        6    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0       18     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      214     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0      206     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0       15     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                0      202     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1       18     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      124     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                0      101     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        2     229
6 months    ki0047075b-MAL-ED          PERU                           0                0      212     270
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     270
6 months    ki0047075b-MAL-ED          PERU                           1                0       58     270
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      222     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        7     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      230     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      230     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       27     257
6 months    ki1000108-IRC              INDIA                          0                0        0     304
6 months    ki1000108-IRC              INDIA                          0                1        0     304
6 months    ki1000108-IRC              INDIA                          1                0      260     304
6 months    ki1000108-IRC              INDIA                          1                1       44     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0       52     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        6     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      448     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       28     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0       40     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      518     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       21     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      171     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      523     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       14     715
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      660     882
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       66     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      140     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       16     882
6 months    ki1114097-CONTENT          PERU                           0                0       14     215
6 months    ki1114097-CONTENT          PERU                           0                1        0     215
6 months    ki1114097-CONTENT          PERU                           1                0      201     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    27907   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     2622   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2715   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      203   33447
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     7784    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      502    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1128    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       30    9444
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      177     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       18     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0      164     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0      188     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      119     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        4     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       97     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     221
24 months   ki0047075b-MAL-ED          PERU                           0                0      150     201
24 months   ki0047075b-MAL-ED          PERU                           0                1        2     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       48     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      219     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      196     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        4     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      247     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       13     260
24 months   ki1000108-IRC              INDIA                          0                0        0     305
24 months   ki1000108-IRC              INDIA                          0                1        0     305
24 months   ki1000108-IRC              INDIA                          1                0      282     305
24 months   ki1000108-IRC              INDIA                          1                1       23     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0       44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        6     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      329     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       47     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      475     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       57     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      314     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       32     514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      504     768
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      120     768
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      108     768
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       36     768
24 months   ki1114097-CONTENT          PERU                           0                0       10     164
24 months   ki1114097-CONTENT          PERU                           0                1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0      154     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    12296   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     3486   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1090   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      250   17122
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     6481    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1     1646    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      941    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      168    9236


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/710a0a97-4b2d-470a-bef0-b94662a01093/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/710a0a97-4b2d-470a-bef0-b94662a01093/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/710a0a97-4b2d-470a-bef0-b94662a01093/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/710a0a97-4b2d-470a-bef0-b94662a01093/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                0.0842105    0.0281913   0.1402298
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                0.1875000    0.0915731   0.2834269
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0963978    0.0910654   0.1017302
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0875676    0.0645312   0.1106040
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0528000    0.0329385   0.0726615
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0517241   -0.0157706   0.1192189
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483    0.0249987   0.1818978
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0588235    0.0376661   0.0799809
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258    0.0107520   0.0678997
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708    0.0125841   0.0395575
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0909091    0.0613020   0.1205161
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1025641    0.0351589   0.1699693
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0858856    0.0809091   0.0908620
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0695682    0.0528710   0.0862654
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0605841    0.0505543   0.0706139
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0259067    0.0148503   0.0369632
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000    0.0298210   0.2101790
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000    0.0915325   0.1584675
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1739130    0.0642844   0.2835417
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1071429    0.0808377   0.1334480
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773810    0.0369378   0.1178241
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0924855    0.0619295   0.1230416
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1923077    0.1485194   0.2360960
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2500000    0.1498505   0.3501495
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2208846    0.2107060   0.2310631
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1865672    0.1532404   0.2198939
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2025348    0.1882553   0.2168142
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1514878    0.1134884   0.1894872


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1257862   0.0740797   0.1774926
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0958764   0.0906733   0.1010796
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0636704   0.0429419   0.0843989
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0929705   0.0658371   0.1201040
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0844620   0.0796573   0.0892667
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0563321   0.0473894   0.0652748
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1244131   0.0930343   0.1557919
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2031250   0.1628324   0.2434176
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2181988   0.2083092   0.2280884
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1964054   0.1829535   0.2098572


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL        1                    0                 2.2265625   0.9619897   5.1534651
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9083980   0.6944343   1.1882864
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9796238   0.2517913   3.8113428
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.5686275   0.2456499   1.3162521
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.6629423   0.2717148   1.6174768
6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1282051   0.5418089   2.3492541
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8100105   0.6338194   1.0351797
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.4276160   0.2706520   0.6756107
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.0416667   0.4690996   2.3130896
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.6160714   0.3132100   1.2117876
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.1951979   0.6440320   2.2180543
24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.3000000   0.8200222   2.0609197
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8446365   0.7043234   1.0129024
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7479596   0.5768090   0.9698941


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0415756   -0.0038305    0.0869818
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0005214   -0.0019193    0.0008765
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0000914   -0.0060688    0.0058861
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0397779   -0.1122148    0.0326590
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0099552   -0.0336897    0.0137792
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0020614   -0.0109666    0.0150894
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0014236   -0.0029251    0.0000780
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0042521   -0.0061627   -0.0023414
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0044131   -0.0804862    0.0893125
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0614563   -0.1652348    0.0423222
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0101677   -0.0239588    0.0442942
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0108173   -0.0098009    0.0314355
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0026857   -0.0053870    0.0000155
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0061294   -0.0109944   -0.0012644


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.3305263   -0.1120029    0.5969480
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0054381   -0.0201399    0.0090519
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0017333   -0.1218228    0.1055008
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.6247464   -2.2439861    0.1862477
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.3389513   -1.4270636    0.2613335
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0221729   -0.1283579    0.1526219
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0168545   -0.0348536    0.0008315
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0754820   -0.1057372   -0.0460546
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0354717   -0.9568468    0.5245847
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.5464883   -1.7992750    0.1456266
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.1161376   -0.3720352    0.4306175
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0532544   -0.0535747    0.1492514
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0123087   -0.0247929    0.0000234
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0312079   -0.0563841   -0.0066316
