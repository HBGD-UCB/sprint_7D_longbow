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

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a5763ca5-4ef8-4960-89b2-0c76108110e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a5763ca5-4ef8-4960-89b2-0c76108110e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a5763ca5-4ef8-4960-89b2-0c76108110e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a5763ca5-4ef8-4960-89b2-0c76108110e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.2149411   0.1349674   0.2949148
Birth       ki0047075b-MAL-ED         BANGLADESH   <42.5                NA                0.2289434   0.1465863   0.3113006
Birth       ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            NA                0.2504916   0.1721714   0.3288119
Birth       ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            NA                0.1974191   0.1231078   0.2717303
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.0782080   0.0713789   0.0850371
Birth       ki1126311-ZVITAMBO        ZIMBABWE     <42.5                NA                0.2230182   0.1793244   0.2667119
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            NA                0.1372758   0.1199319   0.1546197
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            NA                0.1214684   0.1106522   0.1322846
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.1314770   0.0467648   0.2161893
6 months    ki0047075b-MAL-ED         INDIA        <42.5                NA                0.1885454   0.0904906   0.2866003
6 months    ki0047075b-MAL-ED         INDIA        [42.5-50)            NA                0.2433431   0.1543801   0.3323062
6 months    ki0047075b-MAL-ED         INDIA        [50-57.5)            NA                0.2366394   0.1494251   0.3238537
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                0.1288867   0.0722745   0.1854990
6 months    ki0047075b-MAL-ED         PERU         <42.5                NA                0.1488168   0.0382032   0.2594305
6 months    ki0047075b-MAL-ED         PERU         [42.5-50)            NA                0.1770319   0.0987009   0.2553630
6 months    ki0047075b-MAL-ED         PERU         [50-57.5)            NA                0.1500798   0.0854321   0.2147274
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                0.1081376   0.0637356   0.1525396
6 months    ki1000304b-SAS-CompFeed   INDIA        <42.5                NA                0.4418568   0.3655382   0.5181754
6 months    ki1000304b-SAS-CompFeed   INDIA        [42.5-50)            NA                0.2953222   0.2561703   0.3344741
6 months    ki1000304b-SAS-CompFeed   INDIA        [50-57.5)            NA                0.1978580   0.1686897   0.2270264
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.1915381   0.1056664   0.2774098
6 months    ki1017093-NIH-Birth       BANGLADESH   <42.5                NA                0.4520186   0.3746078   0.5294294
6 months    ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            NA                0.2216788   0.1632116   0.2801460
6 months    ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            NA                0.1932138   0.1273367   0.2590910
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.0974663   0.0449966   0.1499360
6 months    ki1017093b-PROVIDE        BANGLADESH   <42.5                NA                0.2466129   0.1821034   0.3111225
6 months    ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            NA                0.1586419   0.1070581   0.2102257
6 months    ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            NA                0.1174887   0.0684005   0.1665770
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.1458687   0.0966710   0.1950664
6 months    ki1017093c-NIH-Crypto     BANGLADESH   <42.5                NA                0.3557373   0.2692700   0.4422046
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            NA                0.2294405   0.1748090   0.2840720
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            NA                0.1898592   0.1364424   0.2432760
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                0.0554587   0.0424143   0.0685032
6 months    ki1119695-PROBIT          BELARUS      <42.5                NA                0.3002135   0.2339858   0.3664413
6 months    ki1119695-PROBIT          BELARUS      [42.5-50)            NA                0.1115655   0.0862701   0.1368610
6 months    ki1119695-PROBIT          BELARUS      [50-57.5)            NA                0.0671045   0.0525583   0.0816507
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                0.1282042   0.1182541   0.1381544
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <42.5                NA                0.4123319   0.3562583   0.4684055
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            NA                0.2535138   0.2276009   0.2794267
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            NA                0.1922955   0.1770876   0.2075034
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.2333998   0.1608180   0.3059815
6 months    ki1148112-LCNI-5          MALAWI       <42.5                NA                0.6162343   0.5031828   0.7292858
6 months    ki1148112-LCNI-5          MALAWI       [42.5-50)            NA                0.3945790   0.3425085   0.4466495
6 months    ki1148112-LCNI-5          MALAWI       [50-57.5)            NA                0.3358576   0.2830119   0.3887032
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                0.1910733   0.0971323   0.2850142
24 months   ki0047075b-MAL-ED         BANGLADESH   <42.5                NA                0.7182484   0.6166198   0.8198771
24 months   ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            NA                0.5499861   0.4477825   0.6521897
24 months   ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            NA                0.2308008   0.1318145   0.3297872
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                0.3697756   0.2577750   0.4817763
24 months   ki0047075b-MAL-ED         INDIA        <42.5                NA                0.5722981   0.4512830   0.6933132
24 months   ki0047075b-MAL-ED         INDIA        [42.5-50)            NA                0.4185345   0.3206692   0.5163997
24 months   ki0047075b-MAL-ED         INDIA        [50-57.5)            NA                0.5058390   0.4077249   0.6039531
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                0.2048712   0.1228081   0.2869342
24 months   ki0047075b-MAL-ED         PERU         <42.5                NA                0.2359363   0.1109069   0.3609657
24 months   ki0047075b-MAL-ED         PERU         [42.5-50)            NA                0.4734659   0.3668142   0.5801177
24 months   ki0047075b-MAL-ED         PERU         [50-57.5)            NA                0.4341944   0.3359053   0.5324834
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                0.3390844   0.2338764   0.4442924
24 months   ki1017093-NIH-Birth       BANGLADESH   <42.5                NA                0.7500011   0.6753187   0.8246836
24 months   ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            NA                0.5406678   0.4629523   0.6183834
24 months   ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            NA                0.4939746   0.4008916   0.5870576
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                0.1406636   0.0775947   0.2037326
24 months   ki1017093b-PROVIDE        BANGLADESH   <42.5                NA                0.4573043   0.3815415   0.5330670
24 months   ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            NA                0.3922689   0.3224313   0.4621065
24 months   ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            NA                0.2107231   0.1476383   0.2738080
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                0.0975514   0.0525310   0.1425719
24 months   ki1017093c-NIH-Crypto     BANGLADESH   <42.5                NA                0.4461460   0.3358228   0.5564691
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            NA                0.3285864   0.2584475   0.3987252
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            NA                0.2184898   0.1501700   0.2868097
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                0.2336562   0.1432422   0.3240703
24 months   ki1148112-LCNI-5          MALAWI       <42.5                NA                0.5588989   0.4263524   0.6914453
24 months   ki1148112-LCNI-5          MALAWI       [42.5-50)            NA                0.4871993   0.4228727   0.5515260
24 months   ki1148112-LCNI-5          MALAWI       [50-57.5)            NA                0.4114095   0.3468104   0.4760085


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


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   <42.5                >=57.5            1.0651450   0.6342164   1.788875
Birth       ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            >=57.5            1.1653967   0.7170586   1.894056
Birth       ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            >=57.5            0.9184799   0.5398372   1.562703
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     <42.5                >=57.5            2.8516044   2.3011860   3.533677
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            >=57.5            1.7552668   1.5054056   2.046599
Birth       ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            >=57.5            1.5531464   1.3711336   1.759321
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         INDIA        <42.5                >=57.5            1.4340560   0.6263446   3.283363
6 months    ki0047075b-MAL-ED         INDIA        [42.5-50)            >=57.5            1.8508413   0.8819994   3.883918
6 months    ki0047075b-MAL-ED         INDIA        [50-57.5)            >=57.5            1.7998534   0.8573851   3.778316
6 months    ki0047075b-MAL-ED         PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         PERU         <42.5                >=57.5            1.1546325   0.4848544   2.749642
6 months    ki0047075b-MAL-ED         PERU         [42.5-50)            >=57.5            1.3735463   0.7372689   2.558943
6 months    ki0047075b-MAL-ED         PERU         [50-57.5)            >=57.5            1.1644314   0.6340429   2.138500
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        <42.5                >=57.5            4.0860618   2.6826735   6.223605
6 months    ki1000304b-SAS-CompFeed   INDIA        [42.5-50)            >=57.5            2.7309857   1.6753379   4.451808
6 months    ki1000304b-SAS-CompFeed   INDIA        [50-57.5)            >=57.5            1.8296883   1.1887361   2.816234
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   <42.5                >=57.5            2.3599410   1.4602982   3.813825
6 months    ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            >=57.5            1.1573613   0.6887827   1.944713
6 months    ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            >=57.5            1.0087487   0.5745194   1.771175
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   <42.5                >=57.5            2.5302383   1.3909047   4.602836
6 months    ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            >=57.5            1.6276592   0.8681468   3.051643
6 months    ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            >=57.5            1.2054294   0.6100451   2.381890
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   <42.5                >=57.5            2.4387505   1.6090513   3.696280
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            >=57.5            1.5729250   1.0408788   2.376927
6 months    ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            >=57.5            1.3015761   0.8389265   2.019367
6 months    ki1119695-PROBIT          BELARUS      >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT          BELARUS      <42.5                >=57.5            5.4132770   4.0094944   7.308544
6 months    ki1119695-PROBIT          BELARUS      [42.5-50)            >=57.5            2.0116851   1.6290854   2.484141
6 months    ki1119695-PROBIT          BELARUS      [50-57.5)            >=57.5            1.2099902   1.0566585   1.385572
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <42.5                >=57.5            3.2162106   2.7501976   3.761188
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [42.5-50)            >=57.5            1.9774210   1.7393392   2.248092
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [50-57.5)            >=57.5            1.4999153   1.3427238   1.675509
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       <42.5                >=57.5            2.6402526   1.8403496   3.787831
6 months    ki1148112-LCNI-5          MALAWI       [42.5-50)            >=57.5            1.6905716   1.2067350   2.368401
6 months    ki1148112-LCNI-5          MALAWI       [50-57.5)            >=57.5            1.4389799   1.0161098   2.037834
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   <42.5                >=57.5            3.7590210   2.2572467   6.259944
24 months   ki0047075b-MAL-ED         BANGLADESH   [42.5-50)            >=57.5            2.8784043   1.7063986   4.855379
24 months   ki0047075b-MAL-ED         BANGLADESH   [50-57.5)            >=57.5            1.2079180   0.6317393   2.309601
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         INDIA        <42.5                >=57.5            1.5476902   1.0720337   2.234393
24 months   ki0047075b-MAL-ED         INDIA        [42.5-50)            >=57.5            1.1318606   0.7727215   1.657917
24 months   ki0047075b-MAL-ED         INDIA        [50-57.5)            >=57.5            1.3679619   0.9585938   1.952151
24 months   ki0047075b-MAL-ED         PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         PERU         <42.5                >=57.5            1.1516325   0.5935102   2.234599
24 months   ki0047075b-MAL-ED         PERU         [42.5-50)            >=57.5            2.3110421   1.4588322   3.661090
24 months   ki0047075b-MAL-ED         PERU         [50-57.5)            >=57.5            2.1193532   1.3398086   3.352463
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   <42.5                >=57.5            2.2118419   1.5954590   3.066356
24 months   ki1017093-NIH-Birth       BANGLADESH   [42.5-50)            >=57.5            1.5944933   1.1313327   2.247269
24 months   ki1017093-NIH-Birth       BANGLADESH   [50-57.5)            >=57.5            1.4567894   1.0158986   2.089023
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   <42.5                >=57.5            3.2510487   2.0155058   5.244003
24 months   ki1017093b-PROVIDE        BANGLADESH   [42.5-50)            >=57.5            2.7887018   1.7226658   4.514432
24 months   ki1017093b-PROVIDE        BANGLADESH   [50-57.5)            >=57.5            1.4980643   0.8744581   2.566385
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   <42.5                >=57.5            4.5734432   2.7097416   7.718958
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [42.5-50)            >=57.5            3.3683395   2.0267903   5.597871
24 months   ki1017093c-NIH-Crypto     BANGLADESH   [50-57.5)            >=57.5            2.2397396   1.2819365   3.913168
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       <42.5                >=57.5            2.3919707   1.5196968   3.764912
24 months   ki1148112-LCNI-5          MALAWI       [42.5-50)            >=57.5            2.0851118   1.3864187   3.135915
24 months   ki1148112-LCNI-5          MALAWI       [50-57.5)            >=57.5            1.7607468   1.1603619   2.671778


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                -0.0442094   -0.1185918   0.0301731
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                 0.0230659    0.0177444   0.0283874
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                 0.0600123   -0.0222195   0.1422442
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                 0.0917015    0.0415409   0.1418621
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                 0.1760730    0.1241710   0.2279749
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                 0.0766183   -0.0049904   0.1582271
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                 0.0623275    0.0119291   0.1127260
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                 0.0639215    0.0185604   0.1092826
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                 0.0043821    0.0021610   0.0066032
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                 0.0386303    0.0309599   0.0463007
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                 0.1345811    0.0659507   0.2032115
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                 0.2711909    0.1786059   0.3637759
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                 0.0461536   -0.0578958   0.1502029
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                 0.1632880    0.0875994   0.2389766
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                 0.2156941    0.1163081   0.3150802
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                 0.1874614    0.1258073   0.2491155
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                 0.1592579    0.1129509   0.2055649
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                 0.2075202    0.1219723   0.2930682


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                -0.2589406   -0.8069404   0.1228646
Birth       ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                 0.2277579    0.1748146   0.2773044
6 months    ki0047075b-MAL-ED         INDIA        >=57.5               NA                 0.3133977   -0.2584091   0.6253820
6 months    ki0047075b-MAL-ED         PERU         >=57.5               NA                 0.4157135    0.1585089   0.5943026
6 months    ki1000304b-SAS-CompFeed   INDIA        >=57.5               NA                 0.6195159    0.4147564   0.7526362
6 months    ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                 0.2857225   -0.0908115   0.5322819
6 months    ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                 0.3900497   -0.0095469   0.6314789
6 months    ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                 0.3046926    0.0567392   0.4874669
6 months    ki1119695-PROBIT          BELARUS      >=57.5               NA                 0.0732291    0.0321238   0.1125886
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=57.5               NA                 0.2315486    0.1852858   0.2751844
6 months    ki1148112-LCNI-5          MALAWI       >=57.5               NA                 0.3657286    0.1500716   0.5266657
24 months   ki0047075b-MAL-ED         BANGLADESH   >=57.5               NA                 0.5866578    0.3472342   0.7382649
24 months   ki0047075b-MAL-ED         INDIA        >=57.5               NA                 0.1109650   -0.1745815   0.3270937
24 months   ki0047075b-MAL-ED         PERU         >=57.5               NA                 0.4435256    0.2121992   0.6069263
24 months   ki1017093-NIH-Birth       BANGLADESH   >=57.5               NA                 0.3887932    0.1814046   0.5436405
24 months   ki1017093b-PROVIDE        BANGLADESH   >=57.5               NA                 0.5713109    0.3455528   0.7191915
24 months   ki1017093c-NIH-Crypto     BANGLADESH   >=57.5               NA                 0.6201406    0.4178284   0.7521467
24 months   ki1148112-LCNI-5          MALAWI       >=57.5               NA                 0.4703792    0.2363306   0.6326969
