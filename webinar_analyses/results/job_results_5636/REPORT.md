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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** lag_ever_stunted

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* hfoodsec
* single
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_hfoodsec
* delta_single
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

agecat         studyid             country                         lag_ever_stunted   ever_wasted   n_cell     n
-------------  ------------------  -----------------------------  -----------------  ------------  -------  ----
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                     0             0      173   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                     0             1        6   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                     1             0       63   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                     1             1        4   246
3-6 months     ki0047075b-MAL-ED   BRAZIL                                         0             0      187   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                         0             1        1   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                         1             0       30   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                         1             1        0   218
3-6 months     ki0047075b-MAL-ED   INDIA                                          0             0      161   240
3-6 months     ki0047075b-MAL-ED   INDIA                                          0             1       13   240
3-6 months     ki0047075b-MAL-ED   INDIA                                          1             0       62   240
3-6 months     ki0047075b-MAL-ED   INDIA                                          1             1        4   240
3-6 months     ki0047075b-MAL-ED   NEPAL                                          0             0      195   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                          0             1        6   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                          1             0       34   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                          1             1        3   238
3-6 months     ki0047075b-MAL-ED   PERU                                           0             0      185   281
3-6 months     ki0047075b-MAL-ED   PERU                                           0             1        1   281
3-6 months     ki0047075b-MAL-ED   PERU                                           1             0       93   281
3-6 months     ki0047075b-MAL-ED   PERU                                           1             1        2   281
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      194   270
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        4   270
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0       70   270
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        2   270
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0      172   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        5   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       74   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        2   253
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                     0             0      156   175
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                     0             1        3   175
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                     1             0       15   175
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                     1             1        1   175
6-9 months     ki0047075b-MAL-ED   BRAZIL                                         0             0      169   178
6-9 months     ki0047075b-MAL-ED   BRAZIL                                         0             1        1   178
6-9 months     ki0047075b-MAL-ED   BRAZIL                                         1             0        8   178
6-9 months     ki0047075b-MAL-ED   BRAZIL                                         1             1        0   178
6-9 months     ki0047075b-MAL-ED   INDIA                                          0             0      146   172
6-9 months     ki0047075b-MAL-ED   INDIA                                          0             1        9   172
6-9 months     ki0047075b-MAL-ED   INDIA                                          1             0        9   172
6-9 months     ki0047075b-MAL-ED   INDIA                                          1             1        8   172
6-9 months     ki0047075b-MAL-ED   NEPAL                                          0             0      194   199
6-9 months     ki0047075b-MAL-ED   NEPAL                                          0             1        1   199
6-9 months     ki0047075b-MAL-ED   NEPAL                                          1             0        3   199
6-9 months     ki0047075b-MAL-ED   NEPAL                                          1             1        1   199
6-9 months     ki0047075b-MAL-ED   PERU                                           0             0      150   179
6-9 months     ki0047075b-MAL-ED   PERU                                           0             1        0   179
6-9 months     ki0047075b-MAL-ED   PERU                                           1             0       29   179
6-9 months     ki0047075b-MAL-ED   PERU                                           1             1        0   179
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      153   188
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        4   188
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0       27   188
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        4   188
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0      144   172
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        3   172
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       25   172
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        0   172
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                     0             0      140   155
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                     0             1        5   155
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                     1             0       10   155
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                     1             1        0   155
9-12 months    ki0047075b-MAL-ED   BRAZIL                                         0             0      161   163
9-12 months    ki0047075b-MAL-ED   BRAZIL                                         0             1        1   163
9-12 months    ki0047075b-MAL-ED   BRAZIL                                         1             0        1   163
9-12 months    ki0047075b-MAL-ED   BRAZIL                                         1             1        0   163
9-12 months    ki0047075b-MAL-ED   INDIA                                          0             0      132   153
9-12 months    ki0047075b-MAL-ED   INDIA                                          0             1        8   153
9-12 months    ki0047075b-MAL-ED   INDIA                                          1             0       12   153
9-12 months    ki0047075b-MAL-ED   INDIA                                          1             1        1   153
9-12 months    ki0047075b-MAL-ED   NEPAL                                          0             0      183   192
9-12 months    ki0047075b-MAL-ED   NEPAL                                          0             1        5   192
9-12 months    ki0047075b-MAL-ED   NEPAL                                          1             0        3   192
9-12 months    ki0047075b-MAL-ED   NEPAL                                          1             1        1   192
9-12 months    ki0047075b-MAL-ED   PERU                                           0             0      125   137
9-12 months    ki0047075b-MAL-ED   PERU                                           0             1        2   137
9-12 months    ki0047075b-MAL-ED   PERU                                           1             0       10   137
9-12 months    ki0047075b-MAL-ED   PERU                                           1             1        0   137
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      138   156
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        8   156
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0       10   156
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        0   156
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0      106   144
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        3   144
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       33   144
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        2   144
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                     0             0      125   143
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                     0             1        5   143
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                     1             0       12   143
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                     1             1        1   143
12-15 months   ki0047075b-MAL-ED   BRAZIL                                         0             0      156   158
12-15 months   ki0047075b-MAL-ED   BRAZIL                                         0             1        0   158
12-15 months   ki0047075b-MAL-ED   BRAZIL                                         1             0        2   158
12-15 months   ki0047075b-MAL-ED   BRAZIL                                         1             1        0   158
12-15 months   ki0047075b-MAL-ED   INDIA                                          0             0      113   138
12-15 months   ki0047075b-MAL-ED   INDIA                                          0             1        6   138
12-15 months   ki0047075b-MAL-ED   INDIA                                          1             0       16   138
12-15 months   ki0047075b-MAL-ED   INDIA                                          1             1        3   138
12-15 months   ki0047075b-MAL-ED   NEPAL                                          0             0      179   188
12-15 months   ki0047075b-MAL-ED   NEPAL                                          0             1        6   188
12-15 months   ki0047075b-MAL-ED   NEPAL                                          1             0        3   188
12-15 months   ki0047075b-MAL-ED   NEPAL                                          1             1        0   188
12-15 months   ki0047075b-MAL-ED   PERU                                           0             0      114   124
12-15 months   ki0047075b-MAL-ED   PERU                                           0             1        0   124
12-15 months   ki0047075b-MAL-ED   PERU                                           1             0       10   124
12-15 months   ki0047075b-MAL-ED   PERU                                           1             1        0   124
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      134   146
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        1   146
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0       10   146
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        1   146
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0       81   106
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        1   106
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       24   106
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        0   106
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                     0             0      107   128
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                     0             1        3   128
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                     1             0       17   128
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                     1             1        1   128
15-18 months   ki0047075b-MAL-ED   BRAZIL                                         0             0      145   148
15-18 months   ki0047075b-MAL-ED   BRAZIL                                         0             1        0   148
15-18 months   ki0047075b-MAL-ED   BRAZIL                                         1             0        3   148
15-18 months   ki0047075b-MAL-ED   BRAZIL                                         1             1        0   148
15-18 months   ki0047075b-MAL-ED   INDIA                                          0             0      105   119
15-18 months   ki0047075b-MAL-ED   INDIA                                          0             1        5   119
15-18 months   ki0047075b-MAL-ED   INDIA                                          1             0        9   119
15-18 months   ki0047075b-MAL-ED   INDIA                                          1             1        0   119
15-18 months   ki0047075b-MAL-ED   NEPAL                                          0             0      169   185
15-18 months   ki0047075b-MAL-ED   NEPAL                                          0             1        5   185
15-18 months   ki0047075b-MAL-ED   NEPAL                                          1             0       10   185
15-18 months   ki0047075b-MAL-ED   NEPAL                                          1             1        1   185
15-18 months   ki0047075b-MAL-ED   PERU                                           0             0       90   106
15-18 months   ki0047075b-MAL-ED   PERU                                           0             1        0   106
15-18 months   ki0047075b-MAL-ED   PERU                                           1             0       16   106
15-18 months   ki0047075b-MAL-ED   PERU                                           1             1        0   106
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      113   131
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        1   131
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0       15   131
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        2   131
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0       56    82
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        1    82
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       24    82
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        1    82
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                     0             0       94   109
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                     0             1        3   109
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                     1             0       12   109
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                     1             1        0   109
18-21 months   ki0047075b-MAL-ED   BRAZIL                                         0             0      138   141
18-21 months   ki0047075b-MAL-ED   BRAZIL                                         0             1        1   141
18-21 months   ki0047075b-MAL-ED   BRAZIL                                         1             0        2   141
18-21 months   ki0047075b-MAL-ED   BRAZIL                                         1             1        0   141
18-21 months   ki0047075b-MAL-ED   INDIA                                          0             0       91   109
18-21 months   ki0047075b-MAL-ED   INDIA                                          0             1        4   109
18-21 months   ki0047075b-MAL-ED   INDIA                                          1             0       12   109
18-21 months   ki0047075b-MAL-ED   INDIA                                          1             1        2   109
18-21 months   ki0047075b-MAL-ED   NEPAL                                          0             0      156   172
18-21 months   ki0047075b-MAL-ED   NEPAL                                          0             1        5   172
18-21 months   ki0047075b-MAL-ED   NEPAL                                          1             0       11   172
18-21 months   ki0047075b-MAL-ED   NEPAL                                          1             1        0   172
18-21 months   ki0047075b-MAL-ED   PERU                                           0             0       66    83
18-21 months   ki0047075b-MAL-ED   PERU                                           0             1        1    83
18-21 months   ki0047075b-MAL-ED   PERU                                           1             0       16    83
18-21 months   ki0047075b-MAL-ED   PERU                                           1             1        0    83
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0      104   111
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        1   111
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0        6   111
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        0   111
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0       42    55
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        0    55
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       13    55
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        0    55
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                     0             0       90    96
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                     0             1        1    96
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                     1             0        5    96
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                     1             1        0    96
21-24 months   ki0047075b-MAL-ED   BRAZIL                                         0             0      132   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                         0             1        1   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                         1             0        0   133
21-24 months   ki0047075b-MAL-ED   BRAZIL                                         1             1        0   133
21-24 months   ki0047075b-MAL-ED   INDIA                                          0             0       91    95
21-24 months   ki0047075b-MAL-ED   INDIA                                          0             1        2    95
21-24 months   ki0047075b-MAL-ED   INDIA                                          1             0        2    95
21-24 months   ki0047075b-MAL-ED   INDIA                                          1             1        0    95
21-24 months   ki0047075b-MAL-ED   NEPAL                                          0             0      146   161
21-24 months   ki0047075b-MAL-ED   NEPAL                                          0             1        7   161
21-24 months   ki0047075b-MAL-ED   NEPAL                                          1             0        8   161
21-24 months   ki0047075b-MAL-ED   NEPAL                                          1             1        0   161
21-24 months   ki0047075b-MAL-ED   PERU                                           0             0       63    66
21-24 months   ki0047075b-MAL-ED   PERU                                           0             1        0    66
21-24 months   ki0047075b-MAL-ED   PERU                                           1             0        3    66
21-24 months   ki0047075b-MAL-ED   PERU                                           1             1        0    66
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             0       95   105
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   0             1        1   105
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             0        8   105
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                   1             1        1   105
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             0       33    43
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   0             1        0    43
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             0       10    43
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                   1             1        0    43


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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eb1d8bd6-3f73-4178-84dc-897631f20fdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb1d8bd6-3f73-4178-84dc-897631f20fdc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb1d8bd6-3f73-4178-84dc-897631f20fdc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb1d8bd6-3f73-4178-84dc-897631f20fdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat       studyid             country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
-----------  ------------------  --------  -------------------  ---------------  ----------  ----------  ---------
6-9 months   ki0047075b-MAL-ED   INDIA     0                    NA                0.0580645   0.0211400   0.094989
6-9 months   ki0047075b-MAL-ED   INDIA     1                    NA                0.4705882   0.2326265   0.708550


### Parameter: E(Y)


agecat       studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------  ------------------  --------  -------------------  ---------------  ----------  ----------  ----------
6-9 months   ki0047075b-MAL-ED   INDIA     NA                   NA                0.0988372   0.0541059   0.1435685


### Parameter: RR


agecat       studyid             country   intervention_level   baseline_level    estimate   ci_lower   ci_upper
-----------  ------------------  --------  -------------------  ---------------  ---------  ---------  ---------
6-9 months   ki0047075b-MAL-ED   INDIA     0                    0                 1.000000   1.000000    1.00000
6-9 months   ki0047075b-MAL-ED   INDIA     1                    0                 8.104575   3.596514   18.26328


### Parameter: PAR


agecat       studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------  ------------------  --------  -------------------  ---------------  ----------  ----------  ----------
6-9 months   ki0047075b-MAL-ED   INDIA     0                    NA                0.0407727   0.0106564   0.0708889


### Parameter: PAF


agecat       studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------  ------------------  --------  -------------------  ---------------  ----------  ----------  ----------
6-9 months   ki0047075b-MAL-ED   INDIA     0                    NA                0.4125237   0.1009666   0.6161117
