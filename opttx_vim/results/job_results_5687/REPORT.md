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
![](/tmp/e8b9dbe7-5ba2-4596-bd93-027405bfde85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8b9dbe7-5ba2-4596-bd93-027405bfde85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.3747463   0.3365822   0.4129103
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.3002848   0.2595291   0.3410404
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1494405   0.1116060   0.1872751
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.2967778   0.2542921   0.3392635
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.2533792   0.2039108   0.3028477


### Parameter: E(Y)


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.3752210   0.3374991   0.4129428
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.4066055   0.3691060   0.4441050
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1912365   0.1611307   0.2213423
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.2995431   0.2574913   0.3415949
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.2625826   0.2241914   0.3009739


### Parameter: RR


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   optimal              observed          0.9987349   0.9830113   1.0147100
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              observed          0.7385163   0.6741891   0.8089812
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              observed          0.7814435   0.6426751   0.9501753
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   optimal              observed          0.9907682   0.9656546   1.0165351
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   optimal              observed          0.9649504   0.8479262   1.0981254
