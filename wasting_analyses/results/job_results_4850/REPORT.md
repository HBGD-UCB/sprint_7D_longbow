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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predexfd6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      113     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      142     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      166     187
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       15     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      139     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        4     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       22     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     165
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     249
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     249
Birth       ki0047075b-MAL-ED          PERU                           1                  0      104     249
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      205     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-IRC              INDIA                          0                  0       12      12
Birth       ki1000108-IRC              INDIA                          0                  1        0      12
Birth       ki1000108-IRC              INDIA                          1                  0        0      12
Birth       ki1000108-IRC              INDIA                          1                  1        0      12
Birth       ki1000109-EE               PAKISTAN                       0                  0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       44      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        1      47
Birth       ki1101329-Keneba           GAMBIA                         0                  0      877    1336
Birth       ki1101329-Keneba           GAMBIA                         0                  1        8    1336
Birth       ki1101329-Keneba           GAMBIA                         1                  0      448    1336
Birth       ki1101329-Keneba           GAMBIA                         1                  1        3    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5958   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       92   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    24384   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      406   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      224    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1032    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       10    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      111     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
6 months    ki1000108-IRC              INDIA                          0                  0       14      14
6 months    ki1000108-IRC              INDIA                          0                  1        0      14
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                  0      298     752
6 months    ki1000109-EE               PAKISTAN                       0                  1       14     752
6 months    ki1000109-EE               PAKISTAN                       1                  0      436     752
6 months    ki1000109-EE               PAKISTAN                       1                  1        4     752
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      441     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        0     582
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1299    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1       23    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  0      577    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1        9    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      284    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      794    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6802   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      136   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    26048   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      324   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1838    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       20    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6624    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       38    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      199     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0      114     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1        0     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      210     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
24 months   ki1000108-IRC              INDIA                          0                  0       14      14
24 months   ki1000108-IRC              INDIA                          0                  1        0      14
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      427     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      142     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     578
24 months   ki1101329-Keneba           GAMBIA                         0                  0      978    1514
24 months   ki1101329-Keneba           GAMBIA                         0                  1       22    1514
24 months   ki1101329-Keneba           GAMBIA                         1                  0      509    1514
24 months   ki1101329-Keneba           GAMBIA                         1                  1        5    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      222     958
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       18     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      706     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       12     958
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3546   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      174   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12812   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      494   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1716    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       52    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6388    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      162    8318


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c3a8a9e1-7d67-44ef-b069-ad1075cb8bb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3a8a9e1-7d67-44ef-b069-ad1075cb8bb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3a8a9e1-7d67-44ef-b069-ad1075cb8bb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3a8a9e1-7d67-44ef-b069-ad1075cb8bb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0145778   0.0122399   0.0169158
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0163331   0.0139419   0.0187243
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0184328   0.0135118   0.0233539
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0123963   0.0102917   0.0145008
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0128274   0.0075476   0.0181072
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057977   0.0006007   0.0109948
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0710823   0.0254117   0.1167528
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169508   0.0035794   0.0303222
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0400142   0.0315913   0.0484370
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0380003   0.0332630   0.0427376
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0286663   0.0189525   0.0383801
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0254832   0.0190286   0.0319379


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0161479   0.0137874   0.0185083
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0167715   0.0110080   0.0225350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0138097   0.0117159   0.0159035
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0068075   0.0025982   0.0110168
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0178336   0.0111649   0.0245022
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0313152   0.0157016   0.0469288
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0392341   0.0348275   0.0436407
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0257273   0.0200920   0.0313626


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.1204074   1.0341139   1.2139019
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.8827719   0.4109264   1.8964134
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6725091   0.4961123   0.9116254
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4519807   0.1681241   1.2150941
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.4421648   0.1683720   1.1611776
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2384670   0.0862997   0.6589424
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9496712   0.7469906   1.2073450
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8889618   0.5820771   1.3576432


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0015701    0.0006153    0.0025248
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0006264   -0.0043742    0.0031214
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0046232   -0.0086667   -0.0005797
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0060199   -0.0118261   -0.0002137
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0041664   -0.0083999    0.0000670
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0397670   -0.0751739   -0.0043601
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0007801   -0.0079795    0.0064194
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0029390   -0.0119547    0.0060768


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0972298    0.0377435    0.1530387
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0373487   -0.2862635    0.1633966
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3347781   -0.6545923   -0.0767804
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.8843037   -2.5904812    0.0111074
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.2336296   -0.4762584   -0.0308778
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2698938   -2.4614602   -0.4885099
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0198821   -0.2209546    0.1480768
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1142345   -0.5335240    0.1904146
