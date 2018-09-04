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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predexfd6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      142     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       26     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      170     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       13     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      142     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        5     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       22     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1     170
Birth       ki0047075b-MAL-ED          PERU                           0                   0      146     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     256
Birth       ki0047075b-MAL-ED          PERU                           1                   0      104     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      207     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      113     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       ki1000108-IRC              INDIA                          0                   0       14      14
Birth       ki1000108-IRC              INDIA                          0                   1        0      14
Birth       ki1000108-IRC              INDIA                          1                   0        0      14
Birth       ki1000108-IRC              INDIA                          1                   1        0      14
Birth       ki1000109-EE               PAKISTAN                       0                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0       47      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1        1      50
Birth       ki1101329-Keneba           GAMBIA                         0                   0      898    1401
Birth       ki1101329-Keneba           GAMBIA                         0                   1       19    1401
Birth       ki1101329-Keneba           GAMBIA                         1                   0      474    1401
Birth       ki1101329-Keneba           GAMBIA                         1                   1       10    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6878   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1094   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    27582   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2610   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      264    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       32    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1148    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       90    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      208     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       15     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       28     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6 months    ki0047075b-MAL-ED          PERU                           0                   0      149     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     269
6 months    ki0047075b-MAL-ED          PERU                           1                   0      110     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      228     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    ki1000108-IRC              INDIA                          0                   0       13      14
6 months    ki1000108-IRC              INDIA                          0                   1        1      14
6 months    ki1000108-IRC              INDIA                          1                   0        0      14
6 months    ki1000108-IRC              INDIA                          1                   1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                   0      250     744
6 months    ki1000109-EE               PAKISTAN                       0                   1       58     744
6 months    ki1000109-EE               PAKISTAN                       1                   0      306     744
6 months    ki1000109-EE               PAKISTAN                       1                   1      130     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      435     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       12     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      134     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     583
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1280    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   1       42    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   0      564    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   1       22    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      266    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       18    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      786    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       22    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6164   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      754   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    25192   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1254   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1674    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      180    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6372    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      292    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       90     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       94     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       13     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        4     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227
24 months   ki0047075b-MAL-ED          PERU                           0                   0      105     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     198
24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      142     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   ki1000108-IRC              INDIA                          0                   0       13      14
24 months   ki1000108-IRC              INDIA                          0                   1        1      14
24 months   ki1000108-IRC              INDIA                          1                   0        0      14
24 months   ki1000108-IRC              INDIA                          1                   1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      395     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      133     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       11     577
24 months   ki1101329-Keneba           GAMBIA                         0                   0      908    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   1       90    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   0      480    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   1       35    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      206     960
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       34     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      648     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       72     960
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3052   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      678   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11382   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1972   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1544    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      226    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6020    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      558    8348


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/bb13e057-a7c2-42c8-a7d8-30d1ecccdeb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb13e057-a7c2-42c8-a7d8-30d1ecccdeb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb13e057-a7c2-42c8-a7d8-30d1ecccdeb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb13e057-a7c2-42c8-a7d8-30d1ecccdeb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0202301   0.0111305   0.0293296
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0191785   0.0070448   0.0313123
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0970357   0.0924646   0.1016069
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0970345   0.0924641   0.1016049
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0778827   0.0532759   0.1024894
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0795679   0.0570150   0.1021207
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1824797   0.1280964   0.2368630
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2989990   0.2435092   0.3544888
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0310482   0.0216910   0.0404054
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0356826   0.0208542   0.0505110
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0604078   0.0216077   0.0992079
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0279174   0.0118089   0.0440259
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0838304   0.0756790   0.0919817
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0520310   0.0483023   0.0557597
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0686525   0.0541041   0.0832009
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0450155   0.0372662   0.0527649
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0721649   0.0205468   0.1237831
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1607143   0.0925334   0.2288952
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0877598   0.0610861   0.1144335
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0763889   0.0329676   0.1198102
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0892878   0.0716259   0.1069496
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0694680   0.0479299   0.0910060
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1044109   0.0515712   0.1572505
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0961260   0.0656271   0.1266249
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1543362   0.1395624   0.1691099
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1511355   0.1421781   0.1600929
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1117515   0.0919591   0.1315439
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0853094   0.0740990   0.0965198


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0206995   0.0132415   0.0281575
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0970548   0.0924831   0.1016266
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0795306   0.0569401   0.1021211
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0366300   0.0208588   0.0524012
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0601846   0.0563303   0.0640390
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0554121   0.0477101   0.0631140
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1196172   0.0755162   0.1637183
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0826173   0.0687407   0.0964939
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1104167   0.0823500   0.1384833
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1551159   0.1463315   0.1639003
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0939147   0.0835386   0.1042909


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.9480189   0.4361918   2.0604233
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9999869   0.9998636   1.0001101
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0216376   0.8809319   1.1848174
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6385329   1.1728672   2.2890827
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1492622   0.6892891   1.9161825
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4621488   0.1952653   1.0938019
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6206700   0.5560424   0.6928092
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6557013   0.5082944   0.8458567
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.2270408   0.9695218   5.1156260
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8704313   0.4568736   1.6583376
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.7780235   0.5396697   1.1216501
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9206512   0.5064831   1.6734985
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9792616   0.8865915   1.0816180
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7633849   0.6172899   0.9440563


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0004694   -0.0049131    0.0058519
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000191    0.0000107    0.0000274
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0016480   -0.0076047    0.0109006
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0702085    0.0268495    0.1135674
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0024947   -0.0029792    0.0079687
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0237778   -0.0545033    0.0069478
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0236457   -0.0299950   -0.0172965
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0132404   -0.0249948   -0.0014860
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0474523    0.0012340    0.0936706
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0028378   -0.0155620    0.0098864
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0066704   -0.0161023    0.0027614
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0060058   -0.0381621    0.0501737
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0007797   -0.0109203    0.0124798
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0178368   -0.0348095   -0.0008640


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0226775   -0.2751577    0.2509482
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0001966    0.0001106    0.0002825
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0207213   -0.1031307    0.1306680
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2778463    0.0895850    0.4271778
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0743744   -0.1033968    0.2235045
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6491334   -1.6690460   -0.0189562
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3928866   -0.4994268   -0.2939164
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2389442   -0.4703144   -0.0439826
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3967010   -0.1002381    0.6691901
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0334166   -0.1944070    0.1058744
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0807390   -0.2002905    0.0269049
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0543921   -0.4443521    0.3809166
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0050266   -0.0733407    0.0776722
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1899251   -0.3867863   -0.0210093
