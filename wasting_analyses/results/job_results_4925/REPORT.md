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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        impfloor    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        6     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       38     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       73     121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        6      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1       17      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        6     173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        9     173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       61     173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       97     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0       10      87
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       36      87
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        9      87
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       32      87
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4      33
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       22      33
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2      33
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5      33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       12      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       62      77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        8      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       36      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       78     225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      147     225
0-24 months   ki1000108-IRC              INDIA                          0                     0        0     308
0-24 months   ki1000108-IRC              INDIA                          0                     1        0     308
0-24 months   ki1000108-IRC              INDIA                          1                     0      128     308
0-24 months   ki1000108-IRC              INDIA                          1                     1      180     308
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       33     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1       24     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      168     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      193     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       24     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       14     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      104     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      165     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       31     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       55     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       86     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      139     311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      344     890
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      406     890
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       78     890
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       62     890
0-24 months   ki1114097-CONTENT          PERU                           0                     0        0       9
0-24 months   ki1114097-CONTENT          PERU                           0                     1        0       9
0-24 months   ki1114097-CONTENT          PERU                           1                     0        2       9
0-24 months   ki1114097-CONTENT          PERU                           1                     1        7       9
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     8121   15092
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     5866   15092
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      587   15092
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      518   15092
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     2721    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      942    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      267    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      115    4045
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0        2      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        2      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       10      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       45      59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1       13      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0        1      78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1        4      78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       21      78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1       52      78
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0        3      41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       13      41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        5      41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1       20      41
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        8      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        2      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       23      27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       11      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39     141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      102     141
0-6 months    ki1000108-IRC              INDIA                          0                     0        0     187
0-6 months    ki1000108-IRC              INDIA                          0                     1        0     187
0-6 months    ki1000108-IRC              INDIA                          1                     0       72     187
0-6 months    ki1000108-IRC              INDIA                          1                     1      115     187
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0       12     221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1       17     221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       52     221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1      140     221
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0        7     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       32     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      132     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        4     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       54     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       17     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      123     198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       86     284
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1      148     284
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       30     284
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       20     284
0-6 months    ki1114097-CONTENT          PERU                           0                     0        0       4
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0       4
0-6 months    ki1114097-CONTENT          PERU                           1                     0        0       4
0-6 months    ki1114097-CONTENT          PERU                           1                     1        4       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2856    9446
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     5866    9446
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      206    9446
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      518    9446
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      426    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      540    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0       58    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       72    1096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        4      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        2      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       28      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       28      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        4       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        5      95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        5      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       40      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       45      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0        7      46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       23      46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4      46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       12      46
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4      23
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       14      23
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2      23
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        3      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        9      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       39      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        7      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0      84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0      84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39      84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       45      84
6-24 months   ki1000108-IRC              INDIA                          0                     0        0     121
6-24 months   ki1000108-IRC              INDIA                          0                     1        0     121
6-24 months   ki1000108-IRC              INDIA                          1                     0       56     121
6-24 months   ki1000108-IRC              INDIA                          1                     1       65     121
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       21     197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1        7     197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      116     197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       53     197
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       17     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       72     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       33     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       27     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       69     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       16     113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      258     606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      258     606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       48     606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       42     606
6-24 months   ki1114097-CONTENT          PERU                           0                     0        0       5
6-24 months   ki1114097-CONTENT          PERU                           0                     1        0       5
6-24 months   ki1114097-CONTENT          PERU                           1                     0        2       5
6-24 months   ki1114097-CONTENT          PERU                           1                     1        3       5
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     5265    5646
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0    5646
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      381    5646
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0    5646
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     2295    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      402    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      209    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       43    2949


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f43de2ad-146c-4623-9a16-f82da3a99033/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f43de2ad-146c-4623-9a16-f82da3a99033/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f43de2ad-146c-4623-9a16-f82da3a99033/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f43de2ad-146c-4623-9a16-f82da3a99033/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.6000000   0.3636292   0.8363708
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.6139241   0.5287779   0.6990702
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.7826087   0.6870003   0.8782171
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.7804878   0.6404037   0.9205719
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.6231134   0.5201875   0.7260394
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.5421625   0.4886852   0.5956397
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3704649   0.2314936   0.5094362
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.6130922   0.5524842   0.6737003
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8590768   0.7952413   0.9229123
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6685185   0.6080773   0.7289597
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5334158   0.4808239   0.5860077
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2169759   0.1292984   0.3046535
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4215123   0.4100952   0.4329294
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4234744   0.3952779   0.4516708
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2597233   0.2396857   0.2797608
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.3213969   0.2602917   0.3825020
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.6224641   0.4819099   0.7630183
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7296545   0.6673066   0.7920024
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4495198   0.8504802
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.8048780   0.7444925   0.8652636
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.6421777   0.5568598   0.7274956
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4922862   0.3674724   0.6171000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.6746132   0.6609825   0.6882439
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.5835379   0.5577240   0.6093518
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.5697134   0.5263795   0.6130473
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.7324029   0.6632437   0.8015621
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.5294118   0.4074100   0.6514135
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4950271   0.4317164   0.5583377
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3398825   0.2263065   0.4534584
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1495293   0.1313065   0.1677521
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1972695   0.1439121   0.2506268


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.6127168   0.5323061   0.6931274
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.7816092   0.6987929   0.8644255
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5191388   0.4683286   0.5699489
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5258427   0.4754454   0.5762400
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4230056   0.4118653   0.4341458
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2613103   0.2419607   0.2806599
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7104072   0.6505603   0.7702542
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5915493   0.5100380   0.6730606
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6758416   0.6624927   0.6891906
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3045685   0.2390070   0.3701301
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4950495   0.4335437   0.5565553
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1508986   0.1332882   0.1685090


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA        1                    0                 1.0232068   0.6738891   1.5535969
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    0                 0.9972900   0.8019800   1.2401648
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.8700863   0.7178053   1.0546734
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.6549267   1.1227482   2.4393559
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.7781824   0.6916869   0.8754942
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.4067670   0.2684137   0.6164342
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.0046549   0.9353778   1.0790628
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.2374588   1.0079507   1.5192254
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.1722033   0.9215221   1.4910773
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.2382739   0.9014868   1.7008816
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 0.7665887   0.5768368   1.0187598
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8649962   0.8244180   0.9075716
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.2855638   1.1390040   1.4509820
6-24 months   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        1                    0                 1.0588235   0.5250494   2.1352417
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2544379   0.5807596   2.7095797
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.6865937   0.4820475   0.9779344
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.3192699   0.9805081   1.7750727


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0127168   -0.2167752    0.2422087
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0009995   -0.0812049    0.0792059
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1039747   -0.2007302   -0.0072192
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.2125970    0.0793632    0.3458308
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2352826   -0.2967867   -0.1737785
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0075731   -0.0308070    0.0156608
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0014933   -0.0016729    0.0046595
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0015870   -0.0054862    0.0086602
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0879431   -0.0411967    0.2170829
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1380435   -0.0488204    0.3249074
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0506284   -0.0916634   -0.0095935
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0012284   -0.0024605    0.0049172
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0113192   -0.0269120    0.0042735
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0263158   -0.2893065    0.3419381
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0545685   -0.1147328    0.2238699
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0000224   -0.0270420    0.0270869
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0013693   -0.0044493    0.0071880


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0207547   -0.4351619    0.3318375
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0012788   -0.1093840    0.0962920
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2002830   -0.4062197   -0.0245052
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.3646217    0.0912622    0.5557512
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.3771798   -0.4975975   -0.2664446
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0144018   -0.0597775    0.0290311
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0035302   -0.0039786    0.0109828
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0060732   -0.0213320    0.0327430
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1237925   -0.0781720    0.2879248
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1751724   -0.1014940    0.3823475
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0855862   -0.1602024   -0.0157687
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0018176   -0.0036535    0.0072587
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0202710   -0.0487386    0.0074239
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0500000   -0.7852745    0.4944755
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1791667   -0.6218475    0.5845680
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0000453   -0.0561460    0.0532471
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0090745   -0.0301966    0.0468486
