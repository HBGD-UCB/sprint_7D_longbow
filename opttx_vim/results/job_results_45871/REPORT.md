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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       71     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       80     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       27     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       68     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       18     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       48     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       74     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       46     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       32     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       59     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0       95     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       24     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       33     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       77     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      117     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       16     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       15     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       98     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      117     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       14     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       48     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       22     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      127     211
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        3      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        7      10
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       30     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      202     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       14     248
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      286     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1      169     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      110     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       69     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      759    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      874    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0       91    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      111    1835
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      129     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      225     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       24     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       44     422
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11952   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     4075   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1171   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      488   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0       62     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0        3     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      116     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       35     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       72     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        6     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      111     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       92     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       30     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0       65     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       13     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       77     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      118     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       41     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       16     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      119     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       75     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       23     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        8     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      147     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       68     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       43     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       19     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      104     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       45     211
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        5      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      10
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       92     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1      140     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        6     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       10     248
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      387     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       68     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      146     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       33     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0     1203    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      430    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      143    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1       59    1835
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      284     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       59     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1        9     422
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13971   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2056   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1345   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      314   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       96     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0        6     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       66     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       45     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       26     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       19     156
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       64     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        4     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0       95     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        5     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       46     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       44     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       45     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       19     154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       58     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1       18     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0       94     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       23     193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       22     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       17     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       67     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       42     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       14     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        7     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       86     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       49     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       12     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       29     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       20     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       82     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        7       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       7
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       5
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       5
6-24 months                  ki1000108-IRC              INDIA                          0                       0        3       5
6-24 months                  ki1000108-IRC              INDIA                          0                       1        2       5
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       28      96
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       62      96
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      96
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        4      96
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0      224     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1      101     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       36     457
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      697    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      444    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0       85    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1       52    1278
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      125     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      155     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       23     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       35     338
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7385   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2021   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0      600   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      178   10184
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0       62     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1       34     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0        3     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     102


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
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/b0cbdfc7-0488-4553-8288-55f2bc8779c1/4575da27-dd86-41a4-80f2-87248e0b2353/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0cbdfc7-0488-4553-8288-55f2bc8779c1/4575da27-dd86-41a4-80f2-87248e0b2353/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.5589191   0.4777781   0.6400601
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.1445603   0.0713363   0.2177844
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.4524368   0.3411056   0.5637680
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2592083   0.1755574   0.3428593
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5301721   0.4263703   0.6339740
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.5299425   0.3615924   0.6982926
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7621742   0.6515469   0.8728014
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.7282170   0.5763313   0.8801027
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.3632118   0.3196349   0.4067887
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                0.5447501   0.5024144   0.5870859
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.7236088   0.6715856   0.7756320
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2556125   0.2434351   0.2677899
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.1636724   0.0651999   0.2621448
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0777545   0.0172614   0.1382476
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1609292   0.0804692   0.2413893
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.2826940   0.1631570   0.4022309
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.3117319   0.1563687   0.4670952
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3158681   0.2146155   0.4171207
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.7478135   0.6918516   0.8037753
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.2630258   0.0415842   0.4844674
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.1438731   0.1117837   0.1759624
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                0.2623556   0.2410926   0.2836185
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.1288009   0.0467948   0.2108071
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1305214   0.1243668   0.1366760
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4714952   0.3523514   0.5906390
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.2699453   0.1676570   0.3722335
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.0993220   0.0389771   0.1596670
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.3418699   0.2217968   0.4619431
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.4206471   0.2141867   0.6271075
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6645137   0.5075392   0.8214882
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.3056497   0.2314337   0.3798658
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                0.3877301   0.3317179   0.4437423
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.5534276   0.4950661   0.6117891
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2233489   0.2051114   0.2415864


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.6134969   0.5286303   0.6983635
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         observed             NA                0.5367847   0.5139635   0.5596060
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2580007   0.2499160   0.2660854
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         observed             NA                0.2664850   0.2462507   0.2867194
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.1340043   0.1282072   0.1398014
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA                         observed             NA                0.3881064   0.3613784   0.4148344
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2159269   0.2063541   0.2254998


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.9380103   0.8574050   1.0261934
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             optimal           0.9588651   0.6560994   1.4013458
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             optimal           1.1714343   0.9702733   1.4143007
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             optimal           1.0152370   0.8091394   1.2738301
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             optimal           1.1271992   0.9646864   1.3170891
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.0125351   0.7538219   1.3600391
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0881816   0.9696093   1.2212539
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           0.8424645   0.6901254   1.0284310
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           1.0335410   0.9735159   1.0972672
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         observed             optimal           0.9853779   0.9228450   1.0521480
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             optimal           0.8809190   0.8318065   0.9329313
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.0093429   0.9732374   1.0467879
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.3049988   0.7660346   2.2231655
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.2096980   0.6360491   2.3007173
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             optimal           1.3359909   0.8827556   2.0219319
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             optimal           1.2824816   0.8773687   1.8746498
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           0.9910538   0.6225174   1.5777671
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9602664   0.7520000   1.2262122
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             optimal           0.8088096   0.7539537   0.8676566
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           0.7813737   0.4262552   1.4323461
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           1.1072676   0.9827438   1.2475699
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         observed             optimal           1.0157399   0.9894788   1.0426981
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.4534353   0.7999158   2.6408707
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.0266847   1.0099177   1.0437301
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.8701178   0.7256335   1.0433711
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             optimal           1.5154587   1.1141794   2.0612614
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             optimal           2.1388536   1.2624885   3.6235538
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             optimal           1.1660828   0.8886258   1.5301705
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           0.8533861   0.5431761   1.3407580
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1681080   0.9575326   1.4249921
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           0.9807997   0.8047169   1.1954119
6-24 months                  ki1101329-Keneba          GAMBIA                         observed             optimal           1.0009705   0.8834722   1.1340956
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.0157249   0.9725689   1.0607958
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           0.9667696   0.8997630   1.0387662


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0346472   -0.0842950    0.0150005
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                -0.0059465   -0.0607881    0.0488952
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0775632   -0.0066432    0.1617696
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0039496   -0.0548650    0.0627641
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0674374   -0.0145756    0.1494505
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0066429   -0.1497183    0.1630040
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0672097   -0.0196490    0.1540684
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.1147200   -0.2563572    0.0269171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.0121825   -0.0095106    0.0338756
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0079654   -0.0436789    0.0277481
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                -0.0861680   -0.1256034   -0.0467327
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0023882   -0.0069246    0.0117009
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0499199   -0.0378273    0.1376671
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0163050   -0.0340667    0.0666766
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0540708   -0.0136446    0.1217862
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0798559   -0.0274578    0.1871695
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.0027888   -0.1477355    0.1421579
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0125506   -0.0898400    0.0647388
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                -0.1429748   -0.1871463   -0.0988033
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.0575044   -0.2287314    0.1137227
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.0154329   -0.0017280    0.0325939
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0041295   -0.0027407    0.0109996
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0584029   -0.0189449    0.1357506
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0034829    0.0013370    0.0056288
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0612388   -0.1468347    0.0243571
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.1391456    0.0547652    0.2235261
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.1131132    0.0539586    0.1722678
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0567787   -0.0357451    0.1493026
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.0616727   -0.2516457    0.1283003
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1117101   -0.0183499    0.2417701
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0058686   -0.0663573    0.0546202
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0003763   -0.0480370    0.0487896
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0087026   -0.0153038    0.0327090
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0074220   -0.0234446    0.0086006


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0660864   -0.1663100    0.0255248
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                -0.0428996   -0.5241592    0.2864003
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.1463456   -0.0306374    0.2929368
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0150083   -0.2358810    0.2149660
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.1128453   -0.0366063    0.2407499
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0123799   -0.3265732    0.2647270
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0810357   -0.0313432    0.1811694
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.1869937   -0.4490119    0.0276450
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.0324526   -0.0272046    0.0886450
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0148391   -0.0836056    0.0495634
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                -0.1351781   -0.2022027   -0.0718903
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0092564   -0.0274985    0.0446966
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.2337158   -0.3054240    0.5501909
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.1733474   -0.5722057    0.5653530
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.2514919   -0.1328163    0.5054235
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.2202617   -0.1397716    0.4665670
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.0090270   -0.6063807    0.3661929
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0413777   -0.3297872    0.1844805
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                -0.2363850   -0.3263414   -0.1525297
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.2797973   -1.3460126    0.3018447
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.0968760   -0.0175592    0.1984417
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0154960   -0.0106331    0.0409496
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.3119749   -0.2501317    0.6213370
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0259912    0.0098203    0.0418979
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.1492696   -0.3781062    0.0415683
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.3401338    0.1024785    0.5148602
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.5324598    0.2079136    0.7240278
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.1424280   -0.1253330    0.3464781
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.1718026   -0.8410234    0.2541533
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1439148   -0.0443509    0.2982417
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0195761   -0.2426731    0.1634683
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0009695   -0.1318975    0.1182401
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0154814   -0.0282048    0.0573115
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0343726   -0.1114037    0.0373195
