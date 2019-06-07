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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       41     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      140     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       40     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      182     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        2     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      141     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       83     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       14     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      177     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       43     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      241     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       18     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      217     248
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8381   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1615   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2279   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      644   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      688    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      272    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      180    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       65    1205
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       54     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      165     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       14     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       17     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      187     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      190     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       11     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      254     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      235     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      239     248
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9265   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      660   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2580   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      306   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      926    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       24    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      225    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        6    1181
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       40     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       17     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      150     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       27     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      185     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        2     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      164     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       61     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       14     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        1     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      185     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       11     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      241     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       15     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      211     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      215     242
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5591    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1037    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1486    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      367    8481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      707    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      259    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      186    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       61    1213


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
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/5be775a2-5879-4618-b47f-36396be28832/4cc90b56-2967-44b7-9d3a-13dd36129921/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5be775a2-5879-4618-b47f-36396be28832/4cc90b56-2967-44b7-9d3a-13dd36129921/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.2268705   0.1656496   0.2880913
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4412887   0.3743085   0.5082688
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1228332   0.0772841   0.1683823
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                0.3472737   0.3152380   0.3793095
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5024280   0.4199645   0.5848915
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.0886963   0.0513308   0.1260619
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1662552   0.1575007   0.1750098
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2478917   0.1907904   0.3049929
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1562130   0.1085414   0.2038846
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.0237780   0.0030915   0.0444646
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                0.0952488   0.0752446   0.1152529
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1402315   0.1060720   0.1743910
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0678069   0.0616701   0.0739436
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0342695   0.0084212   0.0601177
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1513223   0.0981048   0.2045398
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3861689   0.3176884   0.4546493
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1474178   0.0946740   0.2001616
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                0.3072267   0.2763297   0.3381236
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4754075   0.3982776   0.5525374
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.0940876   0.0547597   0.1334154
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1578605   0.1471671   0.1685540
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2315968   0.1758255   0.2873681


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


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0556500   0.9178436   1.2141469
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           0.9917902   0.8975522   1.0959227
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.4457308   1.0438930   2.0022527
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             optimal           1.1301063   1.0499449   1.2163878
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0830291   0.9400981   1.2476911
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           1.0400760   0.8619459   1.2550186
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0517489   1.0210660   1.0833537
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1281866   0.9255531   1.3751831
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.2356815   0.9944224   1.5354729
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   observed             optimal           2.2166961   0.9905791   4.9604742
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             optimal           1.3881567   1.1616931   1.6587678
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0663274   0.9349091   1.2162190
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1120403   1.0566447   1.1703400
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.7412488   0.3960768   1.3872307
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.2426075   1.0049910   1.5364053
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.8562748   0.7601012   0.9646169
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.0919689   0.8026197   1.4856301
6-24 months                   ki1101329-Keneba      GAMBIA       observed             optimal           1.1057403   1.0248900   1.1929687
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0158535   0.8861177   1.1645839
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           1.0298835   0.8551011   1.2403914
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0486885   1.0099842   1.0888761
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1390863   0.9249111   1.4028564


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0126253   -0.0191593    0.0444099
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0036229   -0.0476822    0.0404364
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0547505    0.0142446    0.0952565
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0451825    0.0196561    0.0707089
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0417161   -0.0293032    0.1127354
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.0035546   -0.0131400    0.0202492
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0086035    0.0036512    0.0135559
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0317764   -0.0172362    0.0807890
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0368165    0.0022632    0.0713698
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0289306    0.0077918    0.0500695
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0369714    0.0196574    0.0542855
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0093012   -0.0091991    0.0278015
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0075971    0.0041370    0.0110572
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0088673   -0.0305812    0.0128466
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0367119    0.0037572    0.0696666
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0555022   -0.1013819   -0.0096225
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0135578   -0.0318779    0.0589936
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0324863    0.0092435    0.0557290
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0075369   -0.0574164    0.0724902
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.0028117   -0.0147121    0.0203355
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0076860    0.0017428    0.0136292
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0322119   -0.0159855    0.0804093


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0527164   -0.0895102    0.1763764
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0082777   -0.1141413    0.0875269
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.3083083    0.0420474    0.5005625
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1151275    0.0475691    0.1778937
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0766638   -0.0637188    0.1985196
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.0385318   -0.1601656    0.2031991
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0492027    0.0206314    0.0769404
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1136218   -0.0804350    0.2728241
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1907300   -0.0056089    0.3487349
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.5488782   -0.0095105    0.7984064
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.2796202    0.1391875    0.3971429
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0622018   -0.0696227    0.1777797
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1007520    0.0536081    0.1455475
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.3490746   -1.5247630    0.2791393
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1952407    0.0049662    0.3491301
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.1678494   -0.3156142   -0.0366809
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0842230   -0.2459201    0.3268850
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0956286    0.0242856    0.1617550
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0156061   -0.1285183    0.1413242
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.0290164   -0.1694524    0.1938029
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0464280    0.0098855    0.0816218
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1221034   -0.0811850    0.2871687
