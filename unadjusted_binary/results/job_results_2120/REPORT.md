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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg        stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=57.5             0       43     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=57.5             1        7     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <42.5              0       44     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <42.5              1        9     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          0       68     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          1       17     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          0       49     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          1        9     246
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5             0       43     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5              0       39     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5              1       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          0       60     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          1       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          0       54     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          1        1     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5             0       32     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5             1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5              0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5              1       32     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          0       32     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)          1       41     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)          1       14     212
Birth       ki0047075b-MAL-ED          BRAZIL                         >=57.5             0      111     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=57.5             1       11     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <42.5              0        9     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <42.5              1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          0       11     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          1        2     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          0       34     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          1        3     184
6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5             0      135     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5             1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5              0       11     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          0       17     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          0       39     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          1        2     208
24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5             0      107     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5             1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5              0        7     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5              1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          0       15     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)          1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          0       33     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)          1        2     168
Birth       ki0047075b-MAL-ED          INDIA                          >=57.5             0       34     198
Birth       ki0047075b-MAL-ED          INDIA                          >=57.5             1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          <42.5              0       25     198
Birth       ki0047075b-MAL-ED          INDIA                          <42.5              1        9     198
Birth       ki0047075b-MAL-ED          INDIA                          [42.5-50)          0       56     198
Birth       ki0047075b-MAL-ED          INDIA                          [42.5-50)          1       11     198
Birth       ki0047075b-MAL-ED          INDIA                          [50-57.5)          0       51     198
Birth       ki0047075b-MAL-ED          INDIA                          [50-57.5)          1        9     198
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5             0       37     235
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5             1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          <42.5              0       38     235
6 months    ki0047075b-MAL-ED          INDIA                          <42.5              1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)          0       57     235
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)          1       16     235
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)          0       58     235
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)          1       16     235
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5             0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5             1       12     226
24 months   ki0047075b-MAL-ED          INDIA                          <42.5              0       21     226
24 months   ki0047075b-MAL-ED          INDIA                          <42.5              1       23     226
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)          0       44     226
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)          1       26     226
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)          0       39     226
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)          1       33     226
6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5             0       84     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5             1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          <42.5              0        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          <42.5              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)          0       43     236
6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)          1        6     236
6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)          0       95     236
6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)          1        4     236
24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5             0       74     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5             1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          <42.5              0        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          <42.5              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)          0       29     228
24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)          1       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)          0       75     228
24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)          1       20     228
Birth       ki0047075b-MAL-ED          NEPAL                          >=57.5             0       56     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=57.5             1        7     172
Birth       ki0047075b-MAL-ED          NEPAL                          <42.5              0        2     172
Birth       ki0047075b-MAL-ED          NEPAL                          <42.5              1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          [42.5-50)          0       24     172
Birth       ki0047075b-MAL-ED          NEPAL                          [42.5-50)          1        6     172
Birth       ki0047075b-MAL-ED          NEPAL                          [50-57.5)          0       72     172
Birth       ki0047075b-MAL-ED          NEPAL                          [50-57.5)          1        5     172
Birth       ki0047075b-MAL-ED          PERU                           >=57.5             0       91     276
Birth       ki0047075b-MAL-ED          PERU                           >=57.5             1        8     276
Birth       ki0047075b-MAL-ED          PERU                           <42.5              0        9     276
Birth       ki0047075b-MAL-ED          PERU                           <42.5              1        4     276
Birth       ki0047075b-MAL-ED          PERU                           [42.5-50)          0       42     276
Birth       ki0047075b-MAL-ED          PERU                           [42.5-50)          1       10     276
Birth       ki0047075b-MAL-ED          PERU                           [50-57.5)          0      101     276
Birth       ki0047075b-MAL-ED          PERU                           [50-57.5)          1       11     276
6 months    ki0047075b-MAL-ED          PERU                           >=57.5             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           >=57.5             1       19     272
6 months    ki0047075b-MAL-ED          PERU                           <42.5              0        8     272
6 months    ki0047075b-MAL-ED          PERU                           <42.5              1        5     272
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)          0       37     272
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)          1       17     272
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)          0       86     272
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)          1       19     272
24 months   ki0047075b-MAL-ED          PERU                           >=57.5             0       59     201
24 months   ki0047075b-MAL-ED          PERU                           >=57.5             1       18     201
24 months   ki0047075b-MAL-ED          PERU                           <42.5              0        5     201
24 months   ki0047075b-MAL-ED          PERU                           <42.5              1        5     201
24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)          0       20     201
24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)          1       19     201
24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)          0       43     201
24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)          1       32     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             0      152     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             1       14     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              0        2     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          0       11     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          1        2     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          0       40     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          1        7     228
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             0      149     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             1       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              0        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          0       11     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          0       38     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          1       13     249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             0      117     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5             1       51     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              0        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5              1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          0        9     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)          1        6     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          0       24     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)          1       24     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             0       51     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             1        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          0       24     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          1        4     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          0       27     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          1        6     121
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             0       80     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             1       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          0       53     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          1       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          0       54     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          1       20     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             0       33     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5             1       54     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5              1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          0       16     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)          1       43     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          0       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)          1       50     214
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5             0       98    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5             1       12    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5              0      168    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5              1      129    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)          0      433    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)          1      178    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)          0      253    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)          1       59    1330
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=57.5             0       13     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=57.5             1        3     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <42.5              0       24     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <42.5              1       17     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)          0       71     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)          1       18     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)          0       31     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)          1        5     182
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5             0       60     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5             1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5              0       84     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5              1       65     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          0      144     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          1       40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          0      105     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          1       25     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5             0       40     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5             1       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5              0       32     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5              1       91     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          0       68     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          1       79     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          0       51     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          1       49     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=57.5             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=57.5             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <42.5              0       12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <42.5              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          0        8      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)          1        0      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5             0       96     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5             1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5              0      109     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5              1       36     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)          0      149     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)          1       28     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)          0      135     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)          1       18     582
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5             0       93     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5             1       18     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5              0       75     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5              1       67     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)          0      102     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)          1       68     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)          0      117     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)          1       36     576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          1        1      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             0      163     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             1       26     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              0       66     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              1       35     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          0      173     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          1       51     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          0      163     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          1       38     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             0      125     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5             1       18     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              0       37     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5              1       29     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          0      112     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)          1       54     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          0      108     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)          1       31     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5             0     1146    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5             1      112    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5              0       23    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5              1        2    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)          0      149    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)          1       26    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)          0      479    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)          1       52    1989
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5             1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)          1        0       6
Birth       ki1119695-PROBIT           BELARUS                        >=57.5             0    10268   13767
Birth       ki1119695-PROBIT           BELARUS                        >=57.5             1       21   13767
Birth       ki1119695-PROBIT           BELARUS                        <42.5              0       32   13767
Birth       ki1119695-PROBIT           BELARUS                        <42.5              1        0   13767
Birth       ki1119695-PROBIT           BELARUS                        [42.5-50)          0      543   13767
Birth       ki1119695-PROBIT           BELARUS                        [42.5-50)          1        2   13767
Birth       ki1119695-PROBIT           BELARUS                        [50-57.5)          0     2891   13767
Birth       ki1119695-PROBIT           BELARUS                        [50-57.5)          1       10   13767
6 months    ki1119695-PROBIT           BELARUS                        >=57.5             0     9220   13068
6 months    ki1119695-PROBIT           BELARUS                        >=57.5             1      537   13068
6 months    ki1119695-PROBIT           BELARUS                        <42.5              0       22   13068
6 months    ki1119695-PROBIT           BELARUS                        <42.5              1        9   13068
6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)          0      473   13068
6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)          1       56   13068
6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)          0     2571   13068
6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)          1      180   13068
24 months   ki1119695-PROBIT           BELARUS                        >=57.5             0     2790    4013
24 months   ki1119695-PROBIT           BELARUS                        >=57.5             1      230    4013
24 months   ki1119695-PROBIT           BELARUS                        <42.5              0        3    4013
24 months   ki1119695-PROBIT           BELARUS                        <42.5              1        2    4013
24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)          0      130    4013
24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)          1       19    4013
24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)          0      748    4013
24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)          1       91    4013
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             0     5492   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             1      467   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              0      114   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              1       32   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          0     1193   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          1      195   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          0     3078   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          1      419   10990
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             0     3783    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             1      560    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              0       63    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              1       39    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          0      730    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          1      246    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          0     2041    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          1      480    7942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             0       83     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5             1      107     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              0        3     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5              1        6     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          0       13     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)          1       77     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          0       47     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)          1      100     436
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5             0       98     837
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5             1       29     837
6 months    ki1148112-LCNI-5           MALAWI                         <42.5              0       28     837
6 months    ki1148112-LCNI-5           MALAWI                         <42.5              1       44     837
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)          0      201     837
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)          1      132     837
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)          0      202     837
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)          1      103     837
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5             0       64     578
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5             1       22     578
24 months   ki1148112-LCNI-5           MALAWI                         <42.5              0       19     578
24 months   ki1148112-LCNI-5           MALAWI                         <42.5              1       29     578
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)          0      113     578
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)          1      112     578
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)          0      127     578
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)          1       92     578


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a477b7e1-a9ba-442f-85f5-82f07f865bfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a477b7e1-a9ba-442f-85f5-82f07f865bfe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a477b7e1-a9ba-442f-85f5-82f07f865bfe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a477b7e1-a9ba-442f-85f5-82f07f865bfe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.1400000   0.0436258   0.2363742
Birth       ki0047075b-MAL-ED         BANGLADESH   <42.5                NA                0.1698113   0.0685214   0.2711013
Birth       ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            NA                0.2000000   0.1147915   0.2852085
Birth       ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            NA                0.1551724   0.0618019   0.2485430
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.0783689   0.0715450   0.0851927
Birth       ki1126311-ZVITAMBO        ZIMBABWE     <42.5                NA                0.2191781   0.1520714   0.2862848
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            NA                0.1404899   0.1222080   0.1587718
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            NA                0.1198170   0.1090532   0.1305808
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.1190476   0.0208986   0.2171967
6 months    ki0047075b-MAL-ED         INDIA        <42.5                NA                0.1739130   0.0641455   0.2836806
6 months    ki0047075b-MAL-ED         INDIA        [42.5-50)            NA                0.2191781   0.1240766   0.3142796
6 months    ki0047075b-MAL-ED         INDIA        [50-57.5)            NA                0.2162162   0.1222221   0.3102103
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                0.1900000   0.1129687   0.2670313
6 months    ki0047075b-MAL-ED         PERU         <42.5                NA                0.3846154   0.1196660   0.6495647
6 months    ki0047075b-MAL-ED         PERU         [42.5-50)            NA                0.3148148   0.1907117   0.4389179
6 months    ki0047075b-MAL-ED         PERU         [50-57.5)            NA                0.1809524   0.1071806   0.2547241
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                0.1090909   0.0593434   0.1588384
6 months    ki1000304b-SAS-CompFeed   INDIA        <42.5                NA                0.4343434   0.3580832   0.5106037
6 months    ki1000304b-SAS-CompFeed   INDIA        [42.5-50)            NA                0.2913257   0.2507886   0.3318628
6 months    ki1000304b-SAS-CompFeed   INDIA        [50-57.5)            NA                0.1891026   0.1597269   0.2184782
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.1891892   0.0998700   0.2785084
6 months    ki1017093-NIH-Birth       BANGLADESH   <42.5                NA                0.4362416   0.3565395   0.5159437
6 months    ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            NA                0.2173913   0.1577376   0.2770450
6 months    ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            NA                0.1923077   0.1244963   0.2601191
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.1028037   0.0452097   0.1603978
6 months    ki1017093b-PROVIDE        BANGLADESH   <42.5                NA                0.2482759   0.1778983   0.3186534
6 months    ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            NA                0.1581921   0.1043857   0.2119985
6 months    ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            NA                0.1176471   0.0665510   0.1687431
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.1375661   0.0884256   0.1867067
6 months    ki1017093c-NIH-Crypto     BANGLADESH   <42.5                NA                0.3465347   0.2536645   0.4394048
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            NA                0.2276786   0.1727260   0.2826312
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            NA                0.1890547   0.1348866   0.2432228
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                0.0550374   0.0420826   0.0679923
6 months    ki1119695-PROBIT          BELARUS      <42.5                NA                0.2903226   0.0995447   0.4811004
6 months    ki1119695-PROBIT          BELARUS      [42.5-50)            NA                0.1058601   0.0768285   0.1348918
6 months    ki1119695-PROBIT          BELARUS      [50-57.5)            NA                0.0654308   0.0512157   0.0796458
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.1289431   0.1189752   0.1389110
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <42.5                NA                0.3823529   0.2880386   0.4766673
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            NA                0.2520492   0.2248078   0.2792906
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            NA                0.1904006   0.1750736   0.2057277
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.2283465   0.1552975   0.3013954
6 months    ki1148112-LCNI-5          MALAWI       <42.5                NA                0.6111111   0.4984396   0.7237827
6 months    ki1148112-LCNI-5          MALAWI       [42.5-50)            NA                0.3963964   0.3438278   0.4489650
6 months    ki1148112-LCNI-5          MALAWI       [50-57.5)            NA                0.3377049   0.2845979   0.3908120
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.2558140   0.1250935   0.3865344
24 months   ki0047075b-MAL-ED         BANGLADESH   <42.5                NA                0.7111111   0.5783708   0.8438514
24 months   ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            NA                0.5616438   0.4475513   0.6757364
24 months   ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            NA                0.2745098   0.1517420   0.3972776
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.3000000   0.1576719   0.4423281
24 months   ki0047075b-MAL-ED         INDIA        <42.5                NA                0.5227273   0.3748145   0.6706400
24 months   ki0047075b-MAL-ED         INDIA        [42.5-50)            NA                0.3714286   0.2579858   0.4848714
24 months   ki0047075b-MAL-ED         INDIA        [50-57.5)            NA                0.4583333   0.3429876   0.5736791
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                0.2337662   0.1389992   0.3285333
24 months   ki0047075b-MAL-ED         PERU         <42.5                NA                0.5000000   0.1893287   0.8106713
24 months   ki0047075b-MAL-ED         PERU         [42.5-50)            NA                0.4871795   0.3299167   0.6444423
24 months   ki0047075b-MAL-ED         PERU         [50-57.5)            NA                0.4266667   0.3144523   0.5388810
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.3220339   0.2026671   0.4414007
24 months   ki1017093-NIH-Birth       BANGLADESH   <42.5                NA                0.7398374   0.6622140   0.8174608
24 months   ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            NA                0.5374150   0.4567199   0.6181100
24 months   ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            NA                0.4900000   0.3919070   0.5880930
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.1621622   0.0935314   0.2307929
24 months   ki1017093b-PROVIDE        BANGLADESH   <42.5                NA                0.4718310   0.3896520   0.5540100
24 months   ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            NA                0.4000000   0.3262934   0.4737066
24 months   ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            NA                0.2352941   0.1680224   0.3025658
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.1258741   0.0714542   0.1802941
24 months   ki1017093c-NIH-Crypto     BANGLADESH   <42.5                NA                0.4393939   0.3195393   0.5592486
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            NA                0.3253012   0.2539642   0.3966382
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            NA                0.2230216   0.1537522   0.2922910
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.2558140   0.1635190   0.3481089
24 months   ki1148112-LCNI-5          MALAWI       <42.5                NA                0.6041667   0.4657023   0.7426310
24 months   ki1148112-LCNI-5          MALAWI       [42.5-50)            NA                0.4977778   0.4323897   0.5631659
24 months   ki1148112-LCNI-5          MALAWI       [50-57.5)            NA                0.4200913   0.3546648   0.4855178


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1707317   0.1236156   0.2178478
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1012739   0.0956332   0.1069146
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1914894   0.1410749   0.2419038
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2842105   0.2659845   0.3024365
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0598408   0.0469716   0.0727101
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1668346   0.1586345   0.1750346
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3679809   0.3352903   0.4006715
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4411765   0.4006626   0.4816903


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   <42.5                >=57.5            1.212938   0.4878157    3.015931
Birth       ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            >=57.5            1.428571   0.6357904    3.209888
Birth       ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            >=57.5            1.108374   0.4442330    2.765427
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               >=57.5            1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     <42.5                >=57.5            2.796750   2.0342815    3.844999
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            >=57.5            1.792675   1.5328590    2.096530
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            >=57.5            1.528885   1.3490895    1.732643
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED         INDIA        <42.5                >=57.5            1.460870   0.5172244    4.126139
6 months    ki0047075b-MAL-ED         INDIA        [42.5-50)            >=57.5            1.841096   0.7252063    4.674027
6 months    ki0047075b-MAL-ED         INDIA        [50-57.5)            >=57.5            1.816216   0.7151321    4.612632
6 months    ki0047075b-MAL-ED         PERU         >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED         PERU         <42.5                >=57.5            2.024291   0.9101922    4.502078
6 months    ki0047075b-MAL-ED         PERU         [42.5-50)            >=57.5            1.656920   0.9412708    2.916678
6 months    ki0047075b-MAL-ED         PERU         [50-57.5)            >=57.5            0.952381   0.5359306    1.692438
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        <42.5                >=57.5            3.981482   2.4938168    6.356600
6 months    ki1000304b-SAS-CompFeed   INDIA        [42.5-50)            >=57.5            2.670485   1.5733409    4.532707
6 months    ki1000304b-SAS-CompFeed   INDIA        [50-57.5)            >=57.5            1.733440   1.0773678    2.789033
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   <42.5                >=57.5            2.305849   1.3898757    3.825477
6 months    ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            >=57.5            1.149068   0.6655652    1.983815
6 months    ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            >=57.5            1.016484   0.5638787    1.832378
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   <42.5                >=57.5            2.415047   1.2889840    4.524844
6 months    ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            >=57.5            1.538778   0.7989845    2.963558
6 months    ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            >=57.5            1.144385   0.5632682    2.325033
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   <42.5                >=57.5            2.519040   1.6117314    3.937110
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            >=57.5            1.655048   1.0754286    2.547063
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            >=57.5            1.374282   0.8693636    2.172454
6 months    ki1119695-PROBIT          BELARUS      >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS      <42.5                >=57.5            5.275004   2.6704763   10.419742
6 months    ki1119695-PROBIT          BELARUS      [42.5-50)            >=57.5            1.923421   1.5031473    2.461202
6 months    ki1119695-PROBIT          BELARUS      [50-57.5)            >=57.5            1.188841   1.0353018    1.365152
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <42.5                >=57.5            2.965284   2.2898233    3.839994
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            >=57.5            1.954731   1.7115037    2.232525
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            >=57.5            1.476625   1.3206874    1.650975
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               >=57.5            1.000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5          MALAWI       <42.5                >=57.5            2.676245   1.8499965    3.871515
6 months    ki1148112-LCNI-5          MALAWI       [42.5-50)            >=57.5            1.735943   1.2278292    2.454330
6 months    ki1148112-LCNI-5          MALAWI       [50-57.5)            >=57.5            1.478915   1.0354552    2.112297
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   <42.5                >=57.5            2.779798   1.6134154    4.789391
24 months   ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            >=57.5            2.195517   1.2668354    3.804988
24 months   ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            >=57.5            1.073084   0.5441509    2.116157
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         INDIA        <42.5                >=57.5            1.742424   1.0028782    3.027329
24 months   ki0047075b-MAL-ED         INDIA        [42.5-50)            >=57.5            1.238095   0.7042206    2.176704
24 months   ki0047075b-MAL-ED         INDIA        [50-57.5)            >=57.5            1.527778   0.8929461    2.613937
24 months   ki0047075b-MAL-ED         PERU         >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         PERU         <42.5                >=57.5            2.138889   1.0185607    4.491481
24 months   ki0047075b-MAL-ED         PERU         [42.5-50)            >=57.5            2.084046   1.2412243    3.499163
24 months   ki0047075b-MAL-ED         PERU         [50-57.5)            >=57.5            1.825185   1.1257499    2.959184
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   <42.5                >=57.5            2.297390   1.5629033    3.377048
24 months   ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            >=57.5            1.668815   1.1187253    2.489390
24 months   ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            >=57.5            1.521579   0.9984793    2.318729
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   <42.5                >=57.5            2.909624   1.8411009    4.598289
24 months   ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            >=57.5            2.466667   1.5546815    3.913628
24 months   ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            >=57.5            1.450980   0.8706596    2.418103
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   <42.5                >=57.5            3.490741   2.0936724    5.820047
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            >=57.5            2.584337   1.5915302    4.196464
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            >=57.5            1.771783   1.0404444    3.017185
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               >=57.5            1.000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5          MALAWI       <42.5                >=57.5            2.361742   1.5402938    3.621275
24 months   ki1148112-LCNI-5          MALAWI       [42.5-50)            >=57.5            1.945859   1.3254402    2.856685
24 months   ki1148112-LCNI-5          MALAWI       [50-57.5)            >=57.5            1.642175   1.1085495    2.432674


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.0307317   -0.0572019   0.1186653
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.0229050    0.0176244   0.0281857
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.0724417   -0.0210007   0.1658842
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                0.0305882   -0.0327192   0.0938957
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                0.1751196    0.1186431   0.2315962
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.0789672   -0.0058010   0.1637355
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.0569901    0.0023540   0.1116261
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.0722241    0.0271677   0.1172805
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                0.0048034    0.0025676   0.0070393
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.0378914    0.0302800   0.0455028
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.1396344    0.0704572   0.2088117
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.2064502    0.0852828   0.3276176
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.1159292   -0.0153498   0.2472082
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                0.1343930    0.0533501   0.2154358
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.2327447    0.1207348   0.3447545
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.1659628    0.0998747   0.2320510
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.1309352    0.0785628   0.1833076
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.1853625    0.0980421   0.2726829


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.1800000   -0.5337384   0.5615941
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.2261692    0.1735894   0.2754036
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.3783069   -0.3471440   0.7130950
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                0.1386667   -0.2007227   0.3821262
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                0.6161616    0.3835752   0.7609896
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.2944820   -0.1022984   0.5484384
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.3566476   -0.0862704   0.6189693
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.3442681    0.0952388   0.5247538
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                0.0802700    0.0389779   0.1197879
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.2271198    0.1811340   0.2705230
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.3794611    0.1610234   0.5410259
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.4466065    0.1119606   0.6551456
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.2787234   -0.1173678   0.5344058
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                0.3650404    0.1056168   0.5492159
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.4195271    0.1760826   0.5910406
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.5057915    0.2639459   0.6681738
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.5098538    0.2709787   0.6704578
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.4201550    0.1847002   0.5876116
