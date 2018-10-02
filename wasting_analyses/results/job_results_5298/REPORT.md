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

* arm
* sex
* month
* brthmon
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
![](/tmp/d8f3403c-553a-4472-954e-aa488abe787b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8f3403c-553a-4472-954e-aa488abe787b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8f3403c-553a-4472-954e-aa488abe787b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8f3403c-553a-4472-954e-aa488abe787b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1796588   0.1115871   0.2477305
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2694789   0.1973334   0.3416244
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.3807339   0.3161412   0.4453267
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.2500000   0.0598274   0.4401726
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.5562103   0.4939676   0.6184530
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4705980   0.4133857   0.5278103
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5324157   0.4456808   0.6191506
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5461920   0.4987642   0.5936198
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2386473   0.2256973   0.2515973
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1712227   0.1646479   0.1777974
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2954513   0.2683623   0.3225404
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2567646   0.2400797   0.2734494
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0756303   0.0280293   0.1232312
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0687023   0.0253000   0.1121046
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2700861   0.2163368   0.3238353
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1660905   0.1238610   0.2083200
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1760384   0.1019373   0.2501394
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1498501   0.1153279   0.1843723
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1116607   0.1023177   0.1210036
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0649310   0.0606435   0.0692185
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0476239   0.0356658   0.0595821
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0258458   0.0200453   0.0316462
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1272849   0.0652449   0.1893248
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2287240   0.1582714   0.2991765
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                0.2731481   0.2135999   0.3326964
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647346   0.4615812
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.2794150   0.2182817   0.3405483
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3115854   0.2558881   0.3672827
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3761243   0.2841562   0.4680923
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4713303   0.4238671   0.5187936
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1900592   0.1763410   0.2037775
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1600734   0.1527019   0.1674450
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2801795   0.2534011   0.3069578
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2408061   0.2244614   0.2571508


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.4999485   0.9538017   2.3588190
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    0                 0.6566265   0.3011884   1.4315239
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.8460793   0.7186329   0.9961278
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0258751   0.8529424   1.2338696
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7174717   0.6741302   0.7635997
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8690587   0.7785336   0.9701097
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9083969   0.3723830   2.2159576
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.6149540   0.4577168   0.8262060
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8512353   0.5289400   1.3699124
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5815030   0.5234911   0.6459437
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5427061   0.3862889   0.7624601
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.7969457   1.0163751   3.1769903
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    0                 0.9634255   0.4394846   2.1119936
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 1.1151349   0.8448271   1.4719293
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.2531240   0.9618434   1.6326147
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8422292   0.7764952   0.9135279
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8594710   0.7677376   0.9621651


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0474329   -0.0041327    0.0989984
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0109860   -0.0284839    0.0065118
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.1141618   -0.1640150   -0.0643085
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0090101   -0.0689841    0.0870043
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0571420   -0.0678819   -0.0464022
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0320378   -0.0558127   -0.0082629
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0036303   -0.0373877    0.0301272
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0766256   -0.1127901   -0.0404611
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0206599   -0.0861695    0.0448497
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0390127   -0.0469933   -0.0310320
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0201588   -0.0305010   -0.0098166
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0568156    0.0053972    0.1082340
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0008077   -0.0175610    0.0159455
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.0530174    0.0053652    0.1006696
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0972598    0.0144922    0.1800273
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0247874   -0.0363847   -0.0131902
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0316640   -0.0547930   -0.0085350


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2088710   -0.0522468    0.4051917
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0297123   -0.0781965    0.0165917
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                -0.2582562   -0.3875257   -0.1410301
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0166415   -0.1384133    0.1505773
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3148231   -0.3753888   -0.2569244
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1216254   -0.2165610   -0.0340983
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0504202   -0.6406778    0.3274837
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.3960787   -0.6179740   -0.2046149
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1329649   -0.6431712    0.2188219
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5370095   -0.6518263   -0.4301735
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7339790   -1.1771622   -0.3810102
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3086118   -0.0239265    0.5331524
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0029659   -0.0664065    0.0567007
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.1594833    0.0060479    0.2892329
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.2054564    0.0093676    0.3627307
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1499797   -0.2224480   -0.0818075
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1274125   -0.2253178   -0.0373299
