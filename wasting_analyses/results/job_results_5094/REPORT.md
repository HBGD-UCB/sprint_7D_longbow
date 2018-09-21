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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      140     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       40     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       41     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      182     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      141     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       83     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        2     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      177     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       43     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       14     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      241     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       18     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      217     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        5      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        9      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0      166     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1      146     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      258     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1      184     754
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      381     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       96     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      184     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       26     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      809    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      596    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0      544    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      278    2227
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      142    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1      144    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      364    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      460    1110
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     8884   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2418   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    34420   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     6542   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1434    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      612    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5482    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1856    9384
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      165     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       14     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       54     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      187     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      190     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      254     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      235     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      239     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       12      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        6      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        7      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      228     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       76     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      374     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       68     746
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      442     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       31     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      205     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        5     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0     1183    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1      214    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0      740    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1       79    2216
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      224    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       48    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      686    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1      112    1070
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    10030   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1142   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    38052   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2618   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1886    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       68    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     7068    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      184    9206
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      150     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       27     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       40     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      185     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      164     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       61     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        2     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      185     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       14     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        1     234
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      241     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       15     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       11     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      211     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      215     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      19
6-24 months                   ki1000108-IRC              INDIA                          0                      0        9      14
6-24 months                   ki1000108-IRC              INDIA                          0                      1        5      14
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      14
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      206     750
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1      106     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      296     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1      142     750
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      382     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       77     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      134     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       22     615
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      154    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1      132    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      422    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      406    1114
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     5786   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1392   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    22864   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4246   34288
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1470    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      584    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5618    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1750    9422


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f358a52e-75d1-4874-a7ba-9e3f2315d9b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f358a52e-75d1-4874-a7ba-9e3f2315d9b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f358a52e-75d1-4874-a7ba-9e3f2315d9b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f358a52e-75d1-4874-a7ba-9e3f2315d9b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2222222   0.1613600   0.2830844
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2931034   0.1757119   0.4104950
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.4679487   0.3895447   0.5463528
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.4162896   0.3512129   0.4813662
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4545455   0.2817186   0.6273723
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3752969   0.3178349   0.4327589
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2012579   0.1652510   0.2372647
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1238095   0.0792304   0.1683886
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4241993   0.3983512   0.4500474
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3381995   0.3058506   0.3705484
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5034965   0.4214744   0.5855186
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5582524   0.5102577   0.6062471
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2139444   0.2017646   0.2261243
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1597090   0.1541139   0.1653041
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2991202   0.2671224   0.3311180
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2529300   0.2361438   0.2697161
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                0.2500000   0.1810697   0.3189303
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                0.1538462   0.1062137   0.2014786
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0655391   0.0432205   0.0878577
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0238095   0.0031748   0.0444443
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1531854   0.1342946   0.1720762
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0964591   0.0762359   0.1166823
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1764706   0.1123407   0.2406005
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1403509   0.1062366   0.1744651
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1022198   0.0935938   0.1108458
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0643718   0.0605011   0.0682424
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0348004   0.0214286   0.0481723
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0253723   0.0195465   0.0311981
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1525424   0.0994606   0.2056242
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2982456   0.1792255   0.4172657
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.3397436   0.2653222   0.4141649
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.3242009   0.2621252   0.3862766
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1677560   0.1335455   0.2019665
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1410256   0.0863645   0.1956867
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3484295   0.3231838   0.3736753
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3231623   0.2890165   0.3573081
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4615385   0.3797576   0.5433193
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4903382   0.4421404   0.5385359
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1939259   0.1797324   0.2081193
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1566212   0.1500611   0.1631813
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2843233   0.2523858   0.3162607
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2375136   0.2209288   0.2540983


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       NA                   NA                0.3924562   0.3721715   0.4127410
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1714373   0.1660817   0.1767929
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2630009   0.2480666   0.2779351
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       NA                   NA                0.1322202   0.1181139   0.1463266
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0725281   0.0688266   0.0762296
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0273735   0.0221056   0.0326413
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE              PAKISTAN     NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA       NA                   NA                0.3397129   0.3194033   0.3600225
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1644307   0.1582894   0.1705720
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2477181   0.2329462   0.2624900


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.3189655   0.8119199   2.1426621
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    0                 0.8896052   0.7074217   1.1187067
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8256532   0.5342162   1.2760813
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6151786   0.4115176   0.9196318
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    0                 0.7972656   0.7117861   0.8930105
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1087513   0.9222260   1.3330025
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7464976   0.7006681   0.7953246
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8455796   0.7458420   0.9586545
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    0                 0.6153846   0.4065318   0.9315341
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.3632873   0.1431697   0.9218266
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    0                 0.6296886   0.4937308   0.8030849
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7953216   0.5136535   1.2314459
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.6297386   0.5703822   0.6952718
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7290808   0.4607555   1.1536680
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.9551657   1.1514229   3.3199555
6-24 months                   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN     1                    0                 0.9542517   0.7133617   1.2764863
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8406593   0.5425147   1.3026524
6-24 months                   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA       1                    0                 0.9274825   0.8159525   1.0542573
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0623994   0.8675346   1.3010345
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8076342   0.7440196   0.8766879
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8353645   0.7322627   0.9529829


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0172736   -0.0151828    0.0497299
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0302829   -0.0900686    0.0295027
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0753129   -0.2584470    0.1078211
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0236742   -0.0413931   -0.0059552
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0317431   -0.0471237   -0.0163624
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0406476   -0.0299270    0.1112223
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0425071   -0.0525826   -0.0324317
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0361194   -0.0642962   -0.0079426
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.0569705   -0.1068453   -0.0070958
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0128305   -0.0222873   -0.0033737
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0209652   -0.0312564   -0.0106740
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0269379   -0.0811281    0.0272523
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0296918   -0.0368801   -0.0225034
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0074270   -0.0191608    0.0043069
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0354918    0.0027470    0.0682366
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                -0.0090769   -0.0656788    0.0475250
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0067804   -0.0231632    0.0096024
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0087166   -0.0233751    0.0059419
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0214059   -0.0491580    0.0919698
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0294952   -0.0415541   -0.0174363
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0366052   -0.0646509   -0.0085594


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0721248   -0.0733156    0.1978571
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0691919   -0.2150766    0.0591775
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1985931   -0.8084176    0.2055898
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1333127   -0.2363199   -0.0388878
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0808831   -0.1208846   -0.0423091
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0747001   -0.0647019    0.1958501
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2479455   -0.3072860   -0.1912986
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1373356   -0.2499211   -0.0348911
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.2951389   -0.5776999   -0.0631836
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2434226   -0.4191675   -0.0894414
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.1585626   -0.2377892   -0.0844070
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1801471   -0.6028886    0.1311018
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.4093832   -0.5106101   -0.3149395
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2713197   -0.7776380    0.0907858
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1887519    0.0002004    0.3417447
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                -0.0274504   -0.2137114    0.1302263
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0421206   -0.1488394    0.0546849
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0256587   -0.0697304    0.0165973
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0443237   -0.1135947    0.1798478
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1793776   -0.2544849   -0.1087670
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1477694   -0.2669576   -0.0397938
