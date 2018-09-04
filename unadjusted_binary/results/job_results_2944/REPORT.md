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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        exclfeed3    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       27     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       71     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       80     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       18     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       68     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       46     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       32     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       48     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       74     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0       95     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       59     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       77     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      117     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       24     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       33     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       98     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      117     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       16     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       15     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       22     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      127     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       14     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       48     211
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8       8
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        3      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        7      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        4     496
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       28     496
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       60     496
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      404     496
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      110     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       69     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      286     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1      169     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0       91    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      111    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      759    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      874    1835
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       48     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       88     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      258     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      450     844
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2342   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      976   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    23904   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     8150   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0        6     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       12     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      124     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       84     226
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      116     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       35     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      111     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       72     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        6     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0       65     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       13     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       92     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       30     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      118     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       77     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      119     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       75     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       41     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       16     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      147     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       68     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       23     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        8     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      104     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       45     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       43     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       19     211
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        5      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      10
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       12     496
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       20     496
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0      184     496
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1      280     496
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      146     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       33     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      387     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       68     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      143    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1       59    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0     1203    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      430    1835
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      118     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       18     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      568     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1      140     844
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2690   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      628   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    27942   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     4112   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       12     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      192     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       16     226
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       26     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       19     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       66     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       45     156
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0       95     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        5     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       64     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        4     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       45     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       19     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       46     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       44     154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0       94     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       23     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       58     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1       18     193
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       67     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       42     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       22     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       17     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       86     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       49     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       14     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        7     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       20     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       82     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       12     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       29     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        7       7
6-24 months                  ki1000108-IRC              INDIA                          0                       0        3       5
6-24 months                  ki1000108-IRC              INDIA                          0                       1        2       5
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       5
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       5
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        4     192
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        8     192
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       56     192
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1      124     192
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       36     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0      224     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1      101     457
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0       85    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1       52    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      697    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      444    1278
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       46     676
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       70     676
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      250     676
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      310     676
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1200   20368
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      356   20368
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14770   20368
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     4042   20368
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0        6     204
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     204
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0      124     204
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1       68     204


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
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/841bcc92-f1df-4fbc-a726-ab4684632c63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/841bcc92-f1df-4fbc-a726-ab4684632c63/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/841bcc92-f1df-4fbc-a726-ab4684632c63/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/841bcc92-f1df-4fbc-a726-ab4684632c63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5090909    0.3766502   0.6415317
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5298013    0.4499994   0.6096033
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1451613    0.0830054   0.2073172
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1282051    0.0538282   0.2025821
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4102564    0.3008233   0.5196895
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.6065574    0.5196547   0.6934601
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2578125    0.1818510   0.3337740
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2716049    0.1745094   0.3687005
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.6030928    0.5341084   0.6720771
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5789474    0.4505177   0.7073770
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.5441860    0.4774776   0.6108945
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4838710    0.3075940   0.6601480
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8523490    0.7952520   0.9094460
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7741935    0.6698713   0.8785158
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.3854749    0.3141186   0.4568311
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3714286    0.3269961   0.4158610
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                0.5495050    0.4808738   0.6181362
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                0.5352113    0.5110141   0.5594084
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6470588    0.5333401   0.7607775
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6355932    0.5854001   0.6857864
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2941531    0.2712848   0.3170214
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2542584    0.2457790   0.2627378
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6666667    0.3586298   0.9747036
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4038462    0.3057966   0.5018958
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1636364    0.0656285   0.2616442
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2317881    0.1643194   0.2992568
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1048387    0.0507849   0.1588925
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0769231    0.0176407   0.1362055
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1666667    0.0837536   0.2495797
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2459016    0.1692977   0.3225056
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3865979    0.3179359   0.4552599
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.2807018    0.1638179   0.3975856
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3162791    0.2539934   0.3785647
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2580645    0.1037172   0.4124118
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3020134    0.2281170   0.3759098
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3064516    0.1914237   0.4214795
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.6250000    0.3873044   0.8626956
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.6034483    0.5403741   0.6665224
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1843575    0.1275057   0.2412094
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1494505    0.1166649   0.1822362
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2920792    0.2293553   0.3548032
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                0.2633190    0.2419515   0.2846866
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1323529    0.0517136   0.2129923
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1977401    0.1562001   0.2392801
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1892706    0.1693494   0.2091919
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1282835    0.1222136   0.1343534
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3333333    0.0491841   0.6174825
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0769231    0.0259323   0.1279138
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4222222    0.2774487   0.5669958
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4054054    0.3137753   0.4970355
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.2968750    0.1845760   0.4091740
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4888889    0.3852783   0.5924995
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1965812    0.1243832   0.2687792
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2368421    0.1410111   0.3326731
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3853211    0.2936479   0.4769943
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4358974    0.2797413   0.5920536
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3629630    0.2815879   0.4443380
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3333333    0.1310647   0.5356020
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8039216    0.7266013   0.8812419
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7073171    0.5675561   0.8470780
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2727273    0.1966684   0.3487861
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3107692    0.2603979   0.3611406
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                0.3795620    0.2982699   0.4608541
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                0.3891323    0.3608316   0.4174331
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6034483    0.4773679   0.7295286
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5535714    0.4952571   0.6118858
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2287918    0.1974314   0.2601522
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2148629    0.2050141   0.2247117
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.5000000    0.1324425   0.8675575
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3541667    0.2552367   0.4530966


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.5367847   0.5139635   0.5596060
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2580007   0.2499160   0.2660854
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4247788   0.3313353   0.5182222
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.2664850   0.2462507   0.2867194
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1340043   0.1282072   0.1398014
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0973451   0.0436888   0.1510015
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA                         NA                   NA                0.3881064   0.3613784   0.4148344
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2159269   0.2063541   0.2254998
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3627451   0.2672414   0.4582488


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.0406812   0.7704846   1.4056314
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.8831909   0.4294464   1.8163527
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    0                 1.4784836   1.0922415   2.0013100
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0534979   0.6628916   1.6742676
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    0                 0.9599640   0.7479296   1.2321092
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.8891646   0.6054098   1.3059150
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9083058   0.7814094   1.0558095
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.9522792   0.6108919   1.4844455
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.9635611   0.7729651   1.2011538
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    0                 0.9739881   0.8528398   1.1123458
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9822804   0.8101363   1.1910031
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8643745   0.7959043   0.9387351
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.6057692   0.3599543   1.0194527
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.4164827   0.7277880   2.7568788
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.7337278   0.2902962   1.8545076
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    0                 1.4754098   0.8203436   2.6535641
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    0                 0.7260819   0.4617247   1.1417948
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.8159393   0.4347003   1.5315309
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0146953   0.6482541   1.5882764
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    0                 0.9655172   0.6508305   1.4323599
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.5564103   0.1567991   1.9744522
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.8106560   0.5552378   1.1835706
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    0                 0.9015330   0.7166065   1.1341814
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.4940364   0.7842770   2.8461179
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.6777782   0.6041578   0.7603697
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.2307692   0.0773100   0.6888424
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9601707   0.6367864   1.4477818
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    0                 1.6467836   1.0674054   2.5406432
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2048055   0.6975873   2.0808239
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    0                 1.1312576   0.7358597   1.7391139
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9183673   0.4809191   1.7537225
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8798334   0.7062541   1.0960742
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    0                 1.1394872   0.8253190   1.5732474
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    0                 1.0252140   0.8176807   1.2854210
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9173469   0.7259626   1.1591856
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9391197   0.8154789   1.0815065
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.7083333   0.3234435   1.5512327


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0151809   -0.0981677    0.1285295
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0065474   -0.0439930    0.0308981
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1197436    0.0334695    0.2060176
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0053454   -0.0424413    0.0531321
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0054832   -0.0386133    0.0276469
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0076007   -0.0314837    0.0162824
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0229651   -0.0582401    0.0123099
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0100805   -0.0704090    0.0502479
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0127202   -0.0774815    0.0520411
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0096181   -0.1138922    0.0946560
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0361524   -0.0577940   -0.0145108
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2418879   -0.5427892    0.0590134
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0499559   -0.0373593    0.1372710
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0107793   -0.0418146    0.0202560
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0483333   -0.0207348    0.1174015
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0240481   -0.0553199    0.0072236
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0073360   -0.0284493    0.0137773
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0013041   -0.0388702    0.0414784
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                -0.0201613   -0.2502181    0.2098955
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0250515   -0.0721664    0.0220633
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0255942   -0.0845648    0.0333764
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0548509   -0.0212769    0.1309786
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0552663   -0.0741115   -0.0364211
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2359882   -0.5020718    0.0300954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0119658   -0.1338827    0.1099511
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1122159    0.0216702    0.2027617
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0158540   -0.0314754    0.0631834
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0133275   -0.0345243    0.0611794
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0039886   -0.0333812    0.0254039
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0276978   -0.0740529    0.0186573
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0270539   -0.0378418    0.0919496
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                 0.0085444   -0.0683059    0.0853946
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0413181   -0.1564115    0.0737753
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0128648   -0.0425627    0.0168330
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1372549   -0.4969132    0.2224033


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0289562   -0.2132516    0.2228108
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0472350   -0.3549992    0.1906259
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2259313    0.0423103    0.3743460
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0203125   -0.1791747    0.1860514
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0091753   -0.0661805    0.0447821
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0141649   -0.0597084    0.0294212
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0276894   -0.0714301    0.0142657
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0268532   -0.2008245    0.1219137
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0236970   -0.1517473    0.0901167
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0150886   -0.1926001    0.1360014
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1401253   -0.2274388   -0.0590229
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.5694444   -1.4971926    0.0136300
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.2338843   -0.3016611    0.5490890
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.1146010   -0.4947943    0.1688920
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2248062   -0.1683951    0.4856830
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0663306   -0.1563291    0.0166633
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0237454   -0.0944054    0.0423525
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042995   -0.1373630    0.1283174
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                -0.0333333   -0.4931856    0.2848995
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1572543   -0.4932609    0.1031457
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0960437   -0.3412260    0.1043182
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.2930007   -0.2516459    0.6006475
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.4124222   -0.5608111   -0.2781409
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.4242424   -6.5989633   -0.5430310
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0291667   -0.3737186    0.2289658
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2743056    0.0154683    0.4650935
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0746300   -0.1766821    0.2722676
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0334318   -0.0944337    0.1463584
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0111111   -0.0964017    0.0675446
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0356827   -0.0976993    0.0228301
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0902455   -0.1540534    0.2828294
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                 0.0220155   -0.1974698    0.2012712
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0735027   -0.2993246    0.1130714
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0595795   -0.2064182    0.0693867
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3783784   -1.8501504    0.3333941
