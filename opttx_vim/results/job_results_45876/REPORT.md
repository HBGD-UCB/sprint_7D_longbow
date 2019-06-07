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

**Outcome Variable:** ever_stunted

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

agecat                       studyid                    country                        predexfd6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       45     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       61     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       28     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      135     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       24     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        4     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        9     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       84     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       97     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      136     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       45     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       58     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       47     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       88     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      125     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      173     210
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      119     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       17     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       97     249
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       66     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      258     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      172     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      141     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      236     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       37     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       87     501
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10992   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3604   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2482   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1053   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1558    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      365    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      310    3358
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       87     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       70     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       30     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      142     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       11     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        2     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       26     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      169     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       72     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       31     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       78     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       57     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      146     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       48     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       51     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       63     249
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      177     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       27     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      356     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       74     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      307     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       95     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       29     501
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12827   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1769   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2889   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      646   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2446    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      600    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       42     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       27     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        4     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        7     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       84     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       56     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       18     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      135     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33     194
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       44     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       27     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       46     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       31     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      111     144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       14      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       32      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       17      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       34      97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       80     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       39     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      240     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       98     457
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      137     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      166     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       36     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       58     397
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6741   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1837   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1422   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      412   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1553    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      889    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      363    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      236    3041


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b3df4e3c-a3f3-4b13-8e7b-7746a9b4777a/5d8e74a2-3393-4fd2-9771-fa870550adc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3df4e3c-a3f3-4b13-8e7b-7746a9b4777a/5d8e74a2-3393-4fd2-9771-fa870550adc1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.5449079   0.4455521   0.6442637
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        optimal              NA                0.2485388   0.1853545   0.3117231
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         optimal              NA                0.5612142   0.4643434   0.6580850
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                0.8887284   0.8315635   0.9458933
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.7282170   0.5763313   0.8801027
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.3154504   0.2507614   0.3801395
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                0.4717609   0.4371593   0.5063625
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.6286443   0.5748925   0.6823961
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                0.2799221   0.1753469   0.3844973
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2548686   0.2450661   0.2646712
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.4244277   0.4001973   0.4486581
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.2097127   0.1266304   0.2927949
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         optimal              NA                0.3037868   0.2167390   0.3908345
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                0.5530101   0.4624607   0.6435595
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.2630258   0.0415842   0.4844674
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.1257062   0.0802659   0.1711466
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                0.2291505   0.2005566   0.2577445
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.2040801   0.1559069   0.2522533
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1266468   0.1197445   0.1335492
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.0959523   0.0804986   0.1114059
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.3617944   0.2497737   0.4738152
6-24 months                  ki0047075b-MAL-ED         NEPAL        optimal              NA                0.1962061   0.1359016   0.2565106
6-24 months                  ki0047075b-MAL-ED         PERU         optimal              NA                0.4389232   0.3252530   0.5525933
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                0.7258777   0.6087810   0.8429745
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.2857073   0.2143371   0.3570774
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                0.3538550   0.3132175   0.3944926
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.5468259   0.4814848   0.6121670
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                0.3640374   0.2324512   0.4956237
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2170280   0.2011028   0.2329532
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.3636459   0.3359220   0.3913698


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        observed             NA                0.2596154   0.1998903   0.3193405
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         observed             NA                0.6134454   0.5514489   0.6754419
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.6134969   0.5286303   0.6983635
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         observed             NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki0047075b-MAL-ED         NEPAL        observed             NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED         PERU         observed             NA                0.3918919   0.3129763   0.4708075
6-24 months                  ki1000109-EE              PAKISTAN     observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA       observed             NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             optimal           0.9917346   0.8761337   1.122588
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        observed             optimal           1.0445670   0.9451331   1.154462
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         observed             optimal           1.0930681   0.9635805   1.239957
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             optimal           0.9760799   0.9280845   1.026557
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             optimal           0.8424645   0.6901254   1.028431
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             optimal           1.1900263   1.0078567   1.405123
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             optimal           1.1064864   1.0451382   1.171436
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             optimal           1.0255570   0.9752135   1.078499
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             optimal           1.5106245   1.0995318   2.075416
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           1.0077855   0.9838274   1.032327
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           1.0068562   0.9768473   1.037787
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             optimal           0.9874020   0.7481038   1.303245
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         observed             optimal           1.2171297   0.9805671   1.510763
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             optimal           1.0893285   0.9713472   1.221640
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             optimal           0.7813737   0.4262552   1.432346
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             optimal           1.2672879   0.9436727   1.701881
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             optimal           1.1174113   1.0127067   1.232941
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             optimal           0.9682706   0.8314719   1.127576
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           1.0517223   1.0161023   1.088591
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           0.9683195   0.8804449   1.064965
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             optimal           1.1845716   0.9362889   1.498693
6-24 months                  ki0047075b-MAL-ED         NEPAL        observed             optimal           1.0771336   0.9451374   1.227564
6-24 months                  ki0047075b-MAL-ED         PERU         observed             optimal           0.8928485   0.7409963   1.075820
6-24 months                  ki1000109-EE              PAKISTAN     observed             optimal           0.9373650   0.8233725   1.067139
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             optimal           1.0492599   0.8675096   1.269088
6-24 months                  ki1101329-Keneba          GAMBIA       observed             optimal           1.0805946   0.9859708   1.184300
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             optimal           1.0318306   0.9563569   1.113260
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             optimal           1.2547888   0.9206507   1.710198
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           0.9952668   0.9417861   1.051785
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           1.0173195   0.9680147   1.069136


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.0045039   -0.0720642   0.0630564
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        optimal              NA                 0.0110766   -0.0138217   0.0359749
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         optimal              NA                 0.0522312   -0.0179631   0.1224254
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                -0.0212585   -0.0659186   0.0234016
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.1147200   -0.2563572   0.0269171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0599439    0.0079724   0.1119153
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                 0.0502361    0.0234153   0.0770569
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0160663   -0.0155068   0.0476394
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                 0.1429351    0.0524937   0.2333764
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0019843   -0.0041504   0.0081189
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0029100   -0.0099265   0.0157464
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.0026420   -0.0608742   0.0555902
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         optimal              NA                 0.0659611    0.0005777   0.1313445
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                 0.0493995   -0.0134453   0.1122444
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.0575044   -0.2287314   0.1137227
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0335998   -0.0032858   0.0704854
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                 0.0269049    0.0043213   0.0494884
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                -0.0064753   -0.0376088   0.0246581
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0065505    0.0021737   0.0109272
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                -0.0030398   -0.0121807   0.0061011
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.0667770   -0.0181955   0.1517495
6-24 months                  ki0047075b-MAL-ED         NEPAL        optimal              NA                 0.0151341   -0.0106674   0.0409355
6-24 months                  ki0047075b-MAL-ED         PERU         optimal              NA                -0.0470313   -0.1283637   0.0343012
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                -0.0454654   -0.1380999   0.0471692
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0140739   -0.0400650   0.0682128
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                 0.0285188   -0.0039050   0.0609427
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0174058   -0.0240411   0.0588527
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                 0.0927527   -0.0200922   0.2055975
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                -0.0010272   -0.0130182   0.0109638
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0062982   -0.0117521   0.0243484


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.0083343   -0.1413783   0.1092014
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        optimal              NA                 0.0426655   -0.0580520   0.1337956
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         optimal              NA                 0.0851440   -0.0377961   0.1935202
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                -0.0245063   -0.0774880   0.0258702
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.1869937   -0.4490119   0.0276450
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.1596824    0.0077954   0.2883185
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                 0.0962383    0.0431887   0.1463466
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0249201   -0.0254165   0.0727858
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                 0.3380221    0.0905220   0.5181690
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0077254   -0.0164385   0.0313147
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0068096   -0.0237015   0.0364112
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.0127588   -0.3367129   0.2326846
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         optimal              NA                 0.1783949   -0.0198180   0.3380829
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                 0.0820033   -0.0294980   0.1814282
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.2797973   -1.3460126   0.3018447
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.2109133   -0.0596894   0.4124148
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                 0.1050744    0.0125472   0.1889314
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                -0.0327692   -0.2026865   0.1131420
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0491786    0.0158471   0.0813813
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                -0.0327170   -0.1357895   0.0610017
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.1558130   -0.0680465   0.3327521
6-24 months                  ki0047075b-MAL-ED         NEPAL        optimal              NA                 0.0716101   -0.0580472   0.1853786
6-24 months                  ki0047075b-MAL-ED         PERU         optimal              NA                -0.1200108   -0.3495345   0.0704764
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                -0.0668203   -0.2145171   0.0629152
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0469473   -0.1527251   0.2120328
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                 0.0745836   -0.0142288   0.1556190
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0308487   -0.0456347   0.1017376
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                 0.2030532   -0.0861883   0.4152724
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                -0.0047557   -0.0618123   0.0492350
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0170246   -0.0330422   0.0646650
