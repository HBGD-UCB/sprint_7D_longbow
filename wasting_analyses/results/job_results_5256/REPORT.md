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
![](/tmp/6a1f1204-279d-4978-889e-a23a85bae77c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a1f1204-279d-4978-889e-a23a85bae77c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a1f1204-279d-4978-889e-a23a85bae77c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a1f1204-279d-4978-889e-a23a85bae77c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0145856   0.0122382   0.0169330
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0163330   0.0139422   0.0187238
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0183996   0.0134796   0.0233196
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0123526   0.0102479   0.0144573
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0128808   0.0076076   0.0181540
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0058005   0.0006024   0.0109986
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0711960   0.0255219   0.1168702
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169143   0.0035426   0.0302860
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0397466   0.0313973   0.0480959
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0379225   0.0331855   0.0426596
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0287112   0.0189275   0.0384949
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0254751   0.0190162   0.0319339


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
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.1198036   1.0324332   1.2145678
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.8827719   0.4109264   1.8964134
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6713516   0.4949259   0.9106674
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4503218   0.1677026   1.2092226
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.4421648   0.1683720   1.1611776
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2375738   0.0859119   0.6569675
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9541068   0.7500026   1.2137556
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8872883   0.5800286   1.3573132


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0015623    0.0005928    0.0025318
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0006264   -0.0043742    0.0031214
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0045899   -0.0086328   -0.0005471
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0060733   -0.0118753   -0.0002714
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0041664   -0.0083999    0.0000670
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0398808   -0.0752864   -0.0044752
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0005125   -0.0076867    0.0066617
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0029838   -0.0120541    0.0060865


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0967470    0.0362118    0.1534800
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0373487   -0.2862635    0.1633966
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3323717   -0.6522302   -0.0744353
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.8921485   -2.6025657    0.0062011
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.2336296   -0.4762584   -0.0308778
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2735267   -2.4642474   -0.4920770
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0130629   -0.2135010    0.1542681
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1159790   -0.5380356    0.1902600
