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

agecat                       studyid                    country                        exclfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       71     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       79     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       13     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      150     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        2     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        1     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       86     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      105     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       11     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        4     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      143     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       50     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        2     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        7     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       90     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      139     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      126     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      174     210
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10972   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3599   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2502   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1058   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1550    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1122    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      373    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      313    3358
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       39     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      118     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       32     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      158     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       19     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        3     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        0     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      148     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       14     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      181     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        3     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      144     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       85     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       72     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      147     210
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12805   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1766   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2911   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      649   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2435    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      611    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       19     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       69     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       47     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        8     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        2     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        1     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       86     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       62     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       11     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        3     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      142     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       38     194
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        2     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        4     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       88     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       54     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      112     144
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6727   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1835   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1436   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      414   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1546    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      886    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      370    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      239    3041


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
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/890e0967-3bb9-46db-bcde-d725f4c699ab/1b5d98cb-4852-4697-88b7-b91ebb2b63d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/890e0967-3bb9-46db-bcde-d725f4c699ab/1b5d98cb-4852-4697-88b7-b91ebb2b63d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.6218844   0.5187767   0.7249921
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                0.8392443   0.7697933   0.9086953
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.7282170   0.5763313   0.8801027
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.3162593   0.2512093   0.3813094
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                0.4729106   0.4384026   0.5074187
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.6315309   0.5759285   0.6871333
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                0.3029675   0.1881621   0.4177729
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2587812   0.2485638   0.2689986
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.4191190   0.3969021   0.4413360
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.1905480   0.0772059   0.3038901
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                0.5551329   0.4662073   0.6440586
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.2630258   0.0415842   0.4844674
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.1285964   0.0811053   0.1760876
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                0.2334195   0.2044359   0.2624032
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.1971028   0.1519348   0.2422708
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1254580   0.1184725   0.1324434
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.0984400   0.0821505   0.1147295
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.3924646   0.2948586   0.4900705
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                0.7781711   0.6553245   0.9010178
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.3068110   0.2359576   0.3776644
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                0.3484187   0.3075039   0.3893336
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.5376200   0.4667907   0.6084493
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                0.3220383   0.2066550   0.4374217
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2152208   0.1988233   0.2316183
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.3638780   0.3416792   0.3860767


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.5404040   0.4708115   0.6099965
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.6134969   0.5286303   0.6983635
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki1000109-EE              PAKISTAN     observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA       observed             NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             optimal           0.8689783   0.7616574   0.9914212
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             optimal           1.0336321   0.9777800   1.0926745
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             optimal           0.8424645   0.6901254   1.0284310
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             optimal           1.1869827   1.0017244   1.4065024
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             optimal           1.1037964   1.0428866   1.1682636
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             optimal           1.0208694   0.9690831   1.0754232
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             optimal           1.3957179   1.0076527   1.9332341
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           0.9925485   0.9689692   1.0167017
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           1.0196094   0.9967944   1.0429466
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             optimal           1.0867116   0.6435027   1.8351781
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             optimal           1.0851629   0.9700324   1.2139578
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             optimal           0.7813737   0.4262552   1.4323461
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             optimal           1.2388056   0.9103766   1.6857194
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             optimal           1.0969749   0.9945539   1.2099433
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             optimal           1.0025466   0.8651115   1.1618153
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           1.0616883   1.0262832   1.0983148
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           0.9438482   0.8454164   1.0537405
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             optimal           1.0920003   0.9232610   1.2915793
6-24 months                  ki1000109-EE              PAKISTAN     observed             optimal           0.8743737   0.7722340   0.9900230
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             optimal           0.9770875   0.8185132   1.1663831
6-24 months                  ki1101329-Keneba          GAMBIA       observed             optimal           1.0974549   0.9985891   1.2061089
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             optimal           1.0494992   0.9559058   1.1522563
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             optimal           1.4184340   1.0453621   1.9246488
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             optimal           1.0036241   0.9461746   1.0645618
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             optimal           1.0166708   0.9889433   1.0451757


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.0814803   -0.1621185   -0.0008422
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                 0.0282256   -0.0180584    0.0745095
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.1147200   -0.2563572    0.0269171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0591350    0.0057350    0.1125350
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                 0.0490864    0.0223215    0.0758513
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0131797   -0.0196064    0.0459658
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                 0.1198897    0.0203445    0.2194348
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                -0.0019283   -0.0081516    0.0042950
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0082187   -0.0012577    0.0176950
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.0165227   -0.0833515    0.1163969
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                 0.0472767   -0.0145644    0.1091179
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.0575044   -0.2287314    0.1137227
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.0307096   -0.0088131    0.0702322
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                 0.0226358   -0.0002715    0.0455432
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0005020   -0.0285598    0.0295637
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0077393    0.0034854    0.0119932
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                -0.0055276   -0.0163582    0.0053030
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.0361069   -0.0300791    0.1022929
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                -0.0977588   -0.1916517   -0.0038658
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                -0.0070298   -0.0614164    0.0473568
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                 0.0339551    0.0010686    0.0668417
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0266117   -0.0234971    0.0767206
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                 0.1347518    0.0353678    0.2341358
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0007800   -0.0119037    0.0134636
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0060661   -0.0040113    0.0161436


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                -0.1507767   -0.3129263   -0.0086530
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                 0.0325378   -0.0227249    0.0848144
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.1869937   -0.4490119    0.0276450
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.1575277    0.0017215    0.2890165
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                 0.0940358    0.0411230    0.1440288
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0204428   -0.0319033    0.0701335
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                 0.2835228    0.0075945    0.4827321
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                -0.0075074   -0.0320246    0.0164273
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0192322   -0.0032159    0.0411781
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.0797926   -0.5539950    0.4550938
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                 0.0784794   -0.0308934    0.1762482
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                -0.2797973   -1.3460126    0.3018447
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                 0.1927709   -0.0984466    0.4067815
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                 0.0884021   -0.0054759    0.1735150
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0025402   -0.1559204    0.1392780
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0581040    0.0256101    0.0895142
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                -0.0594924   -0.1828491    0.0509997
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                 0.0842494   -0.0831173    0.2257541
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                -0.1436757   -0.2949443   -0.0100776
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                -0.0234498   -0.2217274    0.1426487
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                 0.0888008   -0.0014129    0.1708875
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                 0.0471645   -0.0461282    0.1321375
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                 0.2949971    0.0433937    0.4804247
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                 0.0036110   -0.0568873    0.0606463
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                 0.0163974   -0.0111804    0.0432231
