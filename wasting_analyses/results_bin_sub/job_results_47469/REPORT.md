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

agecat        studyid                    country                        exclfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       44     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       14     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      155     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       25     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       17     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      193     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      176     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       52     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       20     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      250     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       15      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
0-24 months   ki1000108-IRC              INDIA                          0                  0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                  1        2      14
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      141     379
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       82     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       94     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       62     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      200     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      410     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       71     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      718    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      108    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1146    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      263    2235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      283     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      136     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       96     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       50     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19172   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1546   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4939   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      820   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3141    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      549    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      818    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      214    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       56     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      173     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       17     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      195     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0        6     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       17     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      213     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       11     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      258     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      244     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      243     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      14
0-6 months    ki1000108-IRC              INDIA                          0                  0       12      14
0-6 months    ki1000108-IRC              INDIA                          0                  1        2      14
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      198     379
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      128     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       28     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      217     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      453     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       28     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      807    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       19    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1359    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       50    2235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      407     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       12     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      135     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       11     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20112   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      592   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5290   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      456   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3609    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      978    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       44     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       13     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      154     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       22     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      189     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      179     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       46     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      204     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       15     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      220     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     242
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       16      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
6-24 months   ki1000108-IRC              INDIA                          0                  0       13      14
6-24 months   ki1000108-IRC              INDIA                          0                  1        1      14
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      142     373
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       99     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       56     373
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      138     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      401     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       57     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      624    2090
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       97    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      245    2090
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      135     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       95     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12503   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1048   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3132   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      444   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3184    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      500    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      832    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      195    4711


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/75498b61-d344-429b-b10a-eced697c52c8/22c542ea-cde4-46f0-b6e5-0fcfa9ce5034/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75498b61-d344-429b-b10a-eced697c52c8/22c542ea-cde4-46f0-b6e5-0fcfa9ce5034/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75498b61-d344-429b-b10a-eced697c52c8/22c542ea-cde4-46f0-b6e5-0fcfa9ce5034/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75498b61-d344-429b-b10a-eced697c52c8/22c542ea-cde4-46f0-b6e5-0fcfa9ce5034/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2271037   0.1133503   0.3408570
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1417109   0.0909252   0.1924966
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3717354   0.3086865   0.4347843
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3911323   0.3151584   0.4671062
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0910641   0.0509386   0.1311895
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1472365   0.1157435   0.1787294
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1359165   0.1131322   0.1587009
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1816713   0.1618033   0.2015393
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3253265   0.2803234   0.3703296
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3361069   0.2578534   0.4143604
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0791401   0.0750512   0.0832290
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1211489   0.1124662   0.1298315
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1523996   0.1391759   0.1656233
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1869358   0.1629450   0.2109266
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1128005   0.0714735   0.1541275
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.1784974   0.1178986   0.2390962
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0232759   0.0129898   0.0335620
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0350223   0.0254435   0.0446011
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0288030   0.0128152   0.0447908
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0731720   0.0299316   0.1164123
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0320421   0.0295865   0.0344977
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0614907   0.0554433   0.0675380
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0211257   0.0152978   0.0269536
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0452412   0.0318300   0.0586524
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2199434   0.1073696   0.3325172
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1244177   0.0752478   0.1735875
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3568555   0.2931871   0.4205239
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3565887   0.2806428   0.4325345
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1134736   0.0630211   0.1639261
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1251623   0.0949102   0.1554144
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1369269   0.1123829   0.1614709
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1760096   0.1560497   0.1959695
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3272383   0.2820868   0.3723897
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3307390   0.2524666   0.4090115
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0806267   0.0756079   0.0856454
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1100585   0.0993156   0.1208014
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1389760   0.1265330   0.1514191
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1711029   0.1478763   0.1943295


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1638655   0.1167401   0.2109910
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1659955   0.1505665   0.1814246
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3292035   0.2904210   0.3679861
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0893606   0.0854348   0.0932864
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1615841   0.1496375   0.1735306
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0308725   0.0236998   0.0380452
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0407080   0.0243991   0.0570168
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0396219   0.0371297   0.0421141
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0259078   0.0204779   0.0313377
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1502146   0.1042403   0.1961889
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1636364   0.1477722   0.1795005
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3285458   0.2895051   0.3675864
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0871139   0.0824317   0.0917961
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1475271   0.1364035   0.1586506


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6239920   0.3379279   1.152216
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0521795   0.8156310   1.357331
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6168447   0.9926518   2.633538
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3366389   1.0980242   1.627108
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0331372   0.7876945   1.355059
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.5308150   1.4093126   1.662793
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2266163   1.0565413   1.424069
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 1.5824166   0.9608937   2.605951
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.5046603   0.8949070   2.529875
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 2.5404268   1.1295876   5.713385
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.9190583   1.7095608   2.154229
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.1415231   1.4385903   3.187927
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5656803   0.2959785   1.081140
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 0.9992523   0.7585936   1.316258
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1030081   0.6659104   1.827013
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2854275   1.0432589   1.583810
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0106979   0.7688358   1.328646
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.3650389   1.2201235   1.527166
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2311682   1.0492695   1.444600


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0632381   -0.1583435   0.0318673
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0082119   -0.0319195   0.0483433
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0375074    0.0014688   0.0735459
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0300790    0.0111777   0.0489802
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0038770   -0.0194939   0.0272479
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0102205    0.0080716   0.0123694
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0091845    0.0032013   0.0151677
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0270412   -0.0031358   0.0572182
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0075966   -0.0013328   0.0165261
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0119049   -0.0000219   0.0238318
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0075798    0.0060479   0.0091117
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0047821    0.0017324   0.0078319
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0697288   -0.1635549   0.0240972
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0029681   -0.0439510   0.0380148
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0086762   -0.0351976   0.0525501
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0267095    0.0061826   0.0472363
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0013075   -0.0217567   0.0243718
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0064873    0.0038954   0.0090791
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0085510    0.0027139   0.0143881


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.3859146   -1.0912718   0.0815353
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0216132   -0.0899402   0.1217493
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2917239   -0.0462792   0.5205343
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1812036    0.0601409   0.2866724
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0117770   -0.0618215   0.0802741
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1143734    0.0904747   0.1376441
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0568404    0.0189393   0.0932772
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1933699   -0.0483516   0.3793570
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2460640   -0.0981019   0.4823618
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2924475   -0.0355747   0.5165674
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1913037    0.1539765   0.2269840
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1845827    0.0571086   0.2948230
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.4641947   -1.2235226   0.0358244
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                -0.0083871   -0.1311092   0.1010200
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0710295   -0.3674383   0.3689030
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1632245    0.0287276   0.2790969
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0039797   -0.0687512   0.0717611
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0744687    0.0445448   0.1034554
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0579624    0.0174065   0.0968444
