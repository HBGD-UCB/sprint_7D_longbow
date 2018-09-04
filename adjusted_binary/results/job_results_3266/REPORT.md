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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       71     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       79     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      150     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       13     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       86     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      105     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        2     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        1     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      143     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       50     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       11     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        4     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       90     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      139     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        2     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        7     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      126     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      174     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     210
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5004   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     2116   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    21944   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     7198   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      746    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      626    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3100    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     2244    6716
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      118     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       32     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       39     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      158     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       19     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      148     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        3     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        0     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      181     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       14     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      144     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       85     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        3     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       72     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      147     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     210
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5822   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1298   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    25610   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3532   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1222    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      150    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     4870    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      474    6716
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       69     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       47     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       19     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        8     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        1     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       86     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       62     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        2     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        1     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      142     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       38     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       11     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        3     194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       88     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       54     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        2     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        4     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      112     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     144
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2872   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      828   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13454   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3670   20824
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      740    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      478    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3092    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1772    6082


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







# Results Detail

## Results Plots
![](/tmp/7ca41762-33a3-440e-a138-2b65843c0366/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ca41762-33a3-440e-a138-2b65843c0366/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ca41762-33a3-440e-a138-2b65843c0366/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ca41762-33a3-440e-a138-2b65843c0366/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5368924    0.4585787   0.6152060
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5514836    0.4193933   0.6835740
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                0.8516501    0.7877417   0.9155585
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                0.8809557    0.8273140   0.9345974
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4430466    0.4006767   0.4854165
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.4118812    0.3633947   0.4603676
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5478078    0.5223300   0.5732856
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4657765    0.4353121   0.4962408
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7016129    0.6209990   0.7822268
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6259947    0.5771030   0.6748864
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4245326    0.3440776   0.5049877
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.4147245    0.2424255   0.5870234
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2792058    0.2661092   0.2923024
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2489370    0.2405863   0.2572877
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4713473    0.4355695   0.5071250
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4201246    0.3982953   0.4419539
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2133333    0.1476089   0.2790577
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1875000    0.0768021   0.2981979
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                0.5943832    0.5076631   0.6811033
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                0.6660700    0.5912367   0.7409033
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1947274    0.1607065   0.2287483
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1534746    0.1140602   0.1928890
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2748063    0.2519824   0.2976302
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2232353    0.1978427   0.2486279
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1827970    0.1185551   0.2470389
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1799277    0.1412641   0.2185913
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1607352    0.1503645   0.1711059
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1237762    0.1178053   0.1297470
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0934799    0.0728210   0.1141387
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0856982    0.0724703   0.0989260
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3921994    0.3050672   0.4793315
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3720529    0.2410423   0.5030634
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                0.6465293    0.5209603   0.7720982
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                0.6802538    0.5515330   0.8089746
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2996084    0.2519625   0.3472544
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3019454    0.2224143   0.3814765
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3957122    0.3656586   0.4257658
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3542789    0.3189605   0.3895973
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6169003    0.5186194   0.7151812
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5478895    0.4917945   0.6039845
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4601748    0.3758364   0.5445133
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4405930    0.2602303   0.6209557
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2217363    0.2047063   0.2387663
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2158888    0.2058176   0.2259599
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4061006    0.3666391   0.4455622
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3646707    0.3427889   0.3865524


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4285714   0.3501572   0.5069857
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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0271773   0.7837142   1.3462729
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    0                 1.0344104   0.9405928   1.1375857
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9522792   0.6108919   1.4844455
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9296566   0.8067045   1.0713482
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    0                 0.8502553   0.7882331   0.9171576
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8922223   0.7764912   1.0252024
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    0                 0.9768966   0.6206902   1.5375255
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8915896   0.8480145   0.9374038
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8913272   0.8159501   0.9736675
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8789062   0.4515742   1.7106294
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    0                 1.1206070   0.9424388   1.3324580
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5564103   0.1567991   1.9744522
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7881507   0.5903358   1.0522513
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    0                 0.8123368   0.7117033   0.9271998
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9843032   0.6517940   1.4864403
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7700627   0.7157668   0.8284773
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9167553   0.7028963   1.1956817
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9486320   0.6295390   1.4294631
6-24 months                  ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN     1                    0                 1.0521624   0.8020142   1.3803320
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0078001   0.7472107   1.3592700
6-24 months                  ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA       1                    0                 0.8952943   0.7942458   1.0091988
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8881329   0.7349550   1.0732358
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    0                 0.9574470   0.6132645   1.4947950
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9736282   0.8967799   1.0570620
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8979810   0.8037197   1.0032974


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0035117   -0.0323903    0.0394137
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0158198   -0.0285510    0.0601906
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0676523   -0.0909106   -0.0443939
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0258108   -0.0404083   -0.0112133
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0569023   -0.1279063    0.0141017
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0016755   -0.0340502    0.0306993
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0223529   -0.0331801   -0.0115256
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0440096   -0.0754086   -0.0126106
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0062626   -0.0375103    0.0249851
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0080264   -0.0500129    0.0660657
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0354214   -0.0528121   -0.0180308
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0187509   -0.0311504   -0.0063515
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0148078   -0.0399162    0.0695318
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0275379   -0.0362139   -0.0188620
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0005674   -0.0192509    0.0181161
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0363721   -0.0073206    0.0800647
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0338831   -0.0520960    0.1198622
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0001727   -0.0233864    0.0237318
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0133384   -0.0301430    0.0034663
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0526686   -0.1390509    0.0337138
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0033847   -0.0375701    0.0308007
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0057356   -0.0204850    0.0090139
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0361565   -0.0703735   -0.0019396


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0064983   -0.0622147    0.0707663
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0182367   -0.0343604    0.0681592
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1802165   -0.2483077   -0.1158395
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0494462   -0.0779908   -0.0216573
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0882603   -0.2046469    0.0168817
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0039623   -0.0835167    0.0697511
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0870260   -0.1302353   -0.0454685
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1029855   -0.1795793   -0.0313652
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0302439   -0.1926381    0.1100380
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0133239   -0.0879853    0.1051996
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2223484   -0.3424788   -0.1129678
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0732300   -0.1230194   -0.0256480
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0749364   -0.2479444    0.3142781
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2067454   -0.2743130   -0.1427604
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0061070   -0.2288413    0.1762555
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0848682   -0.0231189    0.1814575
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0497979   -0.0854048    0.1681592
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0005762   -0.0811816    0.0761516
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0348830   -0.0799104    0.0082669
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0933457   -0.2581319    0.0498574
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0074097   -0.0851031    0.0647208
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0265535   -0.0972459    0.0395844
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0977352   -0.1945361   -0.0087786
