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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    13320   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1     1421   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      844   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       81   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      592     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       33     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0       55     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        3     683
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      330     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       33     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       70     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        8     441
6 months    ki1114097-CONTENT          PERU                           0                0       14     215
6 months    ki1114097-CONTENT          PERU                           0                1        0     215
6 months    ki1114097-CONTENT          PERU                           1                0      201     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    13972   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1311   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1361   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      102   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3976    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      260    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      575    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       15    4826
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      252     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       60     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       54     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       18     384
24 months   ki1114097-CONTENT          PERU                           0                0       10     164
24 months   ki1114097-CONTENT          PERU                           0                1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0      154     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     6163    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     1745    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      547    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      125    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3329    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      835    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      480    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       85    4729


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/61487e07-9481-4a71-b372-84edc79a2992/409560a7-ca85-4086-8243-e77046fe000d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/61487e07-9481-4a71-b372-84edc79a2992/409560a7-ca85-4086-8243-e77046fe000d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/61487e07-9481-4a71-b372-84edc79a2992/409560a7-ca85-4086-8243-e77046fe000d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/61487e07-9481-4a71-b372-84edc79a2992/409560a7-ca85-4086-8243-e77046fe000d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                0.0842105   0.0281913   0.1402298
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                0.1875000   0.0915731   0.2834269
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0963978   0.0910654   0.1017302
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0875676   0.0645312   0.1106040
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483   0.0249987   0.1818978
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0588235   0.0376661   0.0799809
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708   0.0125841   0.0395575
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0909091   0.0613020   0.1205161
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1025641   0.0351589   0.1699693
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0857816   0.0808136   0.0907496
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0697198   0.0529533   0.0864862
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0613787   0.0514581   0.0712992
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0254237   0.0145373   0.0363101
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000   0.0298210   0.2101790
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000   0.0915325   0.1584675
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1739130   0.0642844   0.2835417
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1071429   0.0808377   0.1334480
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773810   0.0369378   0.1178241
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0924855   0.0619295   0.1230416
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1923077   0.1485194   0.2360960
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2500000   0.1498505   0.3501495
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2206626   0.2105217   0.2308035
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1860119   0.1527268   0.2192970
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2005283   0.1865356   0.2145211
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1504425   0.1126099   0.1882750


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1257862   0.0740797   0.1774926
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0958764   0.0906733   0.1010796
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0636704   0.0429419   0.0843989
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0929705   0.0658371   0.1201040
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0843784   0.0795716   0.0891851
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569830   0.0481380   0.0658280
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1244131   0.0930343   0.1557919
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2031250   0.1628324   0.2434176
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179487   0.2080959   0.2278016
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1945443   0.1813282   0.2077604


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL        1                    0                 2.2265625   0.9619897   5.1534651
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9083980   0.6944343   1.1882864
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.5686275   0.2456499   1.3162521
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.6629423   0.2717148   1.6174768
6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1282051   0.5418089   2.3492541
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8127590   0.6358702   1.0388552
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.4142112   0.2621045   0.6545898
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.0416667   0.4690996   2.3130896
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.6160714   0.3132100   1.2117876
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.1951979   0.6440320   2.2180543
24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.3000000   0.8200222   2.0609197
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8429697   0.7027103   1.0112246
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7502305   0.5783741   0.9731518


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0415756   -0.0038305    0.0869818
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0005214   -0.0019193    0.0008765
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0397779   -0.1122148    0.0326590
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0099552   -0.0336897    0.0137792
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0020614   -0.0109666    0.0150894
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0014032   -0.0029104    0.0001040
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0043957   -0.0062867   -0.0025046
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0044131   -0.0804862    0.0893125
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0614563   -0.1652348    0.0423222
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0101677   -0.0239588    0.0442942
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0108173   -0.0098009    0.0314355
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0027139   -0.0054150   -0.0000128
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0059840   -0.0107904   -0.0011777


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.3305263   -0.1120029    0.5969480
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0054381   -0.0201399    0.0090519
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.6247464   -2.2439861    0.1862477
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.3389513   -1.4270636    0.2613335
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0221729   -0.1283579    0.1526219
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0166302   -0.0347223    0.0011456
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0771397   -0.1066949   -0.0483737
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0354717   -0.9568468    0.5245847
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.5464883   -1.7992750    0.1456266
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.1161376   -0.3720352    0.4306175
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0532544   -0.0535747    0.1492514
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0124520   -0.0249507   -0.0001058
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0307593   -0.0558867   -0.0062298
