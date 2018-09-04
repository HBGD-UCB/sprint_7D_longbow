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

unadjusted

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
![](/tmp/cfd543bc-bc83-4605-87fc-dc6a2062278b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cfd543bc-bc83-4605-87fc-dc6a2062278b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cfd543bc-bc83-4605-87fc-dc6a2062278b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cfd543bc-bc83-4605-87fc-dc6a2062278b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5266667    0.4465628   0.6067705
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5833333    0.4435100   0.7231567
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                0.8508772    0.7853570   0.9163974
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                0.8814815    0.8268485   0.9361144
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4000000    0.3536593   0.4463407
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3235294    0.2592818   0.3877770
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5550314    0.5277143   0.5823486
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4660453    0.4303590   0.5017316
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7016129    0.6209990   0.7822268
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6259947    0.5771030   0.6748864
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4275862    0.3468301   0.5083423
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.4000000    0.2241925   0.5758075
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2971910    0.2814186   0.3129634
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2469975    0.2384490   0.2555459
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4562682    0.4139350   0.4986014
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4199102    0.3976366   0.4421837
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2133333    0.1476089   0.2790577
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1875000    0.0768021   0.2981979
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                0.5526316    0.4611739   0.6440892
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                0.6444444    0.5635346   0.7253543
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1720930    0.1363880   0.2077980
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1323529    0.0858143   0.1788916
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2743711    0.2498444   0.2988977
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2250333    0.1951588   0.2549078
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2338710    0.1592931   0.3084489
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1856764    0.1463858   0.2249669
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1823034    0.1693014   0.1953053
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1211996    0.1151025   0.1272968
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1093294    0.0834759   0.1351830
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0886976    0.0751617   0.1022335
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4051724    0.3155433   0.4948016
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5000000    0.3405073   0.6594927
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                0.6666667    0.5366177   0.7967157
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                0.6956522    0.5619924   0.8293119
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2899408    0.2415161   0.3383656
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3277311    0.2433042   0.4121579
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3975501    0.3655302   0.4295701
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3555992    0.3139984   0.3972000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6170213    0.5186271   0.7154154
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5478548    0.4917440   0.6039655
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4626866    0.3780033   0.5473698
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4285714    0.2447034   0.6124395
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2237838    0.2039894   0.2435781
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2143191    0.2040611   0.2245771
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3924466    0.3464350   0.4384583
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3643092    0.3420733   0.3865451


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5404040   0.4708115   0.6099965
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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1075949   0.8338605   1.4711892
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    0                 1.0359679   0.9384636   1.1436028
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9522792   0.6108919   1.4844455
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8088235   0.6426975   1.0178902
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    0                 0.8396736   0.7666171   0.9196923
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8922223   0.7764912   1.0252024
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    0                 0.9354839   0.5798008   1.5093634
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8311068   0.7837284   0.8813493
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9203143   0.8287554   1.0219884
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8789062   0.4515742   1.7106294
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    0                 1.1661376   0.9474020   1.4353747
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.5564103   0.1567991   1.9744522
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7690779   0.5112812   1.1568601
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    0                 0.8201786   0.6988772   0.9625339
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7939266   0.5414675   1.1640947
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.6648239   0.6115619   0.7227247
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8112874   0.6118688   1.0757000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.2340426   0.8370359   1.8193498
6-24 months                  ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN     1                    0                 1.0434783   0.7935437   1.3721322
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1303378   0.8315224   1.5365354
6-24 months                  ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA       1                    0                 0.8944765   0.7760411   1.0309868
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8879026   0.7346091   1.0731844
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    0                 0.9262673   0.5809871   1.4767473
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9577061   0.8698381   1.0544501
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9283025   0.8155531   1.0566395


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0137374   -0.0254746    0.0529494
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0165927   -0.0296982    0.0628836
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0246057   -0.0502463    0.0010349
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0330344   -0.0498230   -0.0162458
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0569023   -0.1279063    0.0141017
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0047291   -0.0379310    0.0284728
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0403381   -0.0538187   -0.0268575
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0289305   -0.0663521    0.0084911
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0062626   -0.0375103    0.0249851
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0497781   -0.0166706    0.1162267
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0127870   -0.0317164    0.0061423
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0183157   -0.0327024   -0.0039290
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0362662   -0.0997238    0.0271914
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0491061   -0.0602608   -0.0379514
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0164170   -0.0396993    0.0068653
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0233990   -0.0222073    0.0690053
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0137457   -0.0747391    0.1022306
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0098404   -0.0155491    0.0352298
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0151763   -0.0341968    0.0038443
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0527895   -0.1392875    0.0337084
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0058964   -0.0409414    0.0291485
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0077830   -0.0253508    0.0097848
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0225025   -0.0626396    0.0176346


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0254206   -0.0500121    0.0954342
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0191277   -0.0358150    0.0711560
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0655462   -0.1361811    0.0006974
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0632847   -0.0960856   -0.0314654
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0882603   -0.2046469    0.0168817
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0111836   -0.0928430    0.0643740
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1570475   -0.2108750   -0.1056129
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0676994   -0.1590489    0.0164504
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0302439   -0.1926381    0.1100380
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0826316   -0.0352125    0.1870608
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0802671   -0.2052987    0.0317943
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0715303   -0.1291457   -0.0168547
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1835288   -0.5515576    0.0972037
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3686718   -0.4549968   -0.2874685
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1766932   -0.4581050    0.0504066
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0545977   -0.0582565    0.1554170
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0202020   -0.1189759    0.1420690
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0328251   -0.0556635    0.1138963
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0396896   -0.0906632    0.0089017
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0935600   -0.2585782    0.0498218
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0129084   -0.0926320    0.0609982
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0360324   -0.1206907    0.0422308
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0608269   -0.1749201    0.0421871
