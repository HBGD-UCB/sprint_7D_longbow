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

unadjusted

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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       17     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       97     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      119     249
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       37     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       87     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      141     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      236     501
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2482   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1053   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10992   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3604   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      365    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      310    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1558    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3358
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       51     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       63     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       48     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       87     249
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       95     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       29     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      307     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     501
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2889   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      646   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12827   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1769   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      600    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2446    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       17      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       34      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       14      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       32      97
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       36     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       58     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      137     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      166     397
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1422   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      412   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6741   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1837   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      363    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      236    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1553    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      889    3041


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
![](/tmp/c28e7b77-8a10-4e46-a6ea-a48bc914ec7c/722883b9-9ee9-4449-ad31-b15cdcca79b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c28e7b77-8a10-4e46-a6ea-a48bc914ec7c/722883b9-9ee9-4449-ad31-b15cdcca79b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c28e7b77-8a10-4e46-a6ea-a48bc914ec7c/722883b9-9ee9-4449-ad31-b15cdcca79b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c28e7b77-8a10-4e46-a6ea-a48bc914ec7c/722883b9-9ee9-4449-ad31-b15cdcca79b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5000000    0.3975708   0.6024292
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5754717    0.4811395   0.6698039
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2486188    0.1855009   0.3117367
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                0.3333333    0.1550928   0.5115739
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                0.6518519    0.5713229   0.7323808
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                0.5631068    0.4671166   0.6590970
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2978784    0.2820420   0.3137148
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2469170    0.2383758   0.2554581
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4592593    0.4164982   0.5020203
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4193067    0.3971007   0.4415128
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2391304    0.1517476   0.3265133
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1792453    0.1060429   0.2524477
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                0.4222222    0.3387299   0.5057145
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                0.3009709    0.2122034   0.3897383
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1827440    0.1696746   0.1958134
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1211976    0.1150980   0.1272971
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1111111    0.0848795   0.1373427
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0883340    0.0748416   0.1018263
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3529412    0.2389867   0.4668956
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4883721    0.3823818   0.5943624
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                0.1964286    0.1361962   0.2566610
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                0.3076923    0.1298269   0.4855577
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                0.4025974    0.2926857   0.5125091
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                0.3802817    0.2669788   0.4935846
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
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2246456    0.2048049   0.2444863
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2141525    0.2039026   0.2244024
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3939900    0.3473813   0.4405986
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3640459    0.3418808   0.3862110


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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1509434   0.8853374   1.4962327
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    0                 1.3407407   0.7417773   2.4233495
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    0                 0.8638570   0.6998623   1.0662797
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8289188   0.7816034   0.8790985
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9130066   0.8219915   1.0140994
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7495712   0.4333262   1.2966142
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    0                 0.7128258   0.4997681   1.0167126
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.6632097   0.6098854   0.7211964
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7950056   0.5996031   1.0540870
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.3837209   0.9377641   2.0417540
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    0                 1.5664336   0.8141948   3.0136694
6-24 months                  ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU         1                    0                 0.9445706   0.6305687   1.4149349
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
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9532904   0.8659476   1.0494430
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9239978   0.8110719   1.0526464


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0404040   -0.0343285    0.1151366
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0109966   -0.0138528    0.0358460
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                -0.0384065   -0.0929193    0.0161063
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0165927   -0.0296982    0.0628836
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0246057   -0.0502463    0.0010349
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0330344   -0.0498230   -0.0162458
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0569023   -0.1279063    0.0141017
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0047291   -0.0379310    0.0284728
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0410255   -0.0545760   -0.0274749
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0319216   -0.0697767    0.0059336
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0320597   -0.0932285    0.0291091
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                -0.0524743   -0.1057651    0.0008165
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0497781   -0.0166706    0.1162267
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0127870   -0.0317164    0.0061423
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0183157   -0.0327024   -0.0039290
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0362662   -0.0997238    0.0271914
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0495467   -0.0607885   -0.0383049
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0181987   -0.0418480    0.0054507
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0756303   -0.0119288    0.1631893
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0149116   -0.0108176    0.0406409
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                -0.0107055   -0.0864546    0.0650436
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0137457   -0.0747391    0.1022306
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0098404   -0.0155491    0.0352298
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0151763   -0.0341968    0.0038443
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0527895   -0.1392875    0.0337084
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0058964   -0.0409414    0.0291485
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0086448   -0.0262736    0.0089839
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0240459   -0.0647581    0.0166663


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0747664   -0.0748504    0.2035568
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0423573   -0.0581256    0.1332980
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                -0.0626078   -0.1558722    0.0231313
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                 0.0191277   -0.0358150    0.0711560
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0655462   -0.1361811    0.0006974
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                -0.0632847   -0.0960856   -0.0314654
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0882603   -0.2046469    0.0168817
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0111836   -0.0928430    0.0643740
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1597235   -0.2138354   -0.1080239
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0746987   -0.1671302    0.0104127
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1548250   -0.4898901    0.1048864
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                -0.1419192   -0.2962800   -0.0059396
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                 0.0826316   -0.0352125    0.1870608
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0802671   -0.2052987    0.0317943
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                -0.0715303   -0.1291457   -0.0168547
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1835288   -0.5515576    0.0972037
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3719798   -0.4590330   -0.2901207
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1958689   -0.4818788    0.0349396
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1764706   -0.0561772    0.3578722
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0705575   -0.0586476    0.1839935
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                -0.0273175   -0.2400189    0.1488991
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                 0.0202020   -0.1189759    0.1420690
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0328251   -0.0556635    0.1138963
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                -0.0396896   -0.0906632    0.0089017
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0935600   -0.2585782    0.0498218
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                -0.0129084   -0.0926320    0.0609982
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0400221   -0.1249816    0.0385211
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0649987   -0.1807664    0.0394186
