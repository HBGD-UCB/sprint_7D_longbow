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
![](/tmp/c5fd3462-772a-48fc-93b9-db31837d1c50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5fd3462-772a-48fc-93b9-db31837d1c50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5fd3462-772a-48fc-93b9-db31837d1c50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5fd3462-772a-48fc-93b9-db31837d1c50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2341305   0.1750164   0.2932445
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4150531   0.3199434   0.5101628
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.4749830   0.4014069   0.5485590
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.4227567   0.3604323   0.4850811
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4488320   0.2704930   0.6271711
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3755890   0.3176466   0.4335315
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2063227   0.1717812   0.2408641
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1262484   0.0884641   0.1640328
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4331592   0.4089130   0.4574054
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3687733   0.3410029   0.3965438
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4971624   0.4214230   0.5729017
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5583607   0.5109257   0.6057958
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2138942   0.2030605   0.2247279
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1611109   0.1555840   0.1666379
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2734793   0.2464868   0.3004719
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2535788   0.2370343   0.2701233
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                0.2535709   0.1938283   0.3133135
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                0.1562006   0.1121076   0.2002935
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0655391   0.0432205   0.0878577
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0238095   0.0031748   0.0444443
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1480920   0.1299215   0.1662625
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0885605   0.0703069   0.1068141
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1894760   0.1287677   0.2501844
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1428218   0.1089172   0.1767264
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1041906   0.0962815   0.1120997
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0644445   0.0606295   0.0682596
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0433456   0.0309927   0.0556985
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0257749   0.0200504   0.0314994
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1519053   0.0988370   0.2049736
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3014449   0.1826290   0.4202607
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.2860376   0.2193655   0.3527098
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.2938516   0.2356542   0.3520490
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1695499   0.1355832   0.2035165
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1366160   0.0820957   0.1911364
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3578508   0.3336666   0.3820349
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3487322   0.3187826   0.3786818
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4299666   0.3585159   0.5014173
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4861979   0.4390471   0.5333488
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1828361   0.1704482   0.1952240
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1594879   0.1530257   0.1659501
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2526113   0.2255889   0.2796337
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2377721   0.2215260   0.2540182


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.7727428   1.2702177   2.4740776
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    0                 0.8900460   0.7230647   1.0955893
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8368142   0.5288237   1.3241806
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6118981   0.4358548   0.8590458
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    0                 0.8513575   0.7777203   0.9319668
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1230953   0.9435254   1.3368406
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7532272   0.7117794   0.7970885
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9272321   0.8259446   1.0409408
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    0                 0.6160035   0.4309026   0.8806175
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.3632873   0.1431697   0.9218266
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    0                 0.5980099   0.4714144   0.7586018
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7537724   0.5061777   1.1224770
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.6185254   0.5651214   0.6769760
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.5946367   0.4117664   0.8587221
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.9844266   1.1723212   3.3591041
6-24 months                   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN     1                    0                 1.0273179   0.7602027   1.3882904
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8057573   0.5167756   1.2563379
6-24 months                   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA       1                    0                 0.9745184   0.8763362   1.0837007
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1307807   0.9336154   1.3695842
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8722997   0.8089195   0.9406458
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9412569   0.8322862   1.0644951


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0053653   -0.0248184    0.0355490
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0373172   -0.0919367    0.0173024
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0695995   -0.2605210    0.1213220
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0287390   -0.0455554   -0.0119225
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0407030   -0.0546287   -0.0267772
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0469818   -0.0182570    0.1122205
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0424569   -0.0513154   -0.0335984
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0104785   -0.0341450    0.0131880
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.0605414   -0.1021195   -0.0189633
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0128305   -0.0222873   -0.0033737
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0158717   -0.0255474   -0.0061961
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0399433   -0.0911453    0.0112587
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0316626   -0.0382208   -0.0251044
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0159721   -0.0267053   -0.0052390
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0361289    0.0033952    0.0688626
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                 0.0446290   -0.0051996    0.0944577
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0085743   -0.0248224    0.0076739
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0181379   -0.0316944   -0.0045813
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0529777   -0.0089961    0.1149516
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0184054   -0.0288135   -0.0079973
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0048932   -0.0282867    0.0185004


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0224026   -0.1115776    0.1402340
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0852641   -0.2181166    0.0330989
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1835273   -0.8265250    0.2331137
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1618334   -0.2616615   -0.0699042
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.1037134   -0.1403589   -0.0682456
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0863407   -0.0416473    0.1986026
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2476527   -0.3001448   -0.1972799
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0398420   -0.1340578    0.0465465
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.3136381   -0.5539135   -0.1105155
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2434226   -0.4191675   -0.0894414
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.1200403   -0.1949744   -0.0498051
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2671210   -0.6624403    0.0341935
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.4365560   -0.5299530   -0.3488605
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5834901   -1.0366816   -0.2311404
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1921402    0.0035263    0.3450529
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                 0.1349668   -0.0296262    0.2732485
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0532644   -0.1591976    0.0429882
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0533917   -0.0942637   -0.0140463
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1096974   -0.0277609    0.2287713
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1119341   -0.1769575   -0.0505031
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0197529   -0.1187739    0.0705039
