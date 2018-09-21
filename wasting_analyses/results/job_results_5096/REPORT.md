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

unadjusted

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
![](/tmp/6917b15b-37ed-4131-b26f-b5e15b5b2647/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6917b15b-37ed-4131-b26f-b5e15b5b2647/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6917b15b-37ed-4131-b26f-b5e15b5b2647/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6917b15b-37ed-4131-b26f-b5e15b5b2647/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2139037   0.1550138   0.2727937
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2656250   0.1572028   0.3740472
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4693878   0.3886029   0.5501726
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4241071   0.3593006   0.4889137
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2047414   0.1679972   0.2414855
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1461988   0.0932029   0.1991948
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4264597   0.4001006   0.4528188
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3499197   0.3124585   0.3873809
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5247525   0.4272662   0.6222387
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5454545   0.4976745   0.5932346
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2311747   0.2161539   0.2461955
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1684772   0.1618283   0.1751260
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3008937   0.2684464   0.3333410
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2526973   0.2355936   0.2698011
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0698925   0.0331775   0.1066075
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0781250   0.0122441   0.1440059
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2447552   0.1741914   0.3153191
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1607143   0.1125529   0.2088756
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1539033   0.1346134   0.1731933
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.1109325   0.0862459   0.1356190
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1789474   0.1017918   0.2561030
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1498771   0.1151641   0.1845902
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1049696   0.0944878   0.1154514
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0642019   0.0598682   0.0685357
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0343035   0.0207240   0.0478831
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0255747   0.0196113   0.0315381
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1590909   0.1049408   0.2132410
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2539683   0.1462581   0.3616784
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3333333   0.2570252   0.4096415
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3318386   0.2699533   0.3937239
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1699779   0.1353605   0.2045953
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1375000   0.0840960   0.1909040
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3486792   0.3230129   0.3743456
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3143351   0.2765104   0.3521597
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4607843   0.3639585   0.5576102
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4764151   0.4288307   0.5239995
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1991358   0.1829268   0.2153447
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1566946   0.1492275   0.1641618
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2868447   0.2544329   0.3192565
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2375566   0.2206159   0.2544972


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.2417969   0.7589745   2.0317671
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.9035326   0.7177766   1.1373610
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7140659   0.4765103   1.0700503
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    0                 0.8205224   0.7251097   0.9284898
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0394511   0.8464543   1.2764523
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7287873   0.6775485   0.7839010
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8398225   0.7397222   0.9534684
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1177885   0.4138891   3.0188066
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.6566327   0.4332376   0.9952194
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    0                 0.7207931   0.5583278   0.9305335
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8375488   0.5133952   1.3663703
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6116244   0.5423132   0.6897940
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7455416   0.4657064   1.1935253
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5963719   0.9267520   2.7498222
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 0.9955157   0.7409911   1.3374675
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8089286   0.5217358   1.2542083
6-24 months                   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba      GAMBIA       1                    0                 0.9015021   0.7828967   1.0380756
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0339221   0.8193016   1.3047636
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7868734   0.7182116   0.8620994
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8281713   0.7250450   0.9459657


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0131879   -0.0183962    0.0447720
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0273392   -0.0899108    0.0352324
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0157650   -0.0332483    0.0017183
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0241318   -0.0386584   -0.0096052
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0166733   -0.0707677    0.1041144
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0496695   -0.0622520   -0.0370870
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0374802   -0.0659191   -0.0090413
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0021075   -0.0172053    0.0214204
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0512948   -0.1036078    0.0010183
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0135881   -0.0235343   -0.0036420
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0235689   -0.0921701    0.0450323
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0323216   -0.0413112   -0.0233319
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0068384   -0.0186970    0.0050202
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0250095   -0.0072095    0.0572285
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                -0.0009009   -0.0601154    0.0583136
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0084771   -0.0251269    0.0081727
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0104440   -0.0243625    0.0034746
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0125997   -0.0743675    0.0995670
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0338639   -0.0476889   -0.0200389
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0383292   -0.0666541   -0.0100043


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0580730   -0.0914721    0.1871286
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0618467   -0.2134021    0.0707792
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0834231   -0.1794753    0.0048069
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0599804   -0.0967724   -0.0244226
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0307953   -0.1449697    0.1795784
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2736530   -0.3438727   -0.2071025
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1422865   -0.2557219   -0.0390982
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0292712   -0.2793297    0.2634312
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.2651433   -0.5638444   -0.0234954
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0968401   -0.1695212   -0.0286759
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1516869   -0.6888430    0.2146205
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4449066   -0.5722046   -0.3279156
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2489861   -0.7607323    0.1140242
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1358471   -0.0553093    0.2923778
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                -0.0027100   -0.1976364    0.1604903
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0524896   -0.1605159    0.0454811
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                -0.0308778   -0.0728633    0.0094647
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0266163   -0.1755929    0.1940442
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2048985   -0.2909178   -0.1246110
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1542326   -0.2741956   -0.0455639
