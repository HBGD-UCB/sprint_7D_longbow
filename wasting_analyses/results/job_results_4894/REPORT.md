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

agecat                        studyid                    country                        predexfd6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       92     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       89     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      164     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      130     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       81     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       15     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      165     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       41     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       26     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      142     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       14     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0      110     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      216     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     8832   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2402   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    34472   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     6558   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1410    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      606    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5506    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1862    9384
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      103     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      116     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      169     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      177     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      189     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      153     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0      112     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      232     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      238     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     9968   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1136   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    38114   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2624   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1858    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       68    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     7096    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      184    9206
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       13     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       93     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      166     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      154     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       59     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       14     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      173     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       32     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       26     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        3     234
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      143     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0      109     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      208     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      214     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     242
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     5750   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1380   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    22900   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4258   34288
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1448    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      578    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5640    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1756    9422


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
![](/tmp/517fdd42-b828-41bb-a292-d3a33b4751a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/517fdd42-b828-41bb-a292-d3a33b4751a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/517fdd42-b828-41bb-a292-d3a33b4751a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/517fdd42-b828-41bb-a292-d3a33b4751a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2095941   0.1407841   0.2784040
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3041407   0.2279164   0.3803650
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.4709219   0.3983178   0.5435259
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.4192405   0.3572617   0.4812192
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4488320   0.2704930   0.6271711
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3755890   0.3176466   0.4335315
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2062079   0.1716131   0.2408027
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1264763   0.0883655   0.1645871
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4332320   0.4085789   0.4578852
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3689355   0.3400310   0.3978399
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4966455   0.4231555   0.5701356
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5585555   0.5113538   0.6057571
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2120766   0.2013015   0.2228518
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1611538   0.1556343   0.1666733
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2714157   0.2431698   0.2996616
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2525462   0.2360736   0.2690189
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0803571   0.0299051   0.1308092
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0720000   0.0265900   0.1174100
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                0.2517278   0.1919463   0.3115093
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                0.1563006   0.1122646   0.2003366
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0655391   0.0432205   0.0878577
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0238095   0.0031748   0.0444443
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1482158   0.1302607   0.1661708
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0887670   0.0709747   0.1065594
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1902459   0.1296604   0.2508313
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1430774   0.1091824   0.1769723
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1032860   0.0954560   0.1111160
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0643590   0.0605566   0.0681615
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0512592   0.0388783   0.0636402
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0261658   0.0204265   0.0319050
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1180187   0.0575566   0.1784808
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2502581   0.1739258   0.3265904
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.2883650   0.2186000   0.3581301
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.2939219   0.2342640   0.3535798
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1696333   0.1356703   0.2035962
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1364196   0.0818590   0.1909801
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3579407   0.3338571   0.3820242
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3480800   0.3185094   0.3776505
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4307193   0.3563468   0.5050918
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4863247   0.4387689   0.5338805
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1816818   0.1693880   0.1939757
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1595539   0.1530847   0.1660230
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2456250   0.2183045   0.2729455
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2366048   0.2203712   0.2528383


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
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0759494   0.0421505   0.1097482
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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.4510941   0.9732108   2.1636360
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    0                 0.8902549   0.7226901   1.0966716
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8368142   0.5288237   1.3241806
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6133436   0.4361289   0.8625671
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    0                 0.8515886   0.7749305   0.9358300
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1246562   0.9486557   1.3333093
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7598849   0.7181355   0.8040614
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9304777   0.8253209   1.0490328
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8960000   0.3679747   2.1817153
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    0                 0.6209112   0.4359156   0.8844159
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.3632873   0.1431697   0.9218266
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    0                 0.5989042   0.4753290   0.7546062
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7520656   0.5060058   1.1177791
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.6231145   0.5695104   0.6817640
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.5104597   0.3662449   0.7114614
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    0                 2.1204955   1.1682572   3.8488965
6-24 months                   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN     1                    0                 1.0192701   0.7452336   1.3940751
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8042030   0.5153796   1.2548856
6-24 months                   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA       1                    0                 0.9724515   0.8756291   1.0799801
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1290990   0.9259014   1.3768901
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8782050   0.8146989   0.9466614
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9632766   0.8484613   1.0936291


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0299017   -0.0224477    0.0822512
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0332561   -0.0873816    0.0208694
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0695995   -0.2605210    0.1213220
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0286242   -0.0454404   -0.0118080
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0407758   -0.0550643   -0.0264873
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0474986   -0.0159508    0.1109480
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0406393   -0.0494198   -0.0318588
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0084148   -0.0330694    0.0162397
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0044078   -0.0402126    0.0313970
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.0586983   -0.0998115   -0.0175851
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0128305   -0.0222873   -0.0033737
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0159955   -0.0254688   -0.0065223
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0407131   -0.0918052    0.0103789
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0307580   -0.0372356   -0.0242804
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0238858   -0.0346460   -0.0131256
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0700155    0.0177280    0.1223030
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                 0.0423016   -0.0100396    0.0946428
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0086576   -0.0249210    0.0076057
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0182278   -0.0316662   -0.0047893
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0522251   -0.0122300    0.1166801
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0172511   -0.0275856   -0.0069166
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0020931   -0.0215896    0.0257759


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1248529   -0.1196621    0.3159700
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                -0.0759851   -0.2076939    0.0413598
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1835273   -0.8265250    0.2331137
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1611870   -0.2608888   -0.0693689
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                -0.1038991   -0.1413956   -0.0676343
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0872905   -0.0368093    0.1965363
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2370505   -0.2890527   -0.1871461
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0319955   -0.1302368    0.0577066
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0580357   -0.6510846    0.3219975
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                -0.3040897   -0.5402519   -0.1041376
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2434226   -0.4191675   -0.0894414
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                -0.1209766   -0.1944683   -0.0520065
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2722692   -0.6666393    0.0287828
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.4240836   -0.5163329   -0.3374465
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.8725898   -1.3358609   -0.5011993
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.3723551    0.0421471    0.5887280
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                 0.1279283   -0.0462793    0.2731300
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0537823   -0.1598304    0.0425693
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                -0.0536563   -0.0941806   -0.0146329
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1081389   -0.0355003    0.2318532
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1049142   -0.1694992   -0.0438959
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0084497   -0.0918902    0.0995688
