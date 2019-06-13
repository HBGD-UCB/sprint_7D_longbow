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
![](/tmp/8624e188-df55-46db-9bdd-fa9dda553fce/7f20fefc-92f3-47d5-abcd-4efc09432bd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8624e188-df55-46db-9bdd-fa9dda553fce/7f20fefc-92f3-47d5-abcd-4efc09432bd7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.5163099   0.4382455   0.5943743
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.1475732   0.0714059   0.2237404
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.4456528   0.3328190   0.5584865
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2630674   0.1785545   0.3475803
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5587135   0.4516487   0.6657783
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.4926904   0.3179487   0.6674321
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7787266   0.6705554   0.8868977
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.7282170   0.5763313   0.8801027
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.3889940   0.3402363   0.4377517
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                0.5527099   0.5245792   0.5808407
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.7258259   0.6673232   0.7843287
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2634837   0.2511080   0.2758594
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.1629224   0.0638593   0.2619854
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0782587   0.0173526   0.1391649
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1692880   0.0867934   0.2517826
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.2873991   0.1677399   0.4070584
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.2546186   0.0958138   0.4134233
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3637602   0.2563524   0.4711679
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.7167893   0.6585368   0.7750419
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.2630258   0.0415842   0.4844674
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.1431914   0.1111952   0.1751875
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                0.2734236   0.2461406   0.3007065
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.1286291   0.0469189   0.2103393
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1308906   0.1245740   0.1372071
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.5498595   0.4500690   0.6496500
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.2718859   0.1656075   0.3781644
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.1228868   0.0572859   0.1884876
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.3331141   0.2150438   0.4511844
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.4171030   0.2226297   0.6115764
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6839940   0.5274440   0.8405440
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                0.3257302   0.2532740   0.3981865
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                0.3864682   0.3305089   0.4424275
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.5538223   0.4954178   0.6122269
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2236499   0.2034457   0.2438541


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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.0154208   0.9435044   1.0928189
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             optimal           0.9392891   0.6443430   1.3692458
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             optimal           1.1892666   0.9788162   1.4449649
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             optimal           1.0003441   0.8022655   1.2473280
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             optimal           1.0696172   0.9228249   1.2397596
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.0890924   0.7831039   1.5146422
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0650515   0.9517497   1.1918414
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           0.8424645   0.6901254   1.0284310
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           0.9650389   0.8943539   1.0413104
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         observed             optimal           0.9711871   0.9411636   1.0021683
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             optimal           0.8782282   0.8223575   0.9378946
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           0.9791903   0.9448840   1.0147422
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.3110063   0.7649928   2.2467368
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.2019028   0.6323557   2.2844268
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             optimal           1.2700251   0.8521254   1.8928713
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             optimal           1.2614854   0.8683710   1.8325641
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.2133565   0.6740834   2.1840529
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8338393   0.6732489   1.0327355
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             optimal           0.8438166   0.7908245   0.9003596
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           0.7813737   0.4262552   1.4323461
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           1.1125390   0.9868612   1.2542220
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         observed             optimal           0.9746234   0.9136057   1.0397163
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.4553767   0.8019342   2.6412657
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.0237889   1.0055716   1.0423361
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.7461114   0.6451506   0.8628716
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             optimal           1.5046416   1.0951635   2.0672222
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             optimal           1.7287073   1.1124403   2.6863725
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             optimal           1.1967331   0.9088106   1.5758730
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           0.8606372   0.5597272   1.3233167
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1348400   0.9363949   1.3753405
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     observed             optimal           0.9203357   0.7699708   1.1000648
6-24 months                  ki1101329-Keneba          GAMBIA                         observed             optimal           1.0042391   0.8856956   1.1386486
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.0150009   0.9719888   1.0599164
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           0.9654686   0.8921820   1.0447751


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0079619   -0.0299541    0.0458779
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                -0.0089593   -0.0647303    0.0468117
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0843472   -0.0011735    0.1698680
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0000905   -0.0579573    0.0581383
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0388961   -0.0430687    0.1208609
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0438950   -0.1184615    0.2062514
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0506573   -0.0363353    0.1376499
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.1147200   -0.2563572    0.0269171
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0135997   -0.0432053    0.0160060
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0159252   -0.0332431    0.0013927
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                -0.0883852   -0.1344654   -0.0423049
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0054830   -0.0148778    0.0039117
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0506699   -0.0376058    0.1389456
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0158007   -0.0348008    0.0664021
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0457120   -0.0224877    0.1139117
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0751507   -0.0321897    0.1824911
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0543245   -0.0952946    0.2039437
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0604426   -0.1391573    0.0182720
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                -0.1119506   -0.1527642   -0.0711370
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.0575044   -0.2287314    0.1137227
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.0161146   -0.0010544    0.0332837
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0069386   -0.0246244    0.0107473
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0585747   -0.0185449    0.1356943
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0031137    0.0007716    0.0054559
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.1396031   -0.2121036   -0.0671025
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.1372050    0.0502648    0.2241451
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0895485    0.0316875    0.1474095
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0655346   -0.0258196    0.1568887
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.0581287   -0.2371843    0.1209270
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0922298   -0.0376500    0.2221095
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0259491   -0.0840220    0.0321238
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0016383   -0.0469040    0.0501805
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0083079   -0.0156505    0.0322662
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0077229   -0.0253802    0.0099343


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0151866   -0.0598785    0.0849353
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                -0.0646350   -0.5519683    0.2696709
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.1591457   -0.0216422    0.3079417
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0003440   -0.2464701    0.1982863
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0650861   -0.0836292    0.1933920
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0818042   -0.2769698    0.3397781
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0610783   -0.0506964    0.1609622
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.1869937   -0.4490119    0.0276450
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0362277   -0.1181257    0.0396716
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0296677   -0.0625145    0.0021636
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                -0.1386563   -0.2160162   -0.0662178
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0212519   -0.0583310    0.0145280
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.2372272   -0.3072018    0.5549100
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.1679859   -0.5813885    0.5622534
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.2126140   -0.1735361    0.4717021
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.2072837   -0.1515815    0.4543165
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.1758399   -0.4834959    0.5421356
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1992718   -0.4853349    0.0316978
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                -0.1850917   -0.2645031   -0.1106673
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                -0.2797973   -1.3460126    0.3018447
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                 0.1011551   -0.0133137    0.2026930
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         optimal              NA                -0.0260373   -0.0945641    0.0381992
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.3128926   -0.2469852    0.6213936
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0232361    0.0055408    0.0406166
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.3402825   -0.5500256   -0.1589209
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.3353899    0.0868944    0.5162591
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.4215331    0.1010753    0.6277508
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.1643918   -0.1003393    0.3654311
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.1619298   -0.7865846    0.2443230
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1188185   -0.0679255    0.2729073
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     optimal              NA                -0.0865600   -0.2987505    0.0909627
6-24 months                  ki1101329-Keneba          GAMBIA                         optimal              NA                 0.0042212   -0.1290560    0.1217659
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0147792   -0.0288184    0.0565294
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0357665   -0.1208475    0.0428562
