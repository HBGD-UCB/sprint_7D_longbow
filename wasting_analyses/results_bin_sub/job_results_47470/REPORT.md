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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** exclfeed36

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

agecat        studyid                    country                        exclfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      161     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       26     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       18     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      205     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     243
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      182     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       54     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      203     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       20     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      260     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       11     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      260     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     281
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      232     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     256
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
0-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
0-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
0-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
0-24 months   ki1000109-EE               PAKISTAN                       1                   0      140     373
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       86     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       89     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       58     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      152     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      398     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       70     639
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      537    1983
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       88    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1104    1983
0-24 months   ki1101329-Keneba           GAMBIA                         0                   1      254    1983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       39     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14138   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1202   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3448   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      597   19385
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3010    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      532    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      805    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      211    4558
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      180     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       18     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      207     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        7     243
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       18     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      216     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        7     238
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       16     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      269     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        2     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      277     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     281
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      251     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     256
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-6 months    ki1000108-IRC              INDIA                          1                   0        0       4
0-6 months    ki1000108-IRC              INDIA                          1                   1        0       4
0-6 months    ki1000108-IRC              INDIA                          0                   0        3       4
0-6 months    ki1000108-IRC              INDIA                          0                   1        1       4
0-6 months    ki1000109-EE               PAKISTAN                       1                   0      199     373
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       27     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   0      121     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       26     373
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      169     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      441     639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27     639
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      611    1983
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       14    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   0     1310    1983
0-6 months    ki1101329-Keneba           GAMBIA                         0                   1       48    1983
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      413     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14909   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      425   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3730   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      306   19370
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3461    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      963    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       43    4545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       12     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      152     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       23     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       17     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      188     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      181     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       47     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      205     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       15     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      243     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      240     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      223     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        1       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6-24 months   ki1000108-IRC              INDIA                          1                   0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                   1        0       4
6-24 months   ki1000108-IRC              INDIA                          0                   0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                   1        1       4
6-24 months   ki1000109-EE               PAKISTAN                       1                   0      142     368
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       80     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       94     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       52     368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      142     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       18     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      396     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       57     613
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      499    1904
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       80    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   0     1089    1904
6-24 months   ki1101329-Keneba           GAMBIA                         0                   1      236    1904
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      132     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       65     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10109   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      853   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2408   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      357   13727
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3053    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      483    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      818    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      193    4547


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ddd105a4-8059-4e5d-a95b-89e8d5987cca/03d8eb27-01e3-4241-b18e-8bfca2a8a133/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ddd105a4-8059-4e5d-a95b-89e8d5987cca/03d8eb27-01e3-4241-b18e-8bfca2a8a133/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ddd105a4-8059-4e5d-a95b-89e8d5987cca/03d8eb27-01e3-4241-b18e-8bfca2a8a133/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ddd105a4-8059-4e5d-a95b-89e8d5987cca/03d8eb27-01e3-4241-b18e-8bfca2a8a133/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1963924   0.0975749   0.2952099
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1417617   0.0920963   0.1914270
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3881552   0.3250474   0.4512629
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3838238   0.3050447   0.4626029
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1044159   0.0576071   0.1512246
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1497120   0.1174068   0.1820171
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1473811   0.1202928   0.1744695
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1832084   0.1628622   0.2035546
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3149006   0.2707875   0.3590136
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3790645   0.2845531   0.4735759
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0830582   0.0782712   0.0878451
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1257667   0.1153967   0.1361367
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1531103   0.1397761   0.1664444
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1892705   0.1654622   0.2130789
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1240552   0.0815709   0.1665396
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1830400   0.1216570   0.2444229
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0225878   0.0109108   0.0342647
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0351698   0.0253786   0.0449611
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0282353   0.0124722   0.0439984
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0873786   0.0327917   0.1419656
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0309763   0.0281844   0.0337682
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0593245   0.0524009   0.0662482
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0220452   0.0161340   0.0279564
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0431032   0.0297789   0.0564275
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1683028   0.0684518   0.2681539
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1283683   0.0779021   0.1788346
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3649073   0.3017872   0.4280274
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3478966   0.2700520   0.4257412
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1113184   0.0623934   0.1602434
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1261510   0.0955717   0.1567303
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1450070   0.1172577   0.1727563
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1750427   0.1547224   0.1953631
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3128906   0.2688500   0.3569312
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3690255   0.2743883   0.4636627
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0812518   0.0757627   0.0867409
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1145252   0.1018437   0.1272067
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1396732   0.1271467   0.1521996
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1752826   0.1517161   0.1988490


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3860590   0.3365861   0.4355318
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1392801   0.1124135   0.1661468
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1724660   0.1558341   0.1890978
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3257576   0.2857449   0.3657703
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0928037   0.0883057   0.0973017
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1630101   0.1508647   0.1751555
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1420912   0.1066114   0.1775709
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0312658   0.0236039   0.0389276
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0397727   0.0230879   0.0564576
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0377388   0.0349183   0.0405593
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0266227   0.0211044   0.0321409
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1470588   0.1019690   0.1921487
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3586957   0.3096263   0.4077650
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1659664   0.1492505   0.1826823
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3212928   0.2813480   0.3612376
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0881474   0.0829797   0.0933152
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1486695   0.1373410   0.1599979


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7218287   0.3917140   1.330146
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9888411   0.7639967   1.279857
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4338049   0.8725506   2.356077
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2430924   1.0062831   1.535630
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2037594   0.9044327   1.602150
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5142005   1.3736600   1.669120
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2361714   1.0681105   1.430676
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.4754717   0.9142040   2.381325
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.5570304   0.8651906   2.802092
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 3.0946602   1.3389106   7.152771
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.9151595   1.6691414   2.197439
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9552200   1.3077023   2.923360
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7627224   0.3732412   1.558631
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9533837   0.7196445   1.263041
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1332445   0.6868053   1.869879
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2071334   0.9680603   1.505248
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1794075   0.8802905   1.580163
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4095108   1.2421348   1.599441
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2549482   1.0719566   1.469178


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0410139   -0.1235610   0.0415333
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0020962   -0.0412082   0.0370158
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0348643   -0.0067521   0.0764807
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0250848    0.0021734   0.0479962
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0108570   -0.0095473   0.0312613
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0097456    0.0071863   0.0123048
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0098998    0.0037399   0.0160597
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0180359   -0.0117843   0.0478562
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0086780   -0.0018103   0.0191663
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0115374    0.0002746   0.0228003
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0067625    0.0051208   0.0084041
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0045775    0.0014727   0.0076822
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0212440   -0.1045414   0.0620534
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0062116   -0.0456153   0.0331920
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0110307   -0.0315341   0.0535955
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0209594   -0.0026546   0.0445735
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0084022   -0.0116853   0.0284897
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068957    0.0040403   0.0097511
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0089963    0.0030011   0.0149915


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2639611   -0.9179985   0.1670496
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0054297   -0.1120224   0.0909455
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2503176   -0.1141473   0.4955572
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1454479    0.0023124   0.2680482
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0333285   -0.0313335   0.0939364
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1050127    0.0774061   0.1317932
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0607313    0.0221315   0.0978075
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1269321   -0.1067972   0.3113033
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2775558   -0.1385029   0.5415685
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2900840   -0.0201657   0.5059815
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1791918    0.1367495   0.2195473
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1719384    0.0466004   0.2807988
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1444593   -0.8705120   0.2997708
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0173173   -0.1333326   0.0868219
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0901575   -0.3332075   0.3790814
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1262872   -0.0276327   0.2571527
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0261512   -0.0383818   0.0866736
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0782290    0.0456867   0.1096617
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0605120    0.0192941   0.0999976
