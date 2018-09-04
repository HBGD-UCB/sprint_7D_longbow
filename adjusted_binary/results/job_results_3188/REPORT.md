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

**Intervention Variable:** exclfeed6

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

agecat      studyid                    country                        exclfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      169     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      157     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       11     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      178     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        5     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      153     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        6     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     170
Birth       ki0047075b-MAL-ED          PERU                           0                   0      241     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        5     256
Birth       ki0047075b-MAL-ED          PERU                           1                   0        9     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        1     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      210     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     211
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6930   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1098   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    27530   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2606   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      268    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       32    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1144    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       90    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      172     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       55     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      193     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                   0      249     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        9     269
6 months    ki0047075b-MAL-ED          PERU                           1                   0       10     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      229     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6212   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      754   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    25144   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1254   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1698    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      182    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6348    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      290    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      140     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       16     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        9     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      193     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       26     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        3     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        2     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      205     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                   0      177     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1       13     198
24 months   ki0047075b-MAL-ED          PERU                           1                   0        8     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      202     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      143     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3076   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      678   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11358   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1972   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1564    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      232    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6000    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      552    8348


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
![](/tmp/17cb9958-a0fb-4f54-9129-bd97c9333abc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/17cb9958-a0fb-4f54-9129-bd97c9333abc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/17cb9958-a0fb-4f54-9129-bd97c9333abc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/17cb9958-a0fb-4f54-9129-bd97c9333abc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0202300   0.0111301   0.0293299
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0191783   0.0070446   0.0313120
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0970436   0.0924722   0.1016151
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0970379   0.0924672   0.1016086
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0748123   0.0511171   0.0985074
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0793873   0.0568436   0.1019310
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1855827   0.1287477   0.2424178
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3001546   0.2436900   0.3566192
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0310303   0.0216401   0.0404205
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0354452   0.0204356   0.0504547
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0602899   0.0214955   0.0990842
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0279576   0.0118509   0.0440644
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0827206   0.0745058   0.0909355
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0519909   0.0482571   0.0557248
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0708012   0.0561937   0.0854088
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0451620   0.0373358   0.0529881
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1025641   0.0548412   0.1502870
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1698113   0.0684847   0.2711379
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0877617   0.0610886   0.1144349
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0763788   0.0329609   0.1197967
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0892306   0.0716576   0.1068036
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0696444   0.0482992   0.0909896
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1055742   0.0527787   0.1583697
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0963217   0.0658322   0.1268111
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1550834   0.1400104   0.1701564
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1514988   0.1425141   0.1604836
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1098415   0.0905307   0.1291523
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0846719   0.0734423   0.0959015


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
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.9480134   0.4361803   2.0604540
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9999411   0.9998270   1.0000552
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0611538   0.9175138   1.2272812
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6173626   1.1506839   2.2733105
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1422772   0.6796872   1.9197025
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4637205   0.1958987   1.0976931
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6285125   0.5621194   0.7027474
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6378699   0.4962056   0.8199786
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6556604   0.7768770   3.5285010
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8702971   0.4567959   1.6581085
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.7804991   0.5440733   1.1196633
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9123597   0.5047875   1.6490110
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9768863   0.8832704   1.0804244
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7708552   0.6233985   0.9531909


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0004695   -0.0049130    0.0058520
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000112    0.0000034    0.0000190
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0047184   -0.0040517    0.0134885
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0671054    0.0225699    0.1116409
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0025127   -0.0029895    0.0080149
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0236598   -0.0543796    0.0070599
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0225360   -0.0289397   -0.0161323
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0153892   -0.0271638   -0.0036146
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0170531   -0.0116264    0.0457326
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0028397   -0.0155634    0.0098840
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0066133   -0.0159354    0.0027088
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0048425   -0.0392762    0.0489611
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000325   -0.0118559    0.0119209
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0159268   -0.0325178    0.0006643


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0226818   -0.2751549    0.2509530
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0001154    0.0000351    0.0001957
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0593279   -0.0578837    0.1635526
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2655662    0.0692254    0.4204901
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0749099   -0.1039588    0.2247975
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6459134   -1.6660929   -0.0161052
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3744477   -0.4818550   -0.2748256
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2777224   -0.5091696   -0.0817701
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1425641   -0.1281893    0.3483396
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0334390   -0.1944231    0.1058477
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0800474   -0.1981812    0.0264391
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0438562   -0.4527502    0.3707033
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0002097   -0.0794471    0.0739884
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1695875   -0.3620709   -0.0043053
