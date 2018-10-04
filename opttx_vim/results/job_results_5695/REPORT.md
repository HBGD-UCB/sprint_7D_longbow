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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/189e209e-29fa-4a5d-8087-0b3a0fc8edcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/189e209e-29fa-4a5d-8087-0b3a0fc8edcd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.5139474   0.4362394   0.5916555
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0649445   0.0150955   0.1147935
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.4398824   0.3461402   0.5336247
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2451100   0.1715899   0.3186300
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5960125   0.5277703   0.6642546
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.5016583   0.3339334   0.6693832
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6941053   0.5944961   0.7937146
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.6105507   0.5290880   0.6920134
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.3588686   0.3172023   0.4005350
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                0.5113117   0.4859143   0.5367092
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.6298626   0.5514431   0.7082820
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2406653   0.2321695   0.2491611
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.4034255   0.3053760   0.5014749
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.1607027   0.0626926   0.2587128
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0755073   0.0162244   0.1347902
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1571448   0.0859403   0.2283493
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.2830128   0.1661806   0.3998451
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.2607431   0.1063933   0.4150929
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3102843   0.2068911   0.4136774
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.6096127   0.5375143   0.6817112
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.1975051   0.1407225   0.2542876
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.1436569   0.1116335   0.1756803
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                0.2631069   0.2419412   0.2842726
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.0906219   0.0322942   0.1489496
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1268491   0.1208158   0.1328824
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.0768662   0.0258756   0.1278569
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.3050632   0.2214026   0.3887238
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.2950211   0.1897524   0.4002897
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.0647372   0.0170139   0.1124604
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.4020185   0.2708675   0.5331695
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.3436098   0.1412995   0.5459200
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6816223   0.5573845   0.8058601
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.2654071   0.1994300   0.3313842
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                0.3667068   0.3388271   0.3945866
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.5552307   0.4690968   0.6413647
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1988269   0.1880501   0.2096036
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.3912695   0.2508578   0.5316813


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.5234942   0.4551299   0.5918584
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.1395821   0.0918124   0.1873518
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             NA                0.5305428   0.4611988   0.5998867
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2613898   0.2015470   0.3212326
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             NA                0.5980452   0.5372582   0.6588322
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.5379110   0.4754701   0.6003519
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8275140   0.7766364   0.8783916
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.6124594   0.5275928   0.6973260
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.3758184   0.3380966   0.4135403
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         observed             NA                0.5366459   0.5138246   0.5594672
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.6375226   0.5916010   0.6834441
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2590162   0.2509315   0.2671008
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.4240820   0.3306386   0.5175255
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.2134462   0.1573430   0.2695495
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.0940084   0.0536531   0.1343638
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             NA                0.2187495   0.1616706   0.2758284
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             NA                0.3629377   0.3033461   0.4225293
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3090319   0.2511742   0.3668896
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3024483   0.2402749   0.3646218
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             NA                0.6093101   0.5483414   0.6702787
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.2048887   0.1379210   0.2718563
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.1587620   0.1302531   0.1872710
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         observed             NA                0.2673573   0.2471230   0.2875917
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.1880276   0.1507665   0.2252886
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.1351710   0.1293739   0.1409681
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.0975909   0.0439345   0.1512473
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.4116410   0.3342053   0.4890768
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             NA                0.4103365   0.3324302   0.4882428
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2134687   0.1556120   0.2713255
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             NA                0.3899100   0.3107604   0.4690596
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3597629   0.2842447   0.4352811
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7798436   0.7112941   0.8483931
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.3010941   0.2590423   0.3431459
6-24 months                  ki1101329-Keneba          GAMBIA                         observed             NA                0.3883344   0.3616065   0.4150624
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.5626891   0.5097198   0.6156584
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2162277   0.2066548   0.2258006
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.3619278   0.2664241   0.4574315


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.9817634   0.9127318   1.0560161
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          0.4652783   0.2361345   0.9167823
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              observed          0.8291178   0.7062051   0.9734230
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              observed          0.9377181   0.7823013   1.1240109
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              observed          0.9966010   0.9460962   1.0498020
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          0.9326047   0.6829475   1.2735260
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8387838   0.7526759   0.9347426
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          0.9968835   0.9766684   1.0175171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          0.9548990   0.9024664   1.0103779
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              observed          0.9527916   0.9302837   0.9758441
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.9879848   0.8935796   1.0923637
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          0.9291517   0.9150634   0.9434569
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          0.9512911   0.8935402   1.0127745
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.7528953   0.4387182   1.2920625
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          0.8031974   0.4206090   1.5337902
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              observed          0.7183779   0.4934851   1.0457596
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              observed          0.7797834   0.5386631   1.1288358
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          0.8437415   0.4831172   1.4735552
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0259083   0.7736840   1.3603587
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              observed          1.0004967   0.9455544   1.0586315
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          0.9639628   0.8681546   1.0703443
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          0.9048567   0.8035455   1.0189412
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              observed          0.9841023   0.9599706   1.0088405
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.4819606   0.2650167   0.8764958
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          0.9384347   0.9234737   0.9536380
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          0.7876375   0.5678788   1.0924387
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.7410904   0.6199511   0.8859004
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              observed          0.7189735   0.5428554   0.9522293
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              observed          0.3032630   0.1547902   0.5941490
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              observed          1.0310546   0.7974549   1.3330831
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          0.9551005   0.5515400   1.6539454
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8740500   0.7536142   1.0137328
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          0.8814756   0.7157811   1.0855265
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              observed          0.9443068   0.9170639   0.9723590
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.9867451   0.8735416   1.1146189
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          0.9195255   0.8927118   0.9471447
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          1.0810707   0.7722618   1.5133649
