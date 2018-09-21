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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        exclfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      147     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       40     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       17     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      194     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       18     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      145     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       86     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      178     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       44     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       14     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        1     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      252     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       19     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       16     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2       9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        1       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        3       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0       4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      156     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1      138     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      258     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1      190     742
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      369     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       95     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      146     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       25     635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      776    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      577    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      405    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      218    1976
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       96    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1      106    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      380    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      456    1038
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     6126   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1842   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    25260   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     5118   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1408    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      606    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     5264    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1780    9058
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      173     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       13     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       59     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      199     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       18     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      194     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        6     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      205     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      266     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        5     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       16     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      268     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      247     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        3       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        1       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0       4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      216     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       70     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      376     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       72     734
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      430     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       30     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      167     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1138    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1      207    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      553    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       69    1967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      156    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       34    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      692    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1      122    1004
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     7060   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      828   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    28248   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1938   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1858    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       66    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     6782    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      178    8884
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      148     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       16     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      184     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      166     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       62     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      185     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       35     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        1     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      237     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       16     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       16     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      218     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       9
6-24 months                   ki1000108-IRC              INDIA                          0                       0        2       4
6-24 months                   ki1000108-IRC              INDIA                          0                       1        2       4
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0       4
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0       4
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      196     740
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       98     740
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      298     740
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1      148     740
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      376     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       77     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1       22     613
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      863    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      462    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      397    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      182    1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      110    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       94    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      444    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      404    1052
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     4448   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1106   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    18492   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3436   27482
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1442    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      580    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     5392    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1680    9094


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fc9f3fe8-9265-4818-8480-862ba883d3f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc9f3fe8-9265-4818-8480-862ba883d3f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc9f3fe8-9265-4818-8480-862ba883d3f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc9f3fe8-9265-4818-8480-862ba883d3f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2211406   0.1639693   0.2783119
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3276132   0.2373628   0.4178637
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4864238   0.4195971   0.5532504
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4367955   0.3777513   0.4958398
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2064799   0.1699325   0.2430273
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1427122   0.0899660   0.1954584
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4325723   0.4073176   0.4578271
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3726961   0.3401063   0.4052858
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5134870   0.4239154   0.6030585
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5450571   0.4975685   0.5925457
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2340344   0.2209642   0.2471045
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1708928   0.1643147   0.1774709
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2719302   0.2451027   0.2987577
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2535107   0.2367377   0.2702836
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0698925   0.0331775   0.1066075
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0781250   0.0122441   0.1440059
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2403605   0.1747233   0.3059977
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1634504   0.1169017   0.2099991
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1507466   0.1318765   0.1696168
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.1016589   0.0788013   0.1245165
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1776460   0.1007719   0.2545202
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1501439   0.1154404   0.1848473
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1171468   0.1077211   0.1265725
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0647961   0.0605151   0.0690771
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0452462   0.0328945   0.0575980
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0261611   0.0202747   0.0320476
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1590870   0.1049369   0.2132370
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2539838   0.1462756   0.3616919
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.2924981   0.2231094   0.3618868
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3142189   0.2555132   0.3729246
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1717490   0.1374267   0.2060714
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1334970   0.0804332   0.1865608
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3563526   0.3317013   0.3810039
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3384662   0.3055058   0.3714265
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3870346   0.2997960   0.4742731
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4715389   0.4242917   0.5187862
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1899287   0.1761382   0.2037192
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1600938   0.1527389   0.1674487
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2570472   0.2293967   0.2846977
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2378126   0.2211459   0.2544793


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1889764   0.1585028   0.2194500
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.4023279   0.3807014   0.4239544
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1815052   0.1751641   0.1878464
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2634136   0.2482170   0.2786101
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.1403152   0.1249627   0.1556677
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0726480   0.0685748   0.0767212
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0274651   0.0220747   0.0328555
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.3382353   0.3169789   0.3594917
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1652718   0.1582686   0.1722751
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2485155   0.2334424   0.2635886


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.4814703   1.0301977   2.1304204
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.8979733   0.7435093   1.0845271
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.6911675   0.4596298   1.0393419
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    0                 0.8615809   0.7779947   0.9541474
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0614819   0.8735764   1.2898055
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7302037   0.6854065   0.7779289
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9322639   0.8307111   1.0462313
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1177885   0.4138891   3.0188066
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.6800218   0.4620922   1.0007301
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    0                 0.6743693   0.5232010   0.8692144
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8451858   0.5177143   1.3797937
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5531187   0.4993859   0.6126331
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5781949   0.4033580   0.8288155
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5965089   0.9268544   2.7499904
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 1.0742597   0.8013433   1.4401242
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7772794   0.4995915   1.2093145
6-24 months                   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba      GAMBIA       1                    0                 0.9498070   0.8467233   1.0654406
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.2183380   0.9518902   1.5593686
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8429150   0.7774462   0.9138969
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9251710   0.8165730   1.0482118


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0059510   -0.0225823    0.0344844
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0443752   -0.0959619    0.0072115
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0175035   -0.0348398   -0.0001673
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0302444   -0.0437030   -0.0167858
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0279389   -0.0524540    0.1083318
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0525291   -0.0633084   -0.0417499
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0085166   -0.0317947    0.0147614
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0021075   -0.0172053    0.0214204
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0469000   -0.0944302    0.0006301
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0104314   -0.0198594   -0.0010035
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0222675   -0.0905925    0.0460575
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0444988   -0.0525026   -0.0364949
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0177811   -0.0284767   -0.0070856
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0250134   -0.0072052    0.0572321
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.0399343   -0.0123843    0.0922530
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0102482   -0.0267003    0.0062038
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0181173   -0.0307832   -0.0054514
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0863495    0.0076151    0.1650838
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0246569   -0.0362107   -0.0131031
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0085317   -0.0324105    0.0153471


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0262054   -0.1075116    0.1437780
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.1003854   -0.2259562    0.0123235
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0926228   -0.1880060   -0.0048978
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0751735   -0.1094804   -0.0419275
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0516024   -0.1090068    0.1889517
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2894083   -0.3499689   -0.2315646
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0323318   -0.1247690    0.0525087
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0292712   -0.2793297    0.2634312
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.2424270   -0.5138543   -0.0196654
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0743429   -0.1432604   -0.0095797
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1433116   -0.6786758    0.2213140
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.6125261   -0.7276564   -0.5050680
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.6474083   -1.1001074   -0.2922930
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1358684   -0.0552866    0.2923976
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.1201276   -0.0523920    0.2643659
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0634561   -0.1703198    0.0336497
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0535642   -0.0918708   -0.0166016
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1824089   -0.0017992    0.3327453
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1491900   -0.2212543   -0.0813781
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0343307   -0.1351498    0.0575342
