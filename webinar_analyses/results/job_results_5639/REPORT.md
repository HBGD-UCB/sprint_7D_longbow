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

**Intervention Variable:** lag_ever_wasted

**Adjustment Set:**

* arm
* sex
* W_mage
* single
* month
* brthmon
* meducyrs
* hfoodsec
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hfoodsec
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid             country                         lag_ever_wasted   ever_stunted   n_cell     n
-------------  ------------------  -----------------------------  ----------------  -------------  -------  ----
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    0              0      125   179
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    0              1       15   179
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    1              0       38   179
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    1              1        1   179
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        0              0      167   188
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        0              1        8   188
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        1              0       13   188
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        1              1        0   188
3-6 months     ki0047075b-MAL-ED   INDIA                                         0              0      112   174
3-6 months     ki0047075b-MAL-ED   INDIA                                         0              1       16   174
3-6 months     ki0047075b-MAL-ED   INDIA                                         1              0       44   174
3-6 months     ki0047075b-MAL-ED   INDIA                                         1              1        2   174
3-6 months     ki0047075b-MAL-ED   NEPAL                                         0              0      170   201
3-6 months     ki0047075b-MAL-ED   NEPAL                                         0              1        4   201
3-6 months     ki0047075b-MAL-ED   NEPAL                                         1              0       27   201
3-6 months     ki0047075b-MAL-ED   NEPAL                                         1              1        0   201
3-6 months     ki0047075b-MAL-ED   PERU                                          0              0      153   187
3-6 months     ki0047075b-MAL-ED   PERU                                          0              1       29   187
3-6 months     ki0047075b-MAL-ED   PERU                                          1              0        5   187
3-6 months     ki0047075b-MAL-ED   PERU                                          1              1        0   187
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0      150   199
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1       31   199
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0       17   199
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        1   199
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0      148   177
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1       26   177
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        3   177
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        0   177
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    0              0      145   159
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    0              1       11   159
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    1              0        3   159
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    1              1        0   159
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        0              0      168   170
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        0              1        1   170
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        1              0        1   170
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        1              1        0   170
6-9 months     ki0047075b-MAL-ED   INDIA                                         0              0      134   155
6-9 months     ki0047075b-MAL-ED   INDIA                                         0              1       11   155
6-9 months     ki0047075b-MAL-ED   INDIA                                         1              0        8   155
6-9 months     ki0047075b-MAL-ED   INDIA                                         1              1        2   155
6-9 months     ki0047075b-MAL-ED   NEPAL                                         0              0      185   195
6-9 months     ki0047075b-MAL-ED   NEPAL                                         0              1        4   195
6-9 months     ki0047075b-MAL-ED   NEPAL                                         1              0        6   195
6-9 months     ki0047075b-MAL-ED   NEPAL                                         1              1        0   195
6-9 months     ki0047075b-MAL-ED   PERU                                          0              0      139   150
6-9 months     ki0047075b-MAL-ED   PERU                                          0              1       10   150
6-9 months     ki0047075b-MAL-ED   PERU                                          1              0        1   150
6-9 months     ki0047075b-MAL-ED   PERU                                          1              1        0   150
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0      144   157
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1       10   157
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        2   157
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        1   157
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0      108   147
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1       36   147
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        3   147
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        0   147
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    0              0      128   145
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    0              1       13   145
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    1              0        4   145
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    1              1        0   145
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        0              0      159   162
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        0              1        2   162
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        1              0        1   162
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        1              1        0   162
9-12 months    ki0047075b-MAL-ED   INDIA                                         0              0      116   140
9-12 months    ki0047075b-MAL-ED   INDIA                                         0              1       18   140
9-12 months    ki0047075b-MAL-ED   INDIA                                         1              0        5   140
9-12 months    ki0047075b-MAL-ED   INDIA                                         1              1        1   140
9-12 months    ki0047075b-MAL-ED   NEPAL                                         0              0      184   188
9-12 months    ki0047075b-MAL-ED   NEPAL                                         0              1        3   188
9-12 months    ki0047075b-MAL-ED   NEPAL                                         1              0        1   188
9-12 months    ki0047075b-MAL-ED   NEPAL                                         1              1        0   188
9-12 months    ki0047075b-MAL-ED   PERU                                          0              0      117   127
9-12 months    ki0047075b-MAL-ED   PERU                                          0              1       10   127
9-12 months    ki0047075b-MAL-ED   PERU                                          1              0        0   127
9-12 months    ki0047075b-MAL-ED   PERU                                          1              1        0   127
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0      131   146
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1       11   146
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        4   146
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        0   146
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0       82   109
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1       24   109
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        2   109
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        1   109
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    0              0      109   130
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    0              1       17   130
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    1              0        3   130
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    1              1        1   130
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        0              0      152   156
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        0              1        3   156
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        1              0        1   156
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        1              1        0   156
12-15 months   ki0047075b-MAL-ED   INDIA                                         0              0      105   119
12-15 months   ki0047075b-MAL-ED   INDIA                                         0              1        7   119
12-15 months   ki0047075b-MAL-ED   INDIA                                         1              0        5   119
12-15 months   ki0047075b-MAL-ED   INDIA                                         1              1        2   119
12-15 months   ki0047075b-MAL-ED   NEPAL                                         0              0      169   185
12-15 months   ki0047075b-MAL-ED   NEPAL                                         0              1       11   185
12-15 months   ki0047075b-MAL-ED   NEPAL                                         1              0        5   185
12-15 months   ki0047075b-MAL-ED   NEPAL                                         1              1        0   185
12-15 months   ki0047075b-MAL-ED   PERU                                          0              0       95   114
12-15 months   ki0047075b-MAL-ED   PERU                                          0              1       17   114
12-15 months   ki0047075b-MAL-ED   PERU                                          1              0        2   114
12-15 months   ki0047075b-MAL-ED   PERU                                          1              1        0   114
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0      113   135
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1       16   135
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        5   135
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        1   135
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0       57    82
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1       23    82
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        0    82
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        2    82
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    0              0       95   110
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    0              1       11   110
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    1              0        3   110
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    1              1        1   110
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        0              0      143   145
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        0              1        2   145
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        1              0        0   145
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        1              1        0   145
15-18 months   ki0047075b-MAL-ED   INDIA                                         0              0       94   110
15-18 months   ki0047075b-MAL-ED   INDIA                                         0              1       11   110
15-18 months   ki0047075b-MAL-ED   INDIA                                         1              0        2   110
15-18 months   ki0047075b-MAL-ED   INDIA                                         1              1        3   110
15-18 months   ki0047075b-MAL-ED   NEPAL                                         0              0      159   174
15-18 months   ki0047075b-MAL-ED   NEPAL                                         0              1       10   174
15-18 months   ki0047075b-MAL-ED   NEPAL                                         1              0        4   174
15-18 months   ki0047075b-MAL-ED   NEPAL                                         1              1        1   174
15-18 months   ki0047075b-MAL-ED   PERU                                          0              0       73    90
15-18 months   ki0047075b-MAL-ED   PERU                                          0              1       17    90
15-18 months   ki0047075b-MAL-ED   PERU                                          1              0        0    90
15-18 months   ki0047075b-MAL-ED   PERU                                          1              1        0    90
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0      107   114
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1        6   114
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        1   114
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        0   114
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0       42    57
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1       14    57
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        1    57
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        0    57
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    0              0       91    97
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    0              1        5    97
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    1              0        1    97
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    1              1        0    97
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        0              0      139   139
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        0              1        0   139
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        1              0        0   139
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        1              1        0   139
18-21 months   ki0047075b-MAL-ED   INDIA                                         0              0       90    95
18-21 months   ki0047075b-MAL-ED   INDIA                                         0              1        2    95
18-21 months   ki0047075b-MAL-ED   INDIA                                         1              0        3    95
18-21 months   ki0047075b-MAL-ED   INDIA                                         1              1        0    95
18-21 months   ki0047075b-MAL-ED   NEPAL                                         0              0      149   161
18-21 months   ki0047075b-MAL-ED   NEPAL                                         0              1        8   161
18-21 months   ki0047075b-MAL-ED   NEPAL                                         1              0        4   161
18-21 months   ki0047075b-MAL-ED   NEPAL                                         1              1        0   161
18-21 months   ki0047075b-MAL-ED   PERU                                          0              0       64    67
18-21 months   ki0047075b-MAL-ED   PERU                                          0              1        3    67
18-21 months   ki0047075b-MAL-ED   PERU                                          1              0        0    67
18-21 months   ki0047075b-MAL-ED   PERU                                          1              1        0    67
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0       96   105
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1        8   105
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        0   105
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        1   105
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0       32    42
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1        9    42
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        1    42
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        0    42
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    0              0       81    91
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    0              1        7    91
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    1              0        1    91
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    1              1        2    91
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        0              0      131   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        0              1        1   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        1              0        1   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        1              1        0   133
21-24 months   ki0047075b-MAL-ED   INDIA                                         0              0       83    93
21-24 months   ki0047075b-MAL-ED   INDIA                                         0              1        6    93
21-24 months   ki0047075b-MAL-ED   INDIA                                         1              0        3    93
21-24 months   ki0047075b-MAL-ED   INDIA                                         1              1        1    93
21-24 months   ki0047075b-MAL-ED   NEPAL                                         0              0      144   153
21-24 months   ki0047075b-MAL-ED   NEPAL                                         0              1        4   153
21-24 months   ki0047075b-MAL-ED   NEPAL                                         1              0        5   153
21-24 months   ki0047075b-MAL-ED   NEPAL                                         1              1        0   153
21-24 months   ki0047075b-MAL-ED   PERU                                          0              0       60    63
21-24 months   ki0047075b-MAL-ED   PERU                                          0              1        3    63
21-24 months   ki0047075b-MAL-ED   PERU                                          1              0        0    63
21-24 months   ki0047075b-MAL-ED   PERU                                          1              1        0    63
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              0       91    96
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0              1        4    96
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              0        1    96
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1              1        0    96
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              0       27    33
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0              1        6    33
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              0        0    33
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1              1        0    33


The following strata were considered:

* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED
















