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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f9b5f03f-9584-4f04-a7f4-5608b6f37bf4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9b5f03f-9584-4f04-a7f4-5608b6f37bf4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.4939883   0.4116218   0.5763547
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        optimal              NA                0.2480980   0.1849801   0.3112158
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         optimal              NA                0.5681946   0.4736994   0.6626897
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                0.8276397   0.7592687   0.8960107
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.6105507   0.5290880   0.6920134
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.3066097   0.2583828   0.3548366
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                0.4707008   0.4405320   0.5008696
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.6473833   0.5929799   0.7017867
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                0.4096165   0.2376176   0.5816155
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2430701   0.2343371   0.2518030
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.4185530   0.3967927   0.4403132
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.1785051   0.1020475   0.2549628
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         optimal              NA                0.2999279   0.2141772   0.3856786
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                0.5576197   0.4716405   0.6435988
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.1975051   0.1407225   0.2542876
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.1209839   0.0805537   0.1614140
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                0.1931825   0.1697869   0.2165782
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.1861281   0.1471873   0.2250689
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1196318   0.1136198   0.1256437
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.0874770   0.0742355   0.1007184
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.3628476   0.2528775   0.4728178
6-24 months                  ki0047075b-MAL-ED         NEPAL        optimal              NA                0.1969422   0.1367097   0.2571746
6-24 months                  ki0047075b-MAL-ED         PERU         optimal              NA                0.3749765   0.2617722   0.4881808
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                0.6744464   0.5651697   0.7837231
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.1775547   0.1175400   0.2375694
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                0.3543332   0.3191768   0.3894896
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.5728495   0.5016439   0.6440552
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                0.4557769   0.2759402   0.6356135
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1905792   0.1795178   0.2016406
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.3638002   0.3420209   0.3855794


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.5437098   0.4741173   0.6133023
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        observed             NA                0.2595510   0.1998259   0.3192761
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         observed             NA                0.6112425   0.5492460   0.6732390
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             NA                0.8689550   0.8267555   0.9111544
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.6124594   0.5275928   0.6973260
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3743792   0.3366573   0.4121010
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             NA                0.5213606   0.4995881   0.5431330
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             NA                0.6445668   0.6026164   0.6865173
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             NA                0.4222334   0.3488307   0.4956361
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2576565   0.2497276   0.2655853
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.4272009   0.4071215   0.4472803
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.2070508   0.1504671   0.2636346
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         observed             NA                0.3688997   0.3074410   0.4303585
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             NA                0.6000647   0.5391550   0.6609743
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.2048887   0.1379210   0.2718563
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.1595069   0.1309980   0.1880159
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             NA                0.2603125   0.2412888   0.2793362
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             NA                0.1978775   0.1629750   0.2327799
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.1339971   0.1283044   0.1396897
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.0929854   0.0810025   0.1049683
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.4285169   0.3501027   0.5069312
6-24 months                  ki0047075b-MAL-ED         NEPAL        observed             NA                0.2113692   0.1537715   0.2689669
6-24 months                  ki0047075b-MAL-ED         PERU         observed             NA                0.3919557   0.3130401   0.4708713
6-24 months                  ki1000109-EE              PAKISTAN     observed             NA                0.6764290   0.5831480   0.7697101
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3004316   0.2583798   0.3424834
6-24 months                  ki1101329-Keneba          GAMBIA       observed             NA                0.3841338   0.3587321   0.4095355
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             NA                0.5634557   0.5146178   0.6122936
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             NA                0.4568011   0.3798566   0.5337456
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2170450   0.2075883   0.2265017
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.3696997   0.3492730   0.3901264


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.9085514   0.8215370   1.0047820
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        optimal              observed          0.9558737   0.8648921   1.0564261
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         optimal              observed          0.9295731   0.8244352   1.0481190
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              observed          0.9524541   0.9024907   1.0051835
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              observed          0.9968835   0.9766684   1.0175171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          0.8189818   0.7232024   0.9274460
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              observed          0.9028316   0.8604832   0.9472641
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              observed          1.0043695   0.9449520   1.0675231
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              observed          0.9701187   0.6625826   1.4203969
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.9433882   0.9296155   0.9573649
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9797568   0.9586837   1.0012930
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.8621319   0.6226203   1.1937797
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         optimal              observed          0.8130337   0.6562553   1.0072662
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              observed          0.9292660   0.8374237   1.0311808
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          0.9639628   0.8681546   1.0703443
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          0.7584868   0.5774274   0.9963197
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              observed          0.7421179   0.6755333   0.8152656
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              observed          0.9406230   0.8415950   1.0513033
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.8927937   0.8720667   0.9140133
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9407596   0.8815804   1.0039114
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.8467521   0.6746568   1.0627465
6-24 months                  ki0047075b-MAL-ED         NEPAL        optimal              observed          0.9317449   0.8183491   1.0608536
6-24 months                  ki0047075b-MAL-ED         PERU         optimal              observed          0.9566809   0.7688079   1.1904643
6-24 months                  ki1000109-EE              PAKISTAN     optimal              observed          0.9970689   0.9050828   1.0984038
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              observed          0.5909988   0.4411704   0.7917112
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              observed          0.9224213   0.8539149   0.9964237
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              observed          1.0166718   0.9280344   1.1137749
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              observed          0.9977578   0.6978975   1.4264568
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.8780633   0.8486694   0.9084753
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9840424   0.9582001   1.0105816
