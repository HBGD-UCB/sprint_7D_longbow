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
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

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
![](/tmp/2d203a63-fd8c-4bb6-b911-0c16e97f9bbb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d203a63-fd8c-4bb6-b911-0c16e97f9bbb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d203a63-fd8c-4bb6-b911-0c16e97f9bbb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d203a63-fd8c-4bb6-b911-0c16e97f9bbb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                0.0842105    0.0281913   0.1402298
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                0.1875000    0.0915731   0.2834269
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0962185    0.0909383   0.1014987
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1116890    0.0956020   0.1277759
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0528000    0.0329385   0.0726615
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0517241   -0.0157706   0.1192189
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483    0.0249987   0.1818978
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0588235    0.0376661   0.0799809
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258    0.0107520   0.0678997
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708    0.0125841   0.0395575
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0908131    0.0612234   0.1204028
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1030638    0.0358202   0.1703073
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0848626    0.0799333   0.0897918
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0807966    0.0649440   0.0966492
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0604117    0.0484786   0.0723447
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0204641    0.0094978   0.0314304
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000    0.0298210   0.2101790
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000    0.0915325   0.1584675
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1739130    0.0642844   0.2835417
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1071429    0.0808377   0.1334480
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0577002    0.0176143   0.0977862
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0871487    0.0566422   0.1176552
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1915123    0.1489459   0.2340786
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2941637    0.2223918   0.3659355
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2190510    0.2090729   0.2290292
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1817691    0.1524595   0.2110787
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2070776    0.1924033   0.2217519
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1618480    0.1174601   0.2062359


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
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.1607848   0.9955843   1.3533974
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9796238   0.2517913   3.8113428
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.5686275   0.2456499   1.3162521
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.6629423   0.2717148   1.6174768
6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1348999   0.5476948   2.3516708
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9520877   0.7754305   1.1689905
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.3387443   0.1920015   0.5976394
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.0416667   0.4690996   2.3130896
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.6160714   0.3132100   1.2117876
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.5103703   0.6931288   3.2911896
24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.5360043   1.1046038   2.1358871
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8298024   0.7030273   0.9794385
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7815811   0.5895159   1.0362214


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0415756   -0.0038305    0.0869818
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0003421   -0.0017648    0.0010806
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0000914   -0.0060688    0.0058861
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0397779   -0.1122148    0.0326590
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0099552   -0.0336897    0.0137792
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0021574   -0.0108345    0.0151494
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0004006   -0.0019774    0.0011763
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0040796   -0.0088768    0.0007176
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0044131   -0.0804862    0.0893125
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0614563   -0.1652348    0.0423222
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0298484   -0.0041580    0.0638549
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0116127   -0.0086151    0.0318406
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0008522   -0.0036271    0.0019227
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0106723   -0.0164011   -0.0049434


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                 0.3305263   -0.1120029    0.5969480
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0035678   -0.0185342    0.0111787
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0017333   -0.1218228    0.1055008
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.6247464   -2.2439861    0.1862477
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.3389513   -1.4270636    0.2613335
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0232054   -0.1268902    0.1533091
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0047426   -0.0236113    0.0137783
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0724205   -0.1560495    0.0051587
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0354717   -0.9568468    0.5245847
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.5464883   -1.7992750    0.1456266
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.3409352   -0.1939810    0.6362033
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0571704   -0.0468688    0.1508700
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0039057   -0.0167246    0.0087516
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0543379   -0.0841184   -0.0253755
