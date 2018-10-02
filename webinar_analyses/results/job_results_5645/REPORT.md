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

**Intervention Variable:** lag_ever_wasted

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid             country                         lag_ever_wasted   ever_wasted   n_cell     n
-------------  ------------------  -----------------------------  ----------------  ------------  -------  ----
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    0             0      189   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    0             1        7   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    1             0       47   246
3-6 months     ki0047075b-MAL-ED   BANGLADESH                                    1             1        3   246
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        0             0      204   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        0             1        1   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        1             0       13   218
3-6 months     ki0047075b-MAL-ED   BRAZIL                                        1             1        0   218
3-6 months     ki0047075b-MAL-ED   INDIA                                         0             0      164   240
3-6 months     ki0047075b-MAL-ED   INDIA                                         0             1       13   240
3-6 months     ki0047075b-MAL-ED   INDIA                                         1             0       59   240
3-6 months     ki0047075b-MAL-ED   INDIA                                         1             1        4   240
3-6 months     ki0047075b-MAL-ED   NEPAL                                         0             0      195   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                         0             1        9   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                         1             0       34   238
3-6 months     ki0047075b-MAL-ED   NEPAL                                         1             1        0   238
3-6 months     ki0047075b-MAL-ED   PERU                                          0             0      272   282
3-6 months     ki0047075b-MAL-ED   PERU                                          0             1        3   282
3-6 months     ki0047075b-MAL-ED   PERU                                          1             0        7   282
3-6 months     ki0047075b-MAL-ED   PERU                                          1             1        0   282
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      244   271
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        5   271
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0       21   271
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        1   271
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      242   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        6   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        4   253
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        1   253
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    0             0      224   239
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    0             1        6   239
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    1             0        9   239
6-9 months     ki0047075b-MAL-ED   BANGLADESH                                    1             1        0   239
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        0             0      205   207
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        0             1        1   207
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        1             0        1   207
6-9 months     ki0047075b-MAL-ED   BRAZIL                                        1             1        0   207
6-9 months     ki0047075b-MAL-ED   INDIA                                         0             0      198   235
6-9 months     ki0047075b-MAL-ED   INDIA                                         0             1       20   235
6-9 months     ki0047075b-MAL-ED   INDIA                                         1             0       15   235
6-9 months     ki0047075b-MAL-ED   INDIA                                         1             1        2   235
6-9 months     ki0047075b-MAL-ED   NEPAL                                         0             0      224   235
6-9 months     ki0047075b-MAL-ED   NEPAL                                         0             1        2   235
6-9 months     ki0047075b-MAL-ED   NEPAL                                         1             0        9   235
6-9 months     ki0047075b-MAL-ED   NEPAL                                         1             1        0   235
6-9 months     ki0047075b-MAL-ED   PERU                                          0             0      266   269
6-9 months     ki0047075b-MAL-ED   PERU                                          0             1        0   269
6-9 months     ki0047075b-MAL-ED   PERU                                          1             0        3   269
6-9 months     ki0047075b-MAL-ED   PERU                                          1             1        0   269
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      243   257
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        9   257
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0        5   257
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        0   257
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      235   245
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        3   245
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        5   245
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        2   245
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    0             0      215   234
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    0             1       12   234
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    1             0        6   234
9-12 months    ki0047075b-MAL-ED   BANGLADESH                                    1             1        1   234
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        0             0      196   198
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        0             1        1   198
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        1             0        0   198
9-12 months    ki0047075b-MAL-ED   BRAZIL                                        1             1        1   198
9-12 months    ki0047075b-MAL-ED   INDIA                                         0             0      193   231
9-12 months    ki0047075b-MAL-ED   INDIA                                         0             1       18   231
9-12 months    ki0047075b-MAL-ED   INDIA                                         1             0       19   231
9-12 months    ki0047075b-MAL-ED   INDIA                                         1             1        1   231
9-12 months    ki0047075b-MAL-ED   NEPAL                                         0             0      221   231
9-12 months    ki0047075b-MAL-ED   NEPAL                                         0             1        8   231
9-12 months    ki0047075b-MAL-ED   NEPAL                                         1             0        1   231
9-12 months    ki0047075b-MAL-ED   NEPAL                                         1             1        1   231
9-12 months    ki0047075b-MAL-ED   PERU                                          0             0      245   251
9-12 months    ki0047075b-MAL-ED   PERU                                          0             1        6   251
9-12 months    ki0047075b-MAL-ED   PERU                                          1             0        0   251
9-12 months    ki0047075b-MAL-ED   PERU                                          1             1        0   251
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      232   254
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1       13   254
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0        7   254
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        2   254
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      225   238
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        8   238
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        4   238
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        1   238
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    0             0      207   231
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    0             1       11   231
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    1             0       11   231
12-15 months   ki0047075b-MAL-ED   BANGLADESH                                    1             1        2   231
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        0             0      191   194
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        0             1        1   194
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        1             0        2   194
12-15 months   ki0047075b-MAL-ED   BRAZIL                                        1             1        0   194
12-15 months   ki0047075b-MAL-ED   INDIA                                         0             0      194   229
12-15 months   ki0047075b-MAL-ED   INDIA                                         0             1       16   229
12-15 months   ki0047075b-MAL-ED   INDIA                                         1             0       17   229
12-15 months   ki0047075b-MAL-ED   INDIA                                         1             1        2   229
12-15 months   ki0047075b-MAL-ED   NEPAL                                         0             0      215   231
12-15 months   ki0047075b-MAL-ED   NEPAL                                         0             1        7   231
12-15 months   ki0047075b-MAL-ED   NEPAL                                         1             0        8   231
12-15 months   ki0047075b-MAL-ED   NEPAL                                         1             1        1   231
12-15 months   ki0047075b-MAL-ED   PERU                                          0             0      236   244
12-15 months   ki0047075b-MAL-ED   PERU                                          0             1        2   244
12-15 months   ki0047075b-MAL-ED   PERU                                          1             0        6   244
12-15 months   ki0047075b-MAL-ED   PERU                                          1             1        0   244
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      229   253
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        9   253
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0       12   253
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        3   253
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      219   233
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        5   233
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        9   233
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        0   233
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    0             0      200   224
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    0             1       11   224
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    1             0       12   224
15-18 months   ki0047075b-MAL-ED   BANGLADESH                                    1             1        1   224
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        0             0      182   184
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        0             1        1   184
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        1             0        1   184
15-18 months   ki0047075b-MAL-ED   BRAZIL                                        1             1        0   184
15-18 months   ki0047075b-MAL-ED   INDIA                                         0             0      203   229
15-18 months   ki0047075b-MAL-ED   INDIA                                         0             1        8   229
15-18 months   ki0047075b-MAL-ED   INDIA                                         1             0       17   229
15-18 months   ki0047075b-MAL-ED   INDIA                                         1             1        1   229
15-18 months   ki0047075b-MAL-ED   NEPAL                                         0             0      214   231
15-18 months   ki0047075b-MAL-ED   NEPAL                                         0             1        9   231
15-18 months   ki0047075b-MAL-ED   NEPAL                                         1             0        6   231
15-18 months   ki0047075b-MAL-ED   NEPAL                                         1             1        2   231
15-18 months   ki0047075b-MAL-ED   PERU                                          0             0      219   230
15-18 months   ki0047075b-MAL-ED   PERU                                          0             1        9   230
15-18 months   ki0047075b-MAL-ED   PERU                                          1             0        2   230
15-18 months   ki0047075b-MAL-ED   PERU                                          1             1        0   230
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      230   246
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        4   246
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0       10   246
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        2   246
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      222   232
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        5   232
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        5   232
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        0   232
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    0             0      195   219
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    0             1       12   219
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    1             0       12   219
18-21 months   ki0047075b-MAL-ED   BANGLADESH                                    1             1        0   219
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        0             0      173   176
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        0             1        2   176
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        1             0        1   176
18-21 months   ki0047075b-MAL-ED   BRAZIL                                        1             1        0   176
18-21 months   ki0047075b-MAL-ED   INDIA                                         0             0      208   228
18-21 months   ki0047075b-MAL-ED   INDIA                                         0             1       11   228
18-21 months   ki0047075b-MAL-ED   INDIA                                         1             0        6   228
18-21 months   ki0047075b-MAL-ED   INDIA                                         1             1        3   228
18-21 months   ki0047075b-MAL-ED   NEPAL                                         0             0      211   229
18-21 months   ki0047075b-MAL-ED   NEPAL                                         0             1        7   229
18-21 months   ki0047075b-MAL-ED   NEPAL                                         1             0        8   229
18-21 months   ki0047075b-MAL-ED   NEPAL                                         1             1        3   229
18-21 months   ki0047075b-MAL-ED   PERU                                          0             0      208   218
18-21 months   ki0047075b-MAL-ED   PERU                                          0             1        2   218
18-21 months   ki0047075b-MAL-ED   PERU                                          1             0        7   218
18-21 months   ki0047075b-MAL-ED   PERU                                          1             1        1   218
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      232   241
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        3   241
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0        6   241
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        0   241
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      218   227
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        4   227
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        5   227
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        0   227
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    0             0      197   214
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    0             1        5   214
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    1             0       11   214
21-24 months   ki0047075b-MAL-ED   BANGLADESH                                    1             1        1   214
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        0             0      165   169
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        0             1        2   169
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        1             0        2   169
21-24 months   ki0047075b-MAL-ED   BRAZIL                                        1             1        0   169
21-24 months   ki0047075b-MAL-ED   INDIA                                         0             0      204   228
21-24 months   ki0047075b-MAL-ED   INDIA                                         0             1       10   228
21-24 months   ki0047075b-MAL-ED   INDIA                                         1             0       11   228
21-24 months   ki0047075b-MAL-ED   INDIA                                         1             1        3   228
21-24 months   ki0047075b-MAL-ED   NEPAL                                         0             0      210   229
21-24 months   ki0047075b-MAL-ED   NEPAL                                         0             1        9   229
21-24 months   ki0047075b-MAL-ED   NEPAL                                         1             0        9   229
21-24 months   ki0047075b-MAL-ED   NEPAL                                         1             1        1   229
21-24 months   ki0047075b-MAL-ED   PERU                                          0             0      204   210
21-24 months   ki0047075b-MAL-ED   PERU                                          0             1        3   210
21-24 months   ki0047075b-MAL-ED   PERU                                          1             0        3   210
21-24 months   ki0047075b-MAL-ED   PERU                                          1             1        0   210
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             0      233   240
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  0             1        5   240
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             0        2   240
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                                  1             1        0   240
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             0      210   219
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  0             1        5   219
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             0        4   219
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF                  1             1        0   219


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
















