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
![](/tmp/7e6e2084-37c4-4656-bc26-d6930671071c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e6e2084-37c4-4656-bc26-d6930671071c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e6e2084-37c4-4656-bc26-d6930671071c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e6e2084-37c4-4656-bc26-d6930671071c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5513133    0.4275953   0.6750314
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5144984    0.4367742   0.5922227
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1461008    0.0850233   0.2071782
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1279621    0.0549930   0.2009311
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5551532    0.4561008   0.6542056
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.6457663    0.5644910   0.7270416
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2473100    0.1743376   0.3202823
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2894855    0.1982844   0.3806866
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5961915    0.5286468   0.6637362
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.6050882    0.4893832   0.7207932
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.5449060    0.4783307   0.6114813
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4788721    0.3085525   0.6491917
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8548783    0.8008358   0.9089208
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7772711    0.6812162   0.8733259
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.4466844    0.3865374   0.5068313
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3678556    0.3250589   0.4106523
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                0.5647137    0.5137645   0.6156629
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                0.5356228    0.5117813   0.5594643
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6470588    0.5333401   0.7607775
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6355932    0.5854001   0.6857864
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2845171    0.2667946   0.3022396
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2535915    0.2452382   0.2619448
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6666667    0.3586298   0.9747036
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4038462    0.3057966   0.5018958
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1636364    0.0656285   0.2616442
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2317881    0.1643194   0.2992568
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1048387    0.0507849   0.1588925
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0769231    0.0176407   0.1362055
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1598211    0.0864297   0.2332125
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2475934    0.1739891   0.3211978
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3857443    0.3171230   0.4543656
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.2831757    0.1663429   0.4000085
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3162791    0.2539934   0.3785647
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2580645    0.1037172   0.4124118
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3157409    0.2444627   0.3870191
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3383178    0.2349043   0.4417312
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.5752601    0.3614631   0.7890570
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.6034668    0.5407599   0.6661737
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2397798    0.1883813   0.2911782
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1465474    0.1147094   0.1783855
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                0.3006569    0.2446477   0.3566660
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                0.2624067    0.2412421   0.2835713
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1396443    0.0627820   0.2165066
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1975920    0.1561477   0.2390363
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1704606    0.1557792   0.1851420
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1292437    0.1232517   0.1352356
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3333333    0.0491841   0.6174825
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0769231    0.0259323   0.1279138
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4177830    0.2842519   0.5513141
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4059650    0.3177319   0.4941980
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.2944300    0.1891191   0.3997408
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4955401    0.3970591   0.5940211
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1888311    0.1185269   0.2591354
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2162439    0.1261988   0.3062890
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3853614    0.2937146   0.4770081
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4358647    0.2799152   0.5918142
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3629630    0.2815879   0.4443380
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3333333    0.1310647   0.5356020
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7947624    0.7218665   0.8676584
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5879130    0.4639522   0.7118738
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2121422    0.1478962   0.2763882
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.2910878    0.2425256   0.3396500
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                0.3965531    0.3220435   0.4710627
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                0.3871630    0.3590031   0.4153229
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6035079    0.4775546   0.7294612
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5535774    0.4952735   0.6118813
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2241980    0.2000605   0.2483355
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2150094    0.2052529   0.2247659
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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9332233   0.7203284   1.2090398
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.8758479   0.4340869   1.7671796
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    0                 1.1632217   0.9395119   1.4401998
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1705371   0.7749039   1.7681639
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    0                 1.0149225   0.8198894   1.2563495
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.8788160   0.6046495   1.2772979
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9092184   0.7943756   1.0406639
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.9522792   0.6108919   1.4844455
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.8235246   0.6968514   0.9732245
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    0                 0.9484856   0.8615682   1.0441715
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9822804   0.8101363   1.1910031
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8913050   0.8344102   0.9520792
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.6057692   0.3599543   1.0194527
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.4164827   0.7277880   2.7568788
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.7337278   0.2902962   1.8545076
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    0                 1.5491916   0.8970659   2.6753827
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    0                 0.7341022   0.4685104   1.1502541
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.8159393   0.4347003   1.5315309
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0715044   0.7346983   1.5627118
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    0                 1.0490330   0.7149306   1.5392686
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.5564103   0.1567991   1.9744522
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.6111752   0.4575907   0.8163085
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    0                 0.8727780   0.7160557   1.0638019
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.4149667   0.7853453   2.5493635
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.7582027   0.6901711   0.8329403
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.2307692   0.0773100   0.6888424
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9717126   0.6716375   1.4058556
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    0                 1.6830492   1.1322040   2.5018943
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1451709   0.6526335   2.0094223
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    0                 1.1310545   0.7361695   1.7377578
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9183673   0.4809191   1.7537225
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7397343   0.5895867   0.9281193
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    0                 1.3721353   0.9762009   1.9286556
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    0                 0.9763208   0.8006140   1.1905891
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9172662   0.7260962   1.1587685
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9590154   0.8582909   1.0715605
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.7083333   0.3234435   1.5512327


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0270415   -0.1297035    0.0756204
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0074869   -0.0440326    0.0290588
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0251532   -0.0983540    0.0480476
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0158479   -0.0278683    0.0595641
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0014180   -0.0281270    0.0309630
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0083206   -0.0313864    0.0147451
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0254944   -0.0589240    0.0079352
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0293602   -0.3028367    0.2441163
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0712900   -0.1203832   -0.0221969
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0279290   -0.0752289    0.0193710
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0096181   -0.1138922    0.0946560
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0265164   -0.0431190   -0.0099139
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2418879   -0.5427892    0.0590134
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0499559   -0.0373593    0.1372710
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0107793   -0.0418146    0.0202560
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0551789   -0.0075036    0.1178615
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0231945   -0.0544004    0.0080114
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0073360   -0.0284493    0.0137773
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0124234   -0.0512963    0.0264496
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                 0.0295786   -0.1766605    0.2358178
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1516214   -0.5893715    0.2861288
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0804738   -0.1216266   -0.0393210
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0341718   -0.0861945    0.0178508
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0475595   -0.0251914    0.1203104
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0364563   -0.0502141   -0.0226985
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2359882   -0.5020718    0.0300954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0075266   -0.1161506    0.1010974
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1146610    0.0313568    0.1979651
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0236041   -0.0235749    0.0707831
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0132873   -0.0345125    0.0610871
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0039886   -0.0333812    0.0254039
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0185387   -0.0636231    0.0265458
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0876390    0.0324960    0.1427820
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                -0.0084467   -0.0784734    0.0615801
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0413777   -0.1563398    0.0735844
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0082711   -0.0308840    0.0143418
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1372549   -0.4969132    0.2224033


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0515792   -0.2669011    0.1271468
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0540128   -0.3536399    0.1792921
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0474589   -0.1955001    0.0822500
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0602221   -0.1216376    0.2125954
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0023728   -0.0483115    0.0506066
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0155066   -0.0594541    0.0266179
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0307390   -0.0723398    0.0092480
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0478571   -0.6004468    0.3139387
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1899071   -0.3309114   -0.0638416
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0520301   -0.1441535    0.0326759
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0150886   -0.1926001    0.1360014
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1027765   -0.1694685   -0.0398878
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.5694444   -1.4971926    0.0136300
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.2338843   -0.3016611    0.5490890
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.1146010   -0.4947943    0.1688920
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2566462   -0.0866110    0.4914695
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0639760   -0.1537595    0.0188206
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0237454   -0.0944054    0.0423525
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0409583   -0.1782310    0.0803212
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                 0.0489033   -0.3611101    0.3354066
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.7377399   -4.5662156    0.4574878
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.5051522   -0.7993470   -0.2590584
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.1282318   -0.3415287    0.0511519
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.2540521   -0.2493062    0.5546022
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.2720532   -0.3802884   -0.1723053
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.4242424   -6.5989633   -0.5430310
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0183460   -0.3207449    0.2148154
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2802823    0.0461110    0.4569667
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1111120   -0.1393359    0.3065066
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0333308   -0.0943853    0.1461423
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0111111   -0.0964017    0.0675446
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0238831   -0.0841941    0.0330729
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.2923433    0.0841719    0.4531964
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                -0.0217638   -0.2191466    0.1436623
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0736088   -0.2991480    0.1127756
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0383051   -0.1485970    0.0613962
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3783784   -1.8501504    0.3333941
