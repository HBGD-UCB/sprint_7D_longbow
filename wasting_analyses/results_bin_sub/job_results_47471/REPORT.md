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

agecat        studyid                    country                        predexfd6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       15     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      174     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      165     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       50     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       25     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      189     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       17     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      148     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      223     248
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19205   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1548   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4906   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      818   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3155    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      550    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      804    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      213    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       28     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      155     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      241     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     248
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20146   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      593   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5256   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      455   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3623    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      964    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       23     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      170     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      168     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       45     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      192     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       13     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0      111     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      147     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      219     242
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12526   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1049   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3109   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      443   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3197    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      501    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      819    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      194    4711


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
![](/tmp/94f0de65-0711-442e-ab99-4fbe1082cc10/077354f8-202e-46ea-8883-adee8faef406/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94f0de65-0711-442e-ab99-4fbe1082cc10/077354f8-202e-46ea-8883-adee8faef406/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94f0de65-0711-442e-ab99-4fbe1082cc10/077354f8-202e-46ea-8883-adee8faef406/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94f0de65-0711-442e-ab99-4fbe1082cc10/077354f8-202e-46ea-8883-adee8faef406/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1868447   0.1178802   0.2558091
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1372475   0.0742332   0.2002618
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3703340   0.3077390   0.4329291
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3928908   0.3162231   0.4695586
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0913594   0.0503767   0.1323421
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1476905   0.1161166   0.1792644
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1347064   0.1120232   0.1573896
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1820758   0.1622090   0.2019426
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3262647   0.2814025   0.3711269
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3410254   0.2631305   0.4189202
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0794190   0.0753155   0.0835225
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1210453   0.1123385   0.1297521
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1517312   0.1386167   0.1648457
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1918302   0.1676258   0.2160345
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1155391   0.0740805   0.1569978
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.1875669   0.1275561   0.2475776
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0229338   0.0127296   0.0331381
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0352293   0.0256166   0.0448420
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0287591   0.0128082   0.0447101
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0769058   0.0342974   0.1195142
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0320401   0.0295484   0.0345318
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0610651   0.0550774   0.0670527
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0210612   0.0152816   0.0268409
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0438137   0.0304443   0.0571832
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1834750   0.1145835   0.2523666
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1092415   0.0499485   0.1685346
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3498224   0.2863219   0.4133229
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3541735   0.2786600   0.4296870
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1130753   0.0631742   0.1629763
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1251397   0.0948691   0.1554103
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1369511   0.1127562   0.1611460
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1763482   0.1563378   0.1963587
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3291300   0.2837547   0.3745054
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3277106   0.2481165   0.4073047
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0804746   0.0754852   0.0854639
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1107676   0.1000269   0.1215083
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1382668   0.1258730   0.1506607
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1753210   0.1518425   0.1987995


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7345539   0.4090191   1.319179
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0609094   0.8229065   1.367748
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6165886   0.9841761   2.655377
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3516499   1.1099764   1.645943
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0452414   0.8009055   1.364118
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.5241344   1.4027846   1.655982
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2642766   1.0915797   1.464295
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 1.6234053   1.0034700   2.626332
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.5361279   0.9114681   2.588888
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 2.6741333   1.2193461   5.864610
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.9058950   1.6971437   2.140323
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.0803043   1.3875764   3.118867
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5954028   0.3072403   1.153834
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0124378   0.7657608   1.338577
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1066938   0.6702817   1.827249
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2876733   1.0472607   1.583276
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9956872   0.7531632   1.316306
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.3764298   1.2308969   1.539170
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2679901   1.0824734   1.485301


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0229791   -0.0673617   0.0214035
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0096132   -0.0302287   0.0494551
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0372121    0.0004664   0.0739577
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0312892    0.0124642   0.0501142
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0029388   -0.0201715   0.0260491
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0099416    0.0077879   0.0120952
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0098529    0.0039666   0.0157392
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0243026   -0.0061234   0.0547286
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0079386   -0.0009305   0.0168078
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0119488   -0.0000040   0.0239016
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0075818    0.0060399   0.0091238
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0048466    0.0018076   0.0078856
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0332604   -0.0762536   0.0097328
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0040650   -0.0371150   0.0452449
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0090746   -0.0343213   0.0524704
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0266853    0.0064544   0.0469162
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0005843   -0.0238196   0.0226511
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0066393    0.0040613   0.0092174
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0092602    0.0034447   0.0150758


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1402316   -0.4428368   0.0989085
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0253014   -0.0854063   0.1247173
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2894271   -0.0574233   0.5225054
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1884940    0.0679309   0.2934623
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0089271   -0.0638120   0.0766925
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1112522    0.0872704   0.1346038
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0609769    0.0237218   0.0968103
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1737862   -0.0693176   0.3616215
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2571428   -0.0847280   0.4912671
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2935254   -0.0347571   0.5176584
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1913543    0.1534910   0.2275241
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1870717    0.0606106   0.2965085
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2214194   -0.5370474   0.0293954
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0114866   -0.1120050   0.1212641
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0742906   -0.3586194   0.3692582
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1630769    0.0308338   0.2772753
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0017783   -0.0750572   0.0665057
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0762144    0.0464945   0.1050079
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0627697    0.0223632   0.1015062
