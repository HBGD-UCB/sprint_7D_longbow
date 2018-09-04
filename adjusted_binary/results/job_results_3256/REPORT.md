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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        trth2o    ever_stunted   n_cell     n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0        1   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    1        1   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       58   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    0       72    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    1        9    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    0        8    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    1        3    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0        2     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    1        1     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0        1     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    1        2     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0        7    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    1        4    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0       46    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    1       16    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    0        2    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    1        7    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    0        7    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1       26    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        5    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        3    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       28    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6    37
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       12   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       90   102
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0        0   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1        0   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0       43   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1       61   104
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      387   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      232   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0        9   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      178   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      116   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      218   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      141   653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0        2     8
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1        4     8
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0        0     8
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1        2     8
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0        2   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    1        0   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       90   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    1       22   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    0       75    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    1        6    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    0       10    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    1        1    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0        2     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    1        1     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0        3     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    1        0     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    0       11    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    1        0    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    0       57    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    1        5    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    0        6    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    1        3    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    0       20    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    1       13    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        9    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        0    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       19    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       12    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        3    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3    37
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       61   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       41   102
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0        0   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1        0   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0       65   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1       39   104
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      519   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1      100   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0       14   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      240   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       54   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      289   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       70   653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0        6     8
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1        0     8
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0        2     8
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1        0     8
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0        1    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    1        1    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0       54    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    1       36    92
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    0       72    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    1        3    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    0        8    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    1        2    85
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0        2     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    1        0     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0        1     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    1        2     5
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0        7    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    1        4    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0       46    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    1       11    68
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    0        2    26
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    1        4    26
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    0        7    26
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    1       13    26
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        5    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        3    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       16    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3    22
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       12    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       49    61
6-24 months                  ki1000108-IRC              INDIA                          0                    0        0    65
6-24 months                  ki1000108-IRC              INDIA                          0                    1        0    65
6-24 months                  ki1000108-IRC              INDIA                          1                    0       43    65
6-24 months                  ki1000108-IRC              INDIA                          1                    1       22    65
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      313   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1      132   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0        7   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1        5   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      171   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       62   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      202   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71   506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0        2     8
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1        4     8
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0        0     8
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1        2     8


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
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cdea997d-9d44-4f37-a2f8-e14f60a8b36a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdea997d-9d44-4f37-a2f8-e14f60a8b36a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdea997d-9d44-4f37-a2f8-e14f60a8b36a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdea997d-9d44-4f37-a2f8-e14f60a8b36a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3747981   0.3366340   0.4129621
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.4000000   0.1518862   0.6481138
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.4675284   0.4257270   0.5093299
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.4439770   0.4024095   0.4855444
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1931718   0.1524403   0.2339033
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2028003   0.1640829   0.2415176
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2966292   0.2541435   0.3391149
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.4166667   0.1374213   0.6959120
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2925371   0.2412950   0.3437793
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2675427   0.2188096   0.3162758


### Parameter: E(Y)


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3935681   0.3560687   0.4310676
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1898928   0.1597870   0.2199986
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.0672414   0.5692079   2.001034
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.9496256   0.8400287   1.073521
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.0498439   0.7951186   1.386173
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.4046717   0.7078527   2.787448
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.9145596   0.7142243   1.171088


### Parameter: PAR


agecat                       studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0005963   -0.0053505    0.0065430
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0739603   -0.1050262   -0.0428944
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0032790   -0.0333235    0.0267654
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0031520   -0.0044713    0.0107752
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0296913   -0.0669179    0.0075353


### Parameter: PAF


agecat                       studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0015884   -0.0143794    0.0173048
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.1879225   -0.2765612   -0.1054384
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0172677   -0.1887458    0.1294744
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0105142   -0.0152379    0.0356132
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.1129609   -0.2666028    0.0220439
