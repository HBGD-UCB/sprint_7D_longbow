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
![](/tmp/8b39b1a1-5f3a-4ffa-947d-fd174bfea8af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b39b1a1-5f3a-4ffa-947d-fd174bfea8af/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b39b1a1-5f3a-4ffa-947d-fd174bfea8af/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b39b1a1-5f3a-4ffa-947d-fd174bfea8af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.6000000   0.3636292   0.8363708
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.6139241   0.5287779   0.6990702
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.7826087   0.6870003   0.8782171
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.7804878   0.6404037   0.9205719
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4237736   0.2843228   0.5632245
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.5341850   0.4798749   0.5884952
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3705693   0.2315733   0.5095653
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.6130776   0.5524698   0.6736853
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8687395   0.8107749   0.9267042
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6756741   0.6163865   0.7349616
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5343389   0.4813518   0.5873261
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2432505   0.1456564   0.3408447
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4214526   0.4100298   0.4328754
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4229092   0.3940703   0.4517482
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2597350   0.2396905   0.2797794
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.3227983   0.2610865   0.3845101
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.6203927   0.4808252   0.7599602
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7291488   0.6669220   0.7913756
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4495198   0.8504802
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.8048780   0.7444925   0.8652636
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.6406737   0.5549864   0.7263610
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4846253   0.3369819   0.6322688
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.6746900   0.6610594   0.6883205
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.5891026   0.5635233   0.6146819
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.5680506   0.5246499   0.6114514
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.7142042   0.6411404   0.7872680
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.5294118   0.4074100   0.6514135
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4955259   0.4314626   0.5595893
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3310529   0.2027704   0.4593353
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1495324   0.1313064   0.1677585
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1972681   0.1432203   0.2513158


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
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2605434   0.8935031   1.7783593
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.6544208   1.1224425   2.4385285
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.7777637   0.6956832   0.8695285
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.4552364   0.3011892   0.6880731
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.0034563   0.9327969   1.0794680
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.2427988   1.0112669   1.5273406
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.1753021   0.9261169   1.4915341
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.2382739   0.9014868   1.7008816
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 0.7564308   0.5441877   1.0514527
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8731457   0.8328466   0.9153947
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.2572896   1.1064585   1.4286819
6-24 months   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        1                    0                 1.0588235   0.5250494   2.1352417
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2544379   0.5807596   2.7095797
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.6680838   0.4446674   1.0037524
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.3192328   0.9773448   1.7807177


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0127168   -0.2167752    0.2422087
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0009995   -0.0812049    0.0792059
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0953651   -0.0341010    0.2248313
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.2124926    0.0792361    0.3457490
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2449453   -0.3034324   -0.1864583
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0084962   -0.0318224    0.0148299
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0015530   -0.0016494    0.0047553
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0015753   -0.0055174    0.0086679
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0900145   -0.0377346    0.2177637
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1380435   -0.0488204    0.3249074
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0491244   -0.0898674   -0.0083813
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0011517   -0.0025051    0.0048084
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0096565   -0.0252163    0.0059034
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0263158   -0.2893065    0.3419381
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0545685   -0.1147328    0.2238699
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0004764   -0.0282162    0.0272634
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0013662   -0.0044667    0.0071991


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0207547   -0.4351619    0.3318375
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0012788   -0.1093840    0.0962920
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1836987   -0.1090475    0.3991711
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.3644426    0.0910403    0.5556093
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.3926701   -0.5112286   -0.2834127
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0161574   -0.0617173    0.0274475
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0036713   -0.0039234    0.0112084
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0060284   -0.0214537    0.0327711
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1267084   -0.0729973    0.2892450
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1751724   -0.1014940    0.3823475
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0830436   -0.1568871   -0.0139134
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0017040   -0.0037195    0.0070982
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0172933   -0.0456665    0.0103100
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0500000   -0.7852745    0.4944755
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1791667   -0.6218475    0.5845680
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0009624   -0.0586116    0.0535474
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0090536   -0.0303157    0.0469186
