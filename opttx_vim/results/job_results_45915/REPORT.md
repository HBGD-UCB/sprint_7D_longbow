---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       89     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       92     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      164     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       15     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      130     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       81     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       26     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      165     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       41     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0      110     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      142     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       14     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      216     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        5      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        9      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      129     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       92     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       83     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       73     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0       70     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1       35     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0        7     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4     116
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       30      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       14      44
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      184     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       26     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      381     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       96     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0      544    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      278    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      809    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      596    2227
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      182     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      230     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       71     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       72     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8394   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1620   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2266   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      639   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      692    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      274    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      176    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       63    1205
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      116     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      103     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      169     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      177     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      189     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0      112     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      153     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      232     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      238     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       12      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        6      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        7      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      187     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       34     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      114     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       38     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0       89     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       14     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0        8     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     114
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       36      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0      36
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      205     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      442     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       31     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0      740    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1       79    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0     1183    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1      214    2216
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      343     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      112     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       24     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9282   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      661   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2563   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      305   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      932    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       24    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      219    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        6    1181
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       93     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       13     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      166     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       14     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      154     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       59     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       26     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        3     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      173     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       32     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0      109     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      143     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      208     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      214     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                      0        9      14
6-24 months                   ki1000108-IRC              INDIA                          0                      1        5      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      148     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      103     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       53     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0       76     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1       26     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     111
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       32      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       14      46
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      134     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       22     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      382     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       77     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      203     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       66     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5600    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1041    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1477    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      363    8481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      711    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      261    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      182    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       59    1213


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ee159e33-9912-4e1c-b1a4-adad1fa9a3b8/8f2b6508-0edc-42ba-a793-dbf5cadbbd7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee159e33-9912-4e1c-b1a4-adad1fa9a3b8/8f2b6508-0edc-42ba-a793-dbf5cadbbd7e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1886693   0.1166742   0.2606643
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4180220   0.3535630   0.4824811
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1218556   0.0769209   0.1667903
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                0.3487466   0.3166713   0.3808219
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5042524   0.4216671   0.5868376
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1189545   0.0322116   0.2056974
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1667814   0.1581658   0.1753971
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2709432   0.2063947   0.3354917
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.0708453   0.0254746   0.1162160
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1571514   0.1094629   0.2048399
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.0241346   0.0031921   0.0450772
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                0.0959966   0.0757356   0.1162576
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1408147   0.1066297   0.1749996
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0687957   0.0623508   0.0752406
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0382093   0.0102872   0.0661315
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1174561   0.0568215   0.1780907
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3505649   0.2818101   0.4193196
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1598650   0.1052926   0.2144375
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                0.3013126   0.2704645   0.3321606
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4610805   0.3783407   0.5438202
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1154931   0.0506496   0.1803365
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1599005   0.1487235   0.1710775
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2230295   0.1657183   0.2803408


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             NA                0.3924562   0.3721715   0.4127410
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1748587   0.1670392   0.1826783
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2796680   0.2495651   0.3097710
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.0759494   0.0421505   0.1097482
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             NA                0.1322202   0.1181139   0.1463266
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.0754039   0.0700928   0.0807151
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0254022   0.0142626   0.0365418
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE          PAKISTAN     observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba      GAMBIA       observed             NA                0.3397129   0.3194033   0.3600225
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1655465   0.1563445   0.1747485
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2638087   0.2344742   0.2931433


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.2693949   0.9445620   1.705937
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           1.0469921   0.9478141   1.156548
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.4573293   1.0546389   2.013778
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             optimal           1.1253334   1.0457007   1.211030
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0791108   0.9370193   1.242749
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.7755144   0.4418250   1.361224
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0484304   1.0189468   1.078767
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0322016   0.8409877   1.266892
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0720455   0.6819499   1.685287
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.2283024   0.9900601   1.523874
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   observed             optimal           2.1839415   0.9780340   4.876722
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             optimal           1.3773429   1.1514110   1.647607
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0619115   0.9316003   1.210451
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0960561   1.0339310   1.161914
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.6648164   0.3998588   1.105342
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.6008890   1.0449740   2.452545
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.9432396   0.8289431   1.073296
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.0069469   0.7572623   1.338957
6-24 months                   ki1101329-Keneba      GAMBIA       observed             optimal           1.1274435   1.0429940   1.218731
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0474188   0.8969025   1.223194
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.8390047   0.5576349   1.262347
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0353094   0.9947220   1.077553
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1828423   0.9425793   1.484348


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0508265   -0.0055452   0.1071983
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0196437   -0.0219442   0.0612317
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0557281    0.0157710   0.0956852
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0437096    0.0181341   0.0692851
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0398918   -0.0312152   0.1109988
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0267036   -0.0961136   0.0427064
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0080773    0.0032858   0.0128688
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0087248   -0.0467238   0.0641734
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0051041   -0.0269824   0.0371906
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0358781    0.0013797   0.0703764
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0285740    0.0072630   0.0498850
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0362236    0.0187004   0.0537469
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0087180   -0.0097727   0.0272087
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0066082    0.0025902   0.0106262
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0128071   -0.0340117   0.0083974
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0705781    0.0180963   0.1230598
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0198982   -0.0653471   0.0255507
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0011106   -0.0444411   0.0466622
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0384003    0.0150373   0.0617633
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0218639   -0.0496395   0.0933673
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0185938   -0.0664848   0.0292971
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0056460   -0.0007426   0.0120346
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0407792   -0.0098741   0.0914325


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.2122231   -0.0586918   0.4138120
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0448830   -0.0550592   0.1353579
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.3138133    0.0518081   0.5034210
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1113745    0.0437034   0.1742569
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0733111   -0.0672138   0.1953324
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.2894667   -1.2633396   0.2653668
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0461933    0.0185945   0.0730159
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0311970   -0.1890781   0.2106665
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0672037   -0.4663833   0.4066293
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1858683   -0.0100397   0.3437778
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.5421123   -0.0224594   0.7949442
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.2739644    0.1315004   0.3930593
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0583019   -0.0734218   0.1738613
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0876379    0.0328175   0.1393511
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.5041746   -1.5008828   0.0953030
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.3753471    0.0430384   0.5922602
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0601760   -0.2063554   0.0682902
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0068989   -0.3205464   0.2531503
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1130376    0.0412217   0.1794742
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0452721   -0.1149484   0.1824685
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1918884   -0.7932880   0.2078250
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0341052   -0.0053060   0.0719713
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1545788   -0.0609187   0.3263036
