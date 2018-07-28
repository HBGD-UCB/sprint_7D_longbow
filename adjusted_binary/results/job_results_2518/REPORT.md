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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      163    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       35    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       47    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10    255
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      151    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       33    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       45    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       12    241
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       85    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       78    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       20    212
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      157    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    191
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      189    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      152    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        5    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      120    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       24    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       53    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        9    206
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      131    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       31    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       59    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       15    236
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       85    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       69    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       47    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26    227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      186    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       38    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5    236
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      148    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       39    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       31    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       10    228
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      128    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       13    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       27    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        5    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      245    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       30    286
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8    286
Birth       ki0047075b-MAL-ED          PERU                           1                  1        3    286
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       59    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        1    273
24 months   ki0047075b-MAL-ED          PERU                           0                  0      122    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       71    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        5    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3    201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      209    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      180    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       46    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        4    254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      136    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       78    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       18    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      100    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       17    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1    123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      181    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       55    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3    247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       58    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      145    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        8    214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      119    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       55    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      136    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       56    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       48    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      126    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       57    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1      137    368
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       29     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       45     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        9     90
6 months    ki1000108-IRC              INDIA                          0                  0      120    407
6 months    ki1000108-IRC              INDIA                          0                  1       45    407
6 months    ki1000108-IRC              INDIA                          1                  0      187    407
6 months    ki1000108-IRC              INDIA                          1                  1       55    407
24 months   ki1000108-IRC              INDIA                          0                  0      100    409
24 months   ki1000108-IRC              INDIA                          0                  1       66    409
24 months   ki1000108-IRC              INDIA                          1                  0      139    409
24 months   ki1000108-IRC              INDIA                          1                  1      104    409
Birth       ki1000108-IRC              INDIA                          0                  0      137    388
Birth       ki1000108-IRC              INDIA                          0                  1       27    388
Birth       ki1000108-IRC              INDIA                          1                  0      206    388
Birth       ki1000108-IRC              INDIA                          1                  1       18    388
6 months    ki1000109-EE               PAKISTAN                       0                  0      132    372
6 months    ki1000109-EE               PAKISTAN                       0                  1      138    372
6 months    ki1000109-EE               PAKISTAN                       1                  0       47    372
6 months    ki1000109-EE               PAKISTAN                       1                  1       55    372
Birth       ki1000109-EE               PAKISTAN                       1                  0        1      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        1      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
6 months    ki1000109-ResPak           PAKISTAN                       0                  0       80    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       60    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       72    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1       23    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      368    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       67    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      121    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       27    583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      289    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      142    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       98    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       48    577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1222   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       65   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0      237   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1       17   1541
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1481   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      214   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0      284   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       78   2057
24 months   ki1101329-Keneba           GAMBIA                         0                  0      871   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      426   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0      174   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       93   1564
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      303    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       88    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      141    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       31    563
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      197    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      154    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       79    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       69    499
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      125    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       76    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0       25    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1       17    243
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       64    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      136    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       13    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1       29    242
Birth       ki1114097-CMIN             BANGLADESH                     0                  0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1      8
6 months    ki1114097-CMIN             PERU                           0                  0      552    627
6 months    ki1114097-CMIN             PERU                           0                  1       29    627
6 months    ki1114097-CMIN             PERU                           1                  0       34    627
6 months    ki1114097-CMIN             PERU                           1                  1       12    627
24 months   ki1114097-CMIN             PERU                           0                  0      162    234
24 months   ki1114097-CMIN             PERU                           0                  1       58    234
24 months   ki1114097-CMIN             PERU                           1                  0        8    234
24 months   ki1114097-CMIN             PERU                           1                  1        6    234
Birth       ki1114097-CMIN             PERU                           0                  0       10     10
6 months    ki1114097-CONTENT          PERU                           0                  0      192    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        4    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki1114097-CONTENT          PERU                           0                  0      140    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
24 months   ki1114097-CONTENT          PERU                           1                  0        3    164
24 months   ki1114097-CONTENT          PERU                           1                  1        0    164
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          stunted
## anywast06  0
##         0 10
##         1  0
```




# Results Detail

## Results Plots
![](/tmp/94010a86-6ca3-4334-8456-1b1b9f443d29/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94010a86-6ca3-4334-8456-1b1b9f443d29/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94010a86-6ca3-4334-8456-1b1b9f443d29/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94010a86-6ca3-4334-8456-1b1b9f443d29/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1767677    0.1235285   0.2300069
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1754386    0.0765063   0.2743709
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1659170    0.1052987   0.2265353
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1465205    0.0603183   0.2327226
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0921716    0.0443253   0.1400179
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1557898    0.0309861   0.2805935
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0904516    0.0532849   0.1276183
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0896580   -0.0235309   0.2028470
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1883955    0.0608658   0.3159253
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1642347    0.0638293   0.2646401
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1617437    0.1066121   0.2168752
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0813369    0.0460698   0.1166040
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0500737    0.0381447   0.0620028
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0518721    0.0271930   0.0765511
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1706622    0.1156908   0.2256336
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1410802    0.0456243   0.2365360
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1913600    0.1310310   0.2516889
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2027509    0.1133433   0.2921584
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0362786    0.0098742   0.0626830
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1161624    0.0217297   0.2105952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3159962    0.2468477   0.3851447
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2917496    0.2273852   0.3561141
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2715745    0.2038309   0.3393182
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2279732    0.1751520   0.2807944
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5114034    0.4521027   0.5707041
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5482281    0.4551046   0.6413517
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4268613    0.3448940   0.5088287
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2426391    0.1562801   0.3289981
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1569064    0.1233900   0.1904229
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1747126    0.1160792   0.2333460
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0979492    0.0840250   0.1118733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0843906    0.0546498   0.1141315
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1247180    0.1091483   0.1402877
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1718435    0.1387722   0.2049147
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2214418    0.1800176   0.2628660
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1635002    0.1069201   0.2200803
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3747307    0.3078658   0.4415955
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4158432    0.2682201   0.5634662
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0499008    0.0321778   0.0676237
6 months    ki1114097-CMIN             PERU                           1                    NA                0.2563844    0.1311422   0.3816265
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4748445    0.3996993   0.5499897
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4195882    0.2855761   0.5536003
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4492337    0.3736727   0.5247947
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3796845    0.2822195   0.4771495
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2202319    0.1620889   0.2783749
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3185275    0.2131392   0.4239159
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3658633    0.3019787   0.4297479
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2471751    0.0877439   0.4066063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7241379    0.6576380   0.7906378
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7061856    0.6420005   0.7703706
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3975904    0.3230503   0.4721304
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4279835    0.3656970   0.4902701
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3330938    0.2891307   0.3770568
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3197604    0.2456113   0.3939094
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3262040    0.3010030   0.3514050
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3406073    0.2932751   0.3879395
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4391400    0.3873656   0.4909145
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4651780    0.3858799   0.5444760
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6808716    0.6161817   0.7455614
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6871873    0.5468823   0.8274923
24 months   ki1114097-CMIN             PERU                           0                    NA                0.2636957    0.2053128   0.3220785
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4044785    0.1599662   0.6489908


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1764706   0.1295885   0.2233527
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1034483   0.0664305   0.1404661
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0508475   0.0227597   0.0789352
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3032787   0.2561210   0.3504363
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1419543   0.1268686   0.1570400
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0653907   0.0460250   0.0847565
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7146739   0.6684741   0.7608737
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3318414   0.3084975   0.3551853
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.2735043   0.2162683   0.3307402


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9924812   0.5236923   1.8809116
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 0.8830951   0.4446150   1.7540049
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6902153   0.6519045   4.3822794
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9912263   0.2637329   3.7254724
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8717547   0.3499273   2.1717547
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.5028751   0.2895086   0.8734917
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 1.0359141   0.6086516   1.7631073
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8266633   0.3947971   1.7309453
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.0595261   0.6204876   1.8092153
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 3.2019581   1.0808129   9.4859490
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9232694   0.6767425   1.2596023
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8394501   0.5976660   1.1790473
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0720071   0.8729005   1.3165296
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.5684260   0.3794193   0.8515858
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1134825   0.7550068   1.6421618
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8615760   0.5908104   1.2564323
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.3778566   1.0984521   1.7283310
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7383439   0.4981423   1.0943695
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.1097121   0.7467467   1.6491013
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 5.1378841   2.8084698   9.3993722
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8836329   0.6234312   1.2524350
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8451826   0.6339754   1.1267529
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.4463278   0.9658486   2.1658304
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6755941   0.3491421   1.3072824
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9752086   0.8570061   1.1097143
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0764434   0.8490181   1.3647888
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9599710   0.7374533   1.2496308
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.0441543   0.8927342   1.2212573
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0592930   0.8617011   1.3021935
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0092759   0.8057483   1.2642135
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.5338838   0.8058141   2.9197792


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0002971   -0.0254102    0.0248160
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0057228   -0.0371960    0.0257505
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0118747   -0.0132443    0.0369937
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0129967   -0.0044802    0.0304735
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0106177   -0.1070034    0.0857679
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0457643   -0.0836103   -0.0079183
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0031385   -0.0023245    0.0086014
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0160598   -0.0106300    0.0427496
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0035553   -0.0298619    0.0369725
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0145689   -0.0038357    0.0329735
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0127175   -0.0622729    0.0368379
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0258743   -0.0768755    0.0251270
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0074138   -0.0235866    0.0384142
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0736699   -0.1231078   -0.0242319
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0043285   -0.0126066    0.0212637
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008570   -0.0059889    0.0042750
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0172363    0.0094487    0.0250240
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0100741   -0.0319170    0.0117688
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0079854   -0.0200102    0.0359809
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0154900    0.0051403    0.0258397
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0125803   -0.0474996    0.0223389
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0307315   -0.0683440    0.0068810
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0053196   -0.0276984    0.0170592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0129221   -0.0309753    0.0051310
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0094640   -0.0581955    0.0392675
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0180576   -0.0396735    0.0757886
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0038044   -0.0254400    0.0178313
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0056374   -0.0045290    0.0158038
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0077538   -0.0203904    0.0358979
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0009466   -0.0258295    0.0277228
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0098086   -0.0069516    0.0265688


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0016835   -0.1545956    0.1309772
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0357241   -0.2517515    0.1430212
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1141288   -0.1580242    0.3223218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1256344   -0.0555276    0.2757032
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0597248   -0.7667636    0.3643650
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3945899   -0.7514655   -0.1104307
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0589804   -0.0488343    0.1557123
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0860092   -0.0695978    0.2189783
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0182403   -0.1690927    0.1755554
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.2865216   -0.1317561    0.5502110
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0419335   -0.2188274    0.1092870
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1053082   -0.3334014    0.0837671
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0142898   -0.0473140    0.0722700
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2085833   -0.3587081   -0.0750460
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0268462   -0.0838899    0.1262689
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0088266   -0.0630920    0.0426689
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.1214218    0.0658845    0.1736571
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0476616   -0.1560136    0.0505346
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0208650   -0.0551024    0.0913627
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.2368833    0.0787067    0.3679026
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0272146   -0.1058016    0.0457873
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0734321   -0.1675441    0.0130939
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0247525   -0.1344882    0.0743688
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0366127   -0.0892928    0.0135196
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0132424   -0.0837996    0.0527213
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0434444   -0.1060775    0.1727536
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0115532   -0.0794599    0.0520816
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0169883   -0.0141201    0.0471424
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0173503   -0.0476997    0.0783615
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0013884   -0.0386663    0.0398984
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0358628   -0.0272776    0.0951223
