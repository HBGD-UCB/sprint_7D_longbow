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

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
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
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      4
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      4
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      4
Birth       ki1000109-EE               PAKISTAN                       1                  1        2      4
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
6 months    ki1000109-EE               PAKISTAN                       0                  0      264    744
6 months    ki1000109-EE               PAKISTAN                       0                  1      276    744
6 months    ki1000109-EE               PAKISTAN                       1                  0       94    744
6 months    ki1000109-EE               PAKISTAN                       1                  1      110    744
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      606   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1      176   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      282   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       62   1126
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      394    998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      308    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      158    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      138    998
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
![](/tmp/fb9d9315-c454-4e82-94f6-1a14f615eb7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb9d9315-c454-4e82-94f6-1a14f615eb7f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb9d9315-c454-4e82-94f6-1a14f615eb7f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb9d9315-c454-4e82-94f6-1a14f615eb7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1843933   0.1304543   0.2383323
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2074502   0.1173736   0.2975267
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1666667   0.1056488   0.2276846
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1451613   0.0572638   0.2330588
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0921986   0.0443075   0.1400897
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1562500   0.0300821   0.2824179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0913043   0.0540075   0.1286012
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1935484   0.0542055   0.3328913
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1944444   0.0644369   0.3244520
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1666667   0.0667101   0.2666232
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1633179   0.1083427   0.2182931
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0808072   0.0454639   0.1161504
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0504534   0.0384893   0.0624174
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0697505   0.0392703   0.1002307
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1793019   0.1246024   0.2340014
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2695557   0.1696277   0.3694836
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1913580   0.1306545   0.2520616
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2027027   0.1109129   0.2944925
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0362694   0.0098368   0.0627020
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1162791   0.0202629   0.2122952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3150274   0.2460265   0.3840282
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2925936   0.2283141   0.3568731
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2723439   0.2045391   0.3401487
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2275160   0.1747056   0.2803264
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5108927   0.4517456   0.5700398
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5446925   0.4527528   0.6366322
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4268611   0.3448937   0.5088284
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2426395   0.1562808   0.3289981
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1540052   0.1200773   0.1879332
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1824058   0.1204331   0.2443786
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0982824   0.0842875   0.1122772
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0999541   0.0671812   0.1327270
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1274121   0.1116083   0.1432159
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2123667   0.1703780   0.2543553
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2248709   0.1836006   0.2661413
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1796171   0.1226270   0.2366073
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3747314   0.3078664   0.4415963
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4158401   0.2682181   0.5634620
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0499006   0.0321777   0.0676236
6 months    ki1114097-CMIN             PERU                           1                    NA                0.2563864   0.1311437   0.3816292
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4850399   0.4102361   0.5598438
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4757304   0.3728280   0.5786329
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4489282   0.3712691   0.5265874
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3544710   0.2492737   0.4596682
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2057536   0.1478686   0.2636386
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2343928   0.1105246   0.3582609
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3644860   0.2998672   0.4291047
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2500000   0.0763969   0.4236031
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7275464   0.6631453   0.7919475
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7036349   0.6411356   0.7661342
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3975904   0.3230503   0.4721304
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4279835   0.3656970   0.4902701
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3294650   0.2850530   0.3738770
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3287711   0.2525067   0.4050356
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3286085   0.3030475   0.3541695
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3447167   0.2877718   0.4016616
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4389337   0.3874677   0.4903997
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4640568   0.3857608   0.5423529
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6809217   0.6162373   0.7456061
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6869552   0.5466941   0.8272163
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.1250417   0.6642033   1.9056196
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 0.8709677   0.4292393   1.7672773
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6947115   0.6488162   4.4265957
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.1198157   0.9264235   4.8505013
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8571429   0.3491232   2.1043973
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.4947846   0.2847027   0.8598859
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 1.3824746   0.8409151   2.2728051
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5033619   0.9309557   2.4277172
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.0592851   0.6093913   1.8413210
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 3.2059801   1.0657387   9.6443043
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9287880   0.6814987   1.2658089
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8353997   0.5947830   1.1733567
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0661584   0.8690126   1.3080290
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.5684273   0.3794209   0.8515860
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1844134   0.7904880   1.7746443
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0170094   0.7114861   1.4537291
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.6667702   1.3201161   2.1044535
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7987566   0.5541611   1.1513117
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.1097018   0.7467397   1.6490862
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 5.1379408   2.8085026   9.3994699
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9808067   0.7533341   1.2769657
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7895939   0.5618961   1.1095617
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1391914   0.6265440   2.0712945
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6858974   0.3349703   1.4044687
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9671340   0.8539971   1.0952592
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0764434   0.8490181   1.3647888
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9978940   0.7630757   1.3049720
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.0490195   0.8739829   1.2591115
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0572368   0.8627317   1.2955935
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0088608   0.8054416   1.2636547
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.6256158   0.8526495   3.0993118


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0079227   -0.0335031    0.0176576
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0064725   -0.0387049    0.0257599
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0118477   -0.0133896    0.0370850
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0121439   -0.0054544    0.0297423
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0166667   -0.1151023    0.0817690
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0473385   -0.0851753   -0.0095017
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0027588   -0.0026865    0.0082042
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0074201   -0.0210083    0.0358485
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0035572   -0.0309555    0.0380700
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0145780   -0.0039919    0.0331480
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0117487   -0.0611279    0.0376305
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0266437   -0.0776850    0.0243977
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0079245   -0.0230081    0.0388571
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0736696   -0.1231075   -0.0242317
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0072298   -0.0107310    0.0251905
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011902   -0.0065110    0.0041306
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0145422    0.0064767    0.0226077
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0135033   -0.0350334    0.0080269
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0079847   -0.0200108    0.0359802
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0154901    0.0051403    0.0258399
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0227758   -0.0595508    0.0139993
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0304260   -0.0730202    0.0121681
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0091587   -0.0164889    0.0348062
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0115448   -0.0307331    0.0076435
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0128725   -0.0599295    0.0341845
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0180576   -0.0396735    0.0757886
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0001756   -0.0225065    0.0221554
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0032329   -0.0074515    0.0139174
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0079601   -0.0197184    0.0356386
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0008965   -0.0258681    0.0276610
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0098679   -0.0068348    0.0265706


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0448954   -0.2006242    0.0906342
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0404040   -0.2620941    0.1423456
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1138692   -0.1597337    0.3229240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1173913   -0.0651687    0.2686622
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0937500   -0.8131914    0.3402301
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.4081631   -0.7659691   -0.1228527
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0518461   -0.0556458    0.1483926
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0397387   -0.1245850    0.1800515
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0182501   -0.1757476    0.1802384
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.2867012   -0.1360592    0.5521403
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0387388   -0.2149915    0.1119457
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1084397   -0.3366668    0.0808191
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0152742   -0.0461871    0.0731248
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2085826   -0.3587072   -0.0750454
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0448399   -0.0731011    0.1498184
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0122586   -0.0685779    0.0410924
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.1024430    0.0447275    0.1566714
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0638851   -0.1705692    0.0330759
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0208632   -0.0551041    0.0913610
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.2368856    0.0787078    0.3679057
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0492700   -0.1327045    0.0280186
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0727022   -0.1799581    0.0248043
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0426158   -0.0843022    0.1546780
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0327103   -0.0885726    0.0202854
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0180117   -0.0861002    0.0458083
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0434444   -0.1060775    0.1727536
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0005332   -0.0706997    0.0650351
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0097424   -0.0229837    0.0414216
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0178121   -0.0461253    0.0778416
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0013148   -0.0387221    0.0398085
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0360795   -0.0268293    0.0951343
