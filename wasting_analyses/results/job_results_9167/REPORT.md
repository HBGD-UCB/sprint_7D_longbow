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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       98     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       96     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       35     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      175     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       37     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      135     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       83     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       15     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        5     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      164     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       41     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       28     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        4     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      145     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       15     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      123     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        4     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      224     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      156     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1      138     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      258     742
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1      190     742
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       96    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1      106    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      380    1038
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      456    1038
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     6088   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1828   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    25298   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     5132   38346
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1384    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      600    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     5288    9058
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1786    9058
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      122     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      180     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       37     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      181     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      188     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       32     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      157     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        3     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      125     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        2     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      265     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      246     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      216     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       70     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      376     734
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       72     734
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      156    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       34    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      692    1004
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1      122    1004
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     7014   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      822   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    28294   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1944   38074
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1830    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       66    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     6810    8884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      178    8884
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0       95     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       14     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      100     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       30     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      164     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       37     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      157     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       59     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        5     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      171     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       32     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       28     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        4     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      131     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       13     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      122     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        3     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      220     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      217     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      196     740
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       98     740
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      298     740
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1      148     740
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      110    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       94    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      444    1052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      404    1052
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     4418   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1096   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    18522   27482
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3446   27482
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1420    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      574    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     5414    9094
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1686    9094


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d8f83a12-8a42-40ef-8968-0dfc8401e8d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8f83a12-8a42-40ef-8968-0dfc8401e8d1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8f83a12-8a42-40ef-8968-0dfc8401e8d1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8f83a12-8a42-40ef-8968-0dfc8401e8d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1833333   0.1139640   0.2527027
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2671756   0.1912518   0.3430993
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.3807339   0.3161412   0.4453267
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.2500000   0.0598274   0.4401726
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4693878   0.3886029   0.5501726
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4241071   0.3593006   0.4889137
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5247525   0.4272662   0.6222387
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5454545   0.4976745   0.5932346
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2309247   0.2158722   0.2459772
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1686494   0.1619998   0.1752989
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3024194   0.2695620   0.3352767
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2524738   0.2354377   0.2695100
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0756303   0.0280293   0.1232312
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0687023   0.0253000   0.1121046
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2447552   0.1741914   0.3153191
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1607143   0.1125529   0.2088756
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1789474   0.1017918   0.2561030
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1498771   0.1151641   0.1845902
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1049005   0.0943315   0.1154694
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0642900   0.0599598   0.0686201
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0348101   0.0210308   0.0485894
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0254722   0.0195304   0.0314141
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1284404   0.0654978   0.1913830
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2307692   0.1581914   0.3033471
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                0.2731481   0.2135999   0.3326964
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647346   0.4615812
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3333333   0.2570252   0.4096415
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3318386   0.2699533   0.3937239
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4607843   0.3639585   0.5576102
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4764151   0.4288307   0.5239995
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1987668   0.1825064   0.2150271
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1568645   0.1493867   0.1643424
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2878636   0.2550998   0.3206273
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2374648   0.2205911   0.2543385


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.3697479   0.3082891   0.4312067
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1815052   0.1751641   0.1878464
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2634136   0.2482170   0.2786101
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0726480   0.0685748   0.0767212
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0274651   0.0220747   0.0328555
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki0047075b-MAL-ED     INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1652718   0.1582686   0.1722751
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2485155   0.2334424   0.2635886


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.4573213   0.9079140   2.3391922
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    0                 0.6566265   0.3011884   1.4315239
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.9035326   0.7177766   1.1373610
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0394511   0.8464543   1.2764523
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7303218   0.6788720   0.7856709
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8348469   0.7349411   0.9483335
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9083969   0.3723830   2.2159576
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.6566327   0.4332376   0.9952194
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8375488   0.5133952   1.3663703
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6128664   0.5429980   0.6917248
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7317479   0.4569791   1.1717277
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.7967033   1.0036675   3.2163468
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    0                 0.9634255   0.4394846   2.1119936
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 0.9955157   0.7409911   1.3374675
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0339221   0.8193016   1.3047636
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7891889   0.7199705   0.8650619
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8249212   0.7218765   0.9426751


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0437583   -0.0101668    0.0976834
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0109860   -0.0284839    0.0065118
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0273392   -0.0899108    0.0352324
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0166733   -0.0707677    0.1041144
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0494195   -0.0620443   -0.0367946
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0390058   -0.0678212   -0.0101904
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0036303   -0.0373877    0.0301272
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0512948   -0.1036078    0.0010183
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0235689   -0.0921701    0.0450323
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0322525   -0.0413261   -0.0231788
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0073450   -0.0193935    0.0047035
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0556601    0.0030051    0.1083150
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0008077   -0.0175610    0.0159455
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                -0.0009009   -0.0601154    0.0583136
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0125997   -0.0743675    0.0995670
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0334950   -0.0474041   -0.0195859
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0393481   -0.0679846   -0.0107115


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1926901   -0.0804906    0.3968024
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0297123   -0.0781965    0.0165917
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.0618467   -0.2134021    0.0707792
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0307953   -0.1449697    0.1795784
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2722757   -0.3427560   -0.2054948
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1480782   -0.2630216   -0.0435953
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0504202   -0.6406778    0.3274837
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.2651433   -0.5638444   -0.0234954
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1516869   -0.6888430    0.2146205
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4439552   -0.5724136   -0.3259912
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2674310   -0.7870963    0.1011221
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3023353   -0.0393089    0.5316733
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0029659   -0.0664065    0.0567007
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                -0.0027100   -0.1976364    0.1604903
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0266163   -0.1755929    0.1940442
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2026659   -0.2892727   -0.1218769
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1583325   -0.2796092   -0.0485500
