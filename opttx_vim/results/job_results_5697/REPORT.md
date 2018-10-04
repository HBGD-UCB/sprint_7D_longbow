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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/95f332c5-a672-47db-b79b-f0d5a5ab3ed0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/95f332c5-a672-47db-b79b-f0d5a5ab3ed0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.5379806   0.4596828   0.6162785
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              NA                0.8507280   0.7862600   0.9151960
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.6105507   0.5290880   0.6920134
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.2987753   0.2513889   0.3461617
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              NA                0.4708701   0.4408316   0.5009086
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.6486525   0.5919201   0.7053849
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              NA                0.4030843   0.2307837   0.5753849
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.2242734   0.2156142   0.2329326
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.4185472   0.3967794   0.4403150
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.1932725   0.0935915   0.2929534
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              NA                0.5504677   0.4688526   0.6320827
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              NA                0.1975051   0.1407225   0.2542876
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.1251217   0.0855876   0.1646558
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              NA                0.2141591   0.1896054   0.2387127
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.0643884   0.0362788   0.0924980
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1195265   0.1134881   0.1255649
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.0873380   0.0740986   0.1005775
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              NA                0.3679220   0.2769095   0.4589346
6-24 months                  ki1000109-EE              PAKISTAN     optimal              NA                0.6628450   0.5357939   0.7898962
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              NA                0.3037714   0.2224064   0.3851364
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              NA                0.3511773   0.3157060   0.3866486
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              NA                0.5686602   0.4999153   0.6374051
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              NA                0.4294863   0.2492239   0.6097487
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              NA                0.1848837   0.1740586   0.1957089
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              NA                0.3638414   0.3419838   0.3856991


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.5423451   0.4727526   0.6119375
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     observed             NA                0.8679348   0.8257354   0.9101343
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.6124594   0.5275928   0.6973260
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3761122   0.3383904   0.4138341
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       observed             NA                0.5220384   0.5002659   0.5438108
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        observed             NA                0.6446960   0.6027456   0.6866465
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       observed             NA                0.4204754   0.3470727   0.4938781
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2587388   0.2508100   0.2666676
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.4276154   0.4075359   0.4476948
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.2056209   0.1490372   0.2622046
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     observed             NA                0.6004164   0.5395068   0.6613261
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        observed             NA                0.2048887   0.1379210   0.2718563
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.1582342   0.1297253   0.1867432
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       observed             NA                0.2578615   0.2388378   0.2768852
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        observed             NA                0.1992280   0.1643256   0.2341305
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.1343282   0.1286356   0.1400209
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.0930892   0.0811063   0.1050721
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   observed             NA                0.4336903   0.3552761   0.5121046
6-24 months                  ki1000109-EE              PAKISTAN     observed             NA                0.6816918   0.5884107   0.7749729
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   observed             NA                0.3004677   0.2584159   0.3425195
6-24 months                  ki1101329-Keneba          GAMBIA       observed             NA                0.3829478   0.3575461   0.4083494
6-24 months                  ki1113344-GMS-Nepal       NEPAL        observed             NA                0.5646921   0.5158542   0.6135300
6-24 months                  ki1148112-LCNI-5          MALAWI       observed             NA                0.4558569   0.3789125   0.5328014
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   observed             NA                0.2172505   0.2077938   0.2267072
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   observed             NA                0.3694541   0.3490274   0.3898808


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.9919527   0.9278733   1.0604574
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     optimal              observed          0.9801750   0.9294549   1.0336629
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        optimal              observed          0.9968835   0.9766684   1.0175171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          0.7943780   0.6994619   0.9021742
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       optimal              observed          0.9019837   0.8597269   0.9463175
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        optimal              observed          1.0061370   0.9459337   1.0701718
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       optimal              observed          0.9586393   0.6501467   1.4135108
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.8667946   0.8487913   0.8851799
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9787937   0.9579420   1.0000992
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.9399455   0.6355824   1.3900600
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     optimal              observed          0.9168098   0.8310454   1.0114250
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          0.9639628   0.8681546   1.0703443
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          0.7907374   0.6102468   1.0246112
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       optimal              observed          0.8305197   0.7603667   0.9071452
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        optimal              observed          0.3231895   0.2194910   0.4758802
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.8898092   0.8700953   0.9099697
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9382186   0.8785219   1.0019717
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   optimal              observed          0.8483520   0.7344609   0.9799038
6-24 months                  ki1000109-EE              PAKISTAN     optimal              observed          0.9723529   0.8533907   1.1078985
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   optimal              observed          1.0109952   0.8067268   1.2669856
6-24 months                  ki1101329-Keneba          GAMBIA       optimal              observed          0.9170371   0.8471195   0.9927253
6-24 months                  ki1113344-GMS-Nepal       NEPAL        optimal              observed          1.0070270   0.9239672   1.0975533
6-24 months                  ki1148112-LCNI-5          MALAWI       optimal              observed          0.9421515   0.6438265   1.3787090
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          0.8510162   0.8221153   0.8809331
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          0.9848082   0.9586517   1.0116785
