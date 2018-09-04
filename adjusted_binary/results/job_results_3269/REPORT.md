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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       45     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       61     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      135     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       24     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       28     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       84     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       97     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        4     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        9     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      136     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       47     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       88     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       45     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       58     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      125     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      173     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     210
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       34     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      194     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       32     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      238     498
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      258     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      172     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       66     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       74    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      174    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      282    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      472    1002
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     4964   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     2106   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    21984   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     7208   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      730    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      620    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3116    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     2250    6716
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       70     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       87     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      142     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       30     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       11     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        2     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      169     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       26     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       78     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       57     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       72     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       31     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      146     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0      102     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      126     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       96     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1      174     498
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      356     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       74     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      177     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       27     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      190    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       58    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      614    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1      140    1002
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5778   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1292   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    25654   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3538   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1200    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      150    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     4892    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      474    6716
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       42     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       27     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       84     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       56     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        4     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        7     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      135     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       18     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8     194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       46     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       31     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       44     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       27     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      111     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       34     194
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       68     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       28     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       64     194
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      240     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       98     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       80     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       39     457
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       72     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      116     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      274     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      332     794
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2844   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      824   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13482   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3674   20824
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      726    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      472    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3106    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1778    6082


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







# Results Detail

## Results Plots
![](/tmp/fc2ce401-6c14-4d8f-b990-79c66b411b63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc2ce401-6c14-4d8f-b990-79c66b411b63/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc2ce401-6c14-4d8f-b990-79c66b411b63/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc2ce401-6c14-4d8f-b990-79c66b411b63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5145905    0.4256597   0.6035212
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5628315    0.4790683   0.6465948
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2486188    0.1855009   0.3117367
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                0.3333333    0.1550928   0.5115739
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                0.6499028    0.5721835   0.7276222
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                0.5661979    0.4716689   0.6607268
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                0.8515179    0.7874277   0.9156081
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                0.8810371    0.8272317   0.9348425
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4417130    0.3988048   0.4846212
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.4093758    0.3587826   0.4599690
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5476502    0.5225799   0.5727205
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4669027    0.4375538   0.4962515
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6471349    0.5675428   0.7267270
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6194237    0.5705511   0.6682963
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4254567    0.3449427   0.5059707
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.4102334    0.2372032   0.5832635
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2798868    0.2668144   0.2929592
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2490463    0.2406889   0.2574038
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4598466    0.4242717   0.4954215
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4185626    0.3968312   0.4402939
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2182593    0.1380181   0.2985006
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1908279    0.1152619   0.2663939
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                0.4206470    0.3410589   0.5002351
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                0.3021519    0.2164088   0.3878949
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                0.5944421    0.5115371   0.6773471
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                0.6673313    0.5946735   0.7399890
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1953739    0.1612150   0.2295328
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1535212    0.1136321   0.1934103
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2757060    0.2531425   0.2982695
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2224158    0.1977611   0.2470705
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1830716    0.1184074   0.2477358
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1800138    0.1413156   0.2187121
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1644834    0.1539936   0.1749733
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1240765    0.1181168   0.1300361
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0803129    0.0600901   0.1005357
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0848243    0.0716188   0.0980298
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3627275    0.2521638   0.4732912
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4809682    0.3768781   0.5850583
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                0.1964286    0.1361962   0.2566610
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                0.3076923    0.1298269   0.4855577
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                0.4025974    0.2926857   0.5125091
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                0.3802817    0.2669788   0.4935846
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                0.6442065    0.5194965   0.7689164
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                0.6798961    0.5519412   0.8078509
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2995765    0.2519289   0.3472241
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3020219    0.2224786   0.3815652
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3960416    0.3659129   0.4261703
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3542275    0.3188066   0.3896484
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6165677    0.5186701   0.7144654
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5479818    0.4919376   0.6040260
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4596936    0.3753930   0.5439943
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4429160    0.2629375   0.6228944
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2188375    0.2019319   0.2357430
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2152889    0.2052291   0.2253488
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4041342    0.3638948   0.4443736
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3644706    0.3426928   0.3862485


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2596154   0.1998903   0.3193405
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         NA                   NA                0.6134454   0.5514489   0.6754419
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED         PERU         NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months                  ki1000109-EE              PAKISTAN     NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5          MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0937466   0.9015885   1.3268598
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    0                 1.3407407   0.7417773   2.4233495
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    0                 0.8712038   0.7132723   1.0641043
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    0                 1.0346666   0.9403747   1.1384131
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9522792   0.6108919   1.4844455
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9267914   0.7989013   1.0751546
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    0                 0.8525564   0.7931661   0.9163936
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9571786   0.8270052   1.1078417
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    0                 0.9642188   0.6087868   1.5271650
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8898108   0.8467858   0.9350219
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9102222   0.8324881   0.9952148
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8743172   0.5149148   1.4845769
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    0                 0.7183027   0.5180572   0.9959496
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    0                 1.1226177   0.9512737   1.3248244
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5564103   0.1567991   1.9744522
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7857814   0.5864050   1.0529453
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    0                 0.8067136   0.7098996   0.9167309
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9832974   0.6501156   1.4872335
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7543401   0.7017708   0.8108473
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0561730   0.7897189   1.4125297
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.3259767   0.9210011   1.9090251
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    0                 1.5664336   0.8141948   3.0136694
6-24 months                  ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU         1                    0                 0.9445706   0.6305687   1.4149349
6-24 months                  ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN     1                    0                 1.0554009   0.8053984   1.3830062
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0081629   0.7474745   1.3597686
6-24 months                  ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA       1                    0                 0.8944200   0.7926621   1.0092410
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8887618   0.7360032   1.0732257
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    0                 0.9635025   0.6190303   1.4996634
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9837845   0.9059739   1.0682779
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9018554   0.8061383   1.0089376


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0258136   -0.0297110    0.0813382
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0109966   -0.0138528    0.0358460
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                -0.0364575   -0.0882641    0.0153491
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0159520   -0.0286626    0.0605665
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0663186   -0.0899131   -0.0427242
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0256532   -0.0398063   -0.0115000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0024243   -0.0725089    0.0676602
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0025996   -0.0351443    0.0299452
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0230339   -0.0337493   -0.0123185
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0325089   -0.0637099   -0.0013078
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0111886   -0.0664088    0.0440316
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                -0.0508991   -0.0997543   -0.0020438
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0079675   -0.0471078    0.0630428
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0360679   -0.0536581   -0.0184777
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0196506   -0.0317561   -0.0075451
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0145332   -0.0405279    0.0695943
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0312862   -0.0400335   -0.0225388
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0125995   -0.0057285    0.0309275
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0658439   -0.0172906    0.1489784
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0149116   -0.0108176    0.0406409
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                -0.0107055   -0.0864546    0.0650436
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0362059   -0.0493556    0.1217675
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0002047   -0.0233581    0.0237675
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0136677   -0.0306501    0.0033146
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0523360   -0.1383317    0.0336597
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0029035   -0.0369937    0.0311867
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0028367   -0.0174551    0.0117816
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0341901   -0.0689822    0.0006020


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0477672   -0.0609168    0.1453173
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0423573   -0.0581256    0.1332980
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                -0.0594307   -0.1480618    0.0223581
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0183891   -0.0345050    0.0685787
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1766639   -0.2452139   -0.1118877
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0491443   -0.0768461   -0.0221550
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0037603   -0.1185881    0.0992799
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0061476   -0.0861311    0.0679458
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0896775   -0.1324145   -0.0485534
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0760730   -0.1520513   -0.0051055
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0540329   -0.3574304    0.1815527
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                -0.1376589   -0.2792591   -0.0117323
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0132261   -0.0826072    0.1005761
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2264066   -0.3479717   -0.1158046
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0767437   -0.1254233   -0.0301697
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0735467   -0.2516317    0.3142426
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2348858   -0.3030228   -0.1703119
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.1356066   -0.0834119    0.3103491
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1536358   -0.0646695    0.3271787
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0705575   -0.0586476    0.1839935
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                -0.0273175   -0.2400189    0.1488991
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0532117   -0.0812676    0.1709656
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0006827   -0.0810883    0.0762687
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0357445   -0.0812638    0.0078586
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0927562   -0.2567673    0.0498510
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0063563   -0.0838260    0.0655760
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0131328   -0.0831629    0.0523695
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0924197   -0.1908177   -0.0021523
