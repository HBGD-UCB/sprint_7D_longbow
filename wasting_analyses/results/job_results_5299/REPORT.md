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
![](/tmp/5fb33cfa-8e45-41f1-8a33-46337bfc797c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5fb33cfa-8e45-41f1-8a33-46337bfc797c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5fb33cfa-8e45-41f1-8a33-46337bfc797c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5fb33cfa-8e45-41f1-8a33-46337bfc797c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2209104   0.1635787   0.2782421
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3291079   0.2376476   0.4205682
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4774610   0.4054821   0.5494399
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4298992   0.3687673   0.4910311
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2066597   0.1702474   0.2430721
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1421072   0.0899726   0.1942417
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4322202   0.4069618   0.4574786
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3718841   0.3391122   0.4046559
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5127958   0.4255581   0.6000335
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5450419   0.4976483   0.5924354
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2340426   0.2209718   0.2471133
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1708859   0.1643080   0.1774638
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2718042   0.2446586   0.2989499
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2537176   0.2369144   0.2705207
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0698925   0.0331775   0.1066075
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0781250   0.0122441   0.1440059
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2377004   0.1765651   0.2988357
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1606300   0.1155581   0.2057018
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1507843   0.1320381   0.1695306
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.1005757   0.0785903   0.1225610
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1774285   0.1005956   0.2542613
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1501891   0.1154868   0.1848914
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1174005   0.1079527   0.1268483
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0648182   0.0605357   0.0691008
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0452316   0.0328753   0.0575880
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0261602   0.0202735   0.0320469
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1589407   0.1047932   0.2130883
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2545623   0.1469261   0.3621984
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.2918449   0.2228084   0.3608814
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3120803   0.2531239   0.3710366
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1717675   0.1374889   0.2060461
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1335246   0.0807213   0.1863279
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3560803   0.3312106   0.3809500
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3403711   0.3065076   0.3742346
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3848042   0.2996873   0.4699211
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4712133   0.4240581   0.5183685
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1891990   0.1753481   0.2030499
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1591908   0.1518305   0.1665511
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2569475   0.2293742   0.2845208
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2377971   0.2211343   0.2544599


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.4897802   1.0303578   2.1540526
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.9003861   0.7346061   1.1035780
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.6876383   0.4590536   1.0300462
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    0                 0.8604042   0.7766914   0.9531398
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0628828   0.8781935   1.2864134
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7301486   0.6853543   0.7778705
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9334570   0.8307070   1.0489161
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1177885   0.4138891   3.0188066
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.6757665   0.4669086   0.9780508
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    0                 0.6670167   0.5203964   0.8549470
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8464770   0.5184215   1.3821249
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5521119   0.4984451   0.6115569
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5783611   0.4034105   0.8291840
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6016177   0.9306560   2.7563128
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 1.0693360   0.7935674   1.4409355
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7773565   0.5009166   1.2063549
6-24 months                   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba      GAMBIA       1                    0                 0.9558830   0.8491600   1.0760191
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.2245534   0.9604608   1.5612623
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8413934   0.7753433   0.9130702
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9254695   0.8170300   1.0483015


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0061812   -0.0228720    0.0352345
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0354125   -0.0904610    0.0196360
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0176834   -0.0348600   -0.0005067
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0298922   -0.0432945   -0.0164900
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0286300   -0.0497492    0.1070092
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0525373   -0.0633169   -0.0417578
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0083907   -0.0319619    0.0151805
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0021075   -0.0172053    0.0214204
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0442399   -0.0880129   -0.0004669
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0104691   -0.0198501   -0.0010881
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0220500   -0.0903351    0.0462352
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0447525   -0.0527776   -0.0367275
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0177665   -0.0284660   -0.0070671
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0251597   -0.0070468    0.0573662
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.0405875   -0.0121519    0.0933269
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0102667   -0.0266408    0.0061074
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0178450   -0.0308544   -0.0048356
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0885799    0.0116343    0.1655254
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0239272   -0.0355576   -0.0122968
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0084320   -0.0322493    0.0153852


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0272191   -0.1090854    0.1467720
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0801099   -0.2132356    0.0384082
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0935745   -0.1881121   -0.0065591
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0742982   -0.1084437   -0.0412045
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0528789   -0.1033338    0.1869746
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2894536   -0.3500154   -0.2316085
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0318536   -0.1254913    0.0539937
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0292712   -0.2793297    0.2634312
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.2286767   -0.4801952   -0.0198968
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0746114   -0.1432852   -0.0100626
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1419114   -0.6770366    0.2224608
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.6160186   -0.7314458   -0.5082864
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.6468760   -1.0996962   -0.2917110
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1366629   -0.0544463    0.2931352
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.1220925   -0.0516110    0.2671039
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0635706   -0.1699095    0.0331026
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0527591   -0.0920970   -0.0148383
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1871205    0.0076839    0.3341103
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1447747   -0.2173363   -0.0765383
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0339295   -0.1344814    0.0577103
