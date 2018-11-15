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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

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
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      157    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      120    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       24    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       53    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        9    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      128    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       13    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       27    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        5    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      245    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       30    286
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8    286
Birth       ki0047075b-MAL-ED          PERU                           1                  1        3    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      209    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      100    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       17    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       29     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       45     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        9     90
Birth       ki1000108-IRC              INDIA                          0                  0      137    388
Birth       ki1000108-IRC              INDIA                          0                  1       27    388
Birth       ki1000108-IRC              INDIA                          1                  0      206    388
Birth       ki1000108-IRC              INDIA                          1                  1       18    388
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  0        1      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        1      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1222   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       65   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0      237   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1       17   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                  0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1      8
Birth       ki1114097-CMIN             PERU                           0                  0       10     10
Birth       ki1114097-CMIN             PERU                           0                  1        0     10
Birth       ki1114097-CMIN             PERU                           1                  0        0     10
Birth       ki1114097-CMIN             PERU                           1                  1        0     10
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2
Birth       ki1114097-CONTENT          PERU                           0                  1        0      2
Birth       ki1114097-CONTENT          PERU                           1                  0        0      2
Birth       ki1114097-CONTENT          PERU                           1                  1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      151    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       33    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       45    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       12    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      189    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      131    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       31    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       59    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       15    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      186    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       38    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       59    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      180    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       46    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        4    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      181    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       55    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      119    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       55    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      136    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       56    366
6 months    ki1000108-IRC              INDIA                          0                  0      120    407
6 months    ki1000108-IRC              INDIA                          0                  1       45    407
6 months    ki1000108-IRC              INDIA                          1                  0      187    407
6 months    ki1000108-IRC              INDIA                          1                  1       55    407
6 months    ki1000109-EE               PAKISTAN                       0                  0      132    372
6 months    ki1000109-EE               PAKISTAN                       0                  1      138    372
6 months    ki1000109-EE               PAKISTAN                       1                  0       47    372
6 months    ki1000109-EE               PAKISTAN                       1                  1       55    372
6 months    ki1000109-ResPak           PAKISTAN                       0                  0       80    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       60    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       72    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1       23    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      368    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       67    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      121    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       27    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1481   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      214   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0      284   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       78   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      303    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       88    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      141    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       31    563
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      125    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       76    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0       25    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1       17    243
6 months    ki1114097-CMIN             PERU                           0                  0      552    627
6 months    ki1114097-CMIN             PERU                           0                  1       29    627
6 months    ki1114097-CMIN             PERU                           1                  0       34    627
6 months    ki1114097-CMIN             PERU                           1                  1       12    627
6 months    ki1114097-CONTENT          PERU                           0                  0      192    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        4    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       85    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       78    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       20    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      152    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        5    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       85    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       69    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       47    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      148    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       39    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       31    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       10    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      122    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       71    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        5    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      136    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       78    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       18    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       58    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      145    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        8    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       48    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      126    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       57    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1      137    368
24 months   ki1000108-IRC              INDIA                          0                  0      100    409
24 months   ki1000108-IRC              INDIA                          0                  1       66    409
24 months   ki1000108-IRC              INDIA                          1                  0      139    409
24 months   ki1000108-IRC              INDIA                          1                  1      104    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      289    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      142    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       98    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       48    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0      871   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      426   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0      174   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       93   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      197    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      154    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       79    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       69    499
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       64    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      136    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       13    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1       29    242
24 months   ki1114097-CMIN             PERU                           0                  0      162    234
24 months   ki1114097-CMIN             PERU                           0                  1       58    234
24 months   ki1114097-CMIN             PERU                           1                  0        8    234
24 months   ki1114097-CMIN             PERU                           1                  1        6    234
24 months   ki1114097-CONTENT          PERU                           0                  0      140    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
24 months   ki1114097-CONTENT          PERU                           1                  0        3    164
24 months   ki1114097-CONTENT          PERU                           1                  1        0    164


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/67d497fa-53ae-49aa-ae4d-6b06b31b0515/62581739-e716-4b85-b82e-89976484cb20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67d497fa-53ae-49aa-ae4d-6b06b31b0515/62581739-e716-4b85-b82e-89976484cb20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67d497fa-53ae-49aa-ae4d-6b06b31b0515/62581739-e716-4b85-b82e-89976484cb20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67d497fa-53ae-49aa-ae4d-6b06b31b0515/62581739-e716-4b85-b82e-89976484cb20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1767677   0.1235285   0.2300069
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1754386   0.0765063   0.2743709
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1666667   0.1056488   0.2276846
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1451613   0.0572638   0.2330588
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0921986   0.0443075   0.1400897
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1562500   0.0300821   0.2824179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0913043   0.0540075   0.1286012
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1935484   0.0542055   0.3328913
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1944444   0.0644369   0.3244520
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1666667   0.0667101   0.2666232
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1646341   0.1078032   0.2214651
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0803571   0.0447115   0.1160028
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0505051   0.0385373   0.0624728
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0669291   0.0361868   0.0976715
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1793478   0.1237997   0.2348960
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2105263   0.1044702   0.3165824
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1913580   0.1306545   0.2520616
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2027027   0.1109129   0.2944925
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0362694   0.0098368   0.0627020
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1162791   0.0202629   0.2122952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3160920   0.2469131   0.3852708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2916667   0.2272862   0.3560471
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2727273   0.2046890   0.3407655
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2272727   0.1744086   0.2801369
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5111111   0.4514057   0.5708165
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5392157   0.4423516   0.6360797
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4285714   0.3464224   0.5107205
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2421053   0.1557838   0.3284267
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1540230   0.1200723   0.1879737
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1824324   0.1201590   0.2447059
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978009   0.0837920   0.1118099
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0930233   0.0602012   0.1258453
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1262537   0.1104382   0.1420692
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2154696   0.1731056   0.2578336
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2250639   0.1836323   0.2664955
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1802326   0.1227373   0.2377278
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3781095   0.3109339   0.4452850
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4047619   0.2560095   0.5535143
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0499139   0.0321925   0.0676354
6 months    ki1114097-CMIN             PERU                           1                    NA                0.2608696   0.1338742   0.3878650
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4785276   0.4016588   0.5553964
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4081633   0.2702219   0.5461047
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4480519   0.3693365   0.5267674
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3561644   0.2460718   0.4662570
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2085561   0.1501978   0.2669145
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2439024   0.1121655   0.3756394
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3644860   0.2998672   0.4291047
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2500000   0.0763969   0.4236031
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7241379   0.6576380   0.7906378
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7061856   0.6420005   0.7703706
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3975904   0.3230503   0.4721304
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4279835   0.3656970   0.4902701
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3294664   0.2850542   0.3738785
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3287671   0.2525014   0.4050328
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3284503   0.3028826   0.3540179
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3483146   0.2911488   0.4054804
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4387464   0.3867808   0.4907121
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4662162   0.3857656   0.5466668
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6800000   0.6152169   0.7447831
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6904762   0.5503743   0.8305781
24 months   ki1114097-CMIN             PERU                           0                    NA                0.2636364   0.2052898   0.3219830
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4285714   0.1687909   0.6883520


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
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 0.8709677   0.4292393   1.7672773
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6947115   0.6488162   4.4265957
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.1198157   0.9264235   4.8505013
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8571429   0.3491232   2.1043973
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.4880952   0.2782256   0.8562726
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 1.3251968   0.7903437   2.2220037
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.1738437   0.6498080   2.1204865
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.0592851   0.6093913   1.8413210
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 3.2059801   1.0657387   9.6443043
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9227273   0.6762036   1.2591262
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8333333   0.5924970   1.1720640
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0549872   0.8515040   1.3070967
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.5649123   0.3768573   0.8468083
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1844494   0.7889465   1.7782198
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511490   0.6499315   1.3919690
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.7066402   1.3517485   2.1547061
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8008060   0.5540791   1.1573984
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.0704887   0.7117126   1.6101249
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 5.2263868   2.8610531   9.5472255
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8529566   0.5867027   1.2400403
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7949176   0.5570721   1.1343127
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1694809   0.6365185   2.1486974
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6858974   0.3349703   1.4044687
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9752086   0.8570061   1.1097143
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0764434   0.8490181   1.3647888
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9978777   0.7630575   1.3049604
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.0604790   0.8843296   1.2717156
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0626097   0.8619398   1.3099979
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0154062   0.8115007   1.2705469
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.6256158   0.8526495   3.0993118


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0002971   -0.0254102    0.0248160
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0064725   -0.0387049    0.0257599
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0118477   -0.0133896    0.0370850
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0121439   -0.0054544    0.0297423
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0166667   -0.1151023    0.0817690
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0486548   -0.0876056   -0.0097039
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0027071   -0.0027390    0.0081533
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0073742   -0.0209915    0.0357399
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0035572   -0.0309555    0.0380700
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0145780   -0.0039919    0.0331480
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0128133   -0.0624037    0.0367771
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0270270   -0.0783042    0.0242502
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0077061   -0.0235195    0.0389317
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0753799   -0.1249586   -0.0258013
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0072120   -0.0108215    0.0252455
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007088   -0.0060034    0.0045858
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0157006    0.0076082    0.0237930
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0136963   -0.0354141    0.0080216
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0046066   -0.0236323    0.0328455
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0154768    0.0051297    0.0258239
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0162635   -0.0529811    0.0204542
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0295497   -0.0734309    0.0143314
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0063561   -0.0196139    0.0323262
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0115448   -0.0307331    0.0076435
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0094640   -0.0581955    0.0392675
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0180576   -0.0396735    0.0757886
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0001769   -0.0225083    0.0221544
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0033912   -0.0073060    0.0140883
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0081473   -0.0202800    0.0365747
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0018182   -0.0249753    0.0286117
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0098679   -0.0068348    0.0265706


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0016835   -0.1545956    0.1309772
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0404040   -0.2620941    0.1423456
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1138692   -0.1597337    0.3229240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1173913   -0.0651687    0.2686622
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0937500   -0.8131914    0.3402301
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.4195122   -0.7824186   -0.1304948
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0508746   -0.0566354    0.1474457
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0394928   -0.1248594    0.1798316
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0182501   -0.1757476    0.1802384
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.2867012   -0.1360592    0.5521403
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0422491   -0.2192736    0.1090734
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1100000   -0.3393257    0.0800595
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0148532   -0.0472305    0.0732563
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2134251   -0.3640121   -0.0794629
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0447298   -0.0737083    0.1501032
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0072999   -0.0633275    0.0457756
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.1106033    0.0526481    0.1650131
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0647983   -0.1724217    0.0329457
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0120366   -0.0645803    0.0831394
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.2366819    0.0785640    0.3676669
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0351822   -0.1178778    0.0413960
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0706083   -0.1811022    0.0295486
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0295755   -0.0989918    0.1431021
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0327103   -0.0885726    0.0202854
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0132424   -0.0837996    0.0527213
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0434444   -0.1060775    0.1727536
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0005373   -0.0707053    0.0650322
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0102192   -0.0225471    0.0419356
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0182311   -0.0475016    0.0798389
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0026667   -0.0374173    0.0412018
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0360795   -0.0268293    0.0951343
