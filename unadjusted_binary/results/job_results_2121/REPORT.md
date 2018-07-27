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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi         stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          0      130     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          1       28     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <18.5              0       25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <18.5              1        5     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1        5     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30               0        2     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30               1        4     246
6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          0      124     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          1       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5              0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5              1       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       48     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               0        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               1        4     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          0       69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)          1       65     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5              0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5              1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)            1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        3     212
Birth       ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          0       62     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          1        8     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <18.5              0        7     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <18.5              1        2     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       62     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        7     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30               0       34     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30               1        2     184
6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          0       78     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5              0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       78     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               1        3     208
24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          0       59     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)          1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5              0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5              1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            0       66     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)            1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       32     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        2     168
Birth       ki0047075b-MAL-ED          INDIA                          [18.5-25)          0       96     198
Birth       ki0047075b-MAL-ED          INDIA                          [18.5-25)          1       21     198
Birth       ki0047075b-MAL-ED          INDIA                          <18.5              0       32     198
Birth       ki0047075b-MAL-ED          INDIA                          <18.5              1        7     198
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)            0       29     198
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)            1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          >=30               0        9     198
Birth       ki0047075b-MAL-ED          INDIA                          >=30               1        1     198
6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)          0      110     235
6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)          1       27     235
6 months    ki0047075b-MAL-ED          INDIA                          <18.5              0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          <18.5              1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)            0       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)            1        9     235
6 months    ki0047075b-MAL-ED          INDIA                          >=30               0        9     235
6 months    ki0047075b-MAL-ED          INDIA                          >=30               1        1     235
24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)          0       75     226
24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)          1       58     226
24 months   ki0047075b-MAL-ED          INDIA                          <18.5              0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          <18.5              1       18     226
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            0       23     226
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)            1       15     226
24 months   ki0047075b-MAL-ED          INDIA                          >=30               0        6     226
24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        3     226
6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)          0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)          1       10     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)            0       85     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)            1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30               0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30               1        0     236
24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)          0       93     228
24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)          1       34     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            0       70     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)            1       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0     228
Birth       ki0047075b-MAL-ED          NEPAL                          [18.5-25)          0       88     172
Birth       ki0047075b-MAL-ED          NEPAL                          [18.5-25)          1       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)            0       56     172
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)            1        6     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=30               0       10     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=30               1        1     172
Birth       ki0047075b-MAL-ED          PERU                           [18.5-25)          0      130     276
Birth       ki0047075b-MAL-ED          PERU                           [18.5-25)          1       19     276
Birth       ki0047075b-MAL-ED          PERU                           <18.5              0        3     276
Birth       ki0047075b-MAL-ED          PERU                           <18.5              1        2     276
Birth       ki0047075b-MAL-ED          PERU                           [25-30)            0       95     276
Birth       ki0047075b-MAL-ED          PERU                           [25-30)            1       11     276
Birth       ki0047075b-MAL-ED          PERU                           >=30               0       15     276
Birth       ki0047075b-MAL-ED          PERU                           >=30               1        1     276
6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)          0      113     272
6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)          1       36     272
6 months    ki0047075b-MAL-ED          PERU                           <18.5              0        3     272
6 months    ki0047075b-MAL-ED          PERU                           <18.5              1        2     272
6 months    ki0047075b-MAL-ED          PERU                           [25-30)            0       82     272
6 months    ki0047075b-MAL-ED          PERU                           [25-30)            1       20     272
6 months    ki0047075b-MAL-ED          PERU                           >=30               0       14     272
6 months    ki0047075b-MAL-ED          PERU                           >=30               1        2     272
24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)          0       62     201
24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)          1       44     201
24 months   ki0047075b-MAL-ED          PERU                           <18.5              0        2     201
24 months   ki0047075b-MAL-ED          PERU                           <18.5              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)            0       50     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)            1       25     201
24 months   ki0047075b-MAL-ED          PERU                           >=30               0       13     201
24 months   ki0047075b-MAL-ED          PERU                           >=30               1        3     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          0       81     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          1       15     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              0        5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       64     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1        6     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       55     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        2     228
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          0       77     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          1       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              0        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       60     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1       19     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       58     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        6     249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          0       54     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)          1       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              0        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5              1        5     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            0       49     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)            1       26     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       47     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1       13     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          0       70     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          1       11     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              0        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              1        2     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       24     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0        4     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     121
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          0      127     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          1       43     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       43     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        3     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          0       37     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)          1      111     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5              1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)            1       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        5     214
6 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)          0      624    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)          1      231    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5              0      194    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5              1      111    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)            0       50    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)            1       11    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30               0        5    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30               1        1    1227
Birth       ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)          0       64     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)          1       21     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <18.5              0       26     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <18.5              1       13     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)            0        4     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)            1        1     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30               0        1     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30               1        0     130
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          0      279     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          1       95     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5              0       58     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5              1       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)            0       47     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)            1        9     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               0        9     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               1        5     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          0      130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          1      162     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5              0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5              1       57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            0       34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)            1       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0        4     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        5     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          0       22      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <18.5              0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <18.5              1        0      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)          0      309     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)          1       61     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5              0       81     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5              1       20     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)            0       84     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)            1        8     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               0       15     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               1        4     582
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)          0      237     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)          1      127     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5              0       58     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5              1       42     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            0       76     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)            1       17     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0       16     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        3     576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          0       13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          0      363     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          1       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              0       42     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              1       25     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            0      128     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            1       31     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0       32     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        4     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          0      235     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)          1       88     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              0       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5              1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)            1       25     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        3     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)          0      942    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)          1       92    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5              0       30    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5              1        4    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            0      574    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            1       61    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      248    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       32    1983
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1        1       6
Birth       ki1119695-PROBIT           BELARUS                        [18.5-25)          0     8129   13723
Birth       ki1119695-PROBIT           BELARUS                        [18.5-25)          1       20   13723
Birth       ki1119695-PROBIT           BELARUS                        <18.5              0      522   13723
Birth       ki1119695-PROBIT           BELARUS                        <18.5              1        1   13723
Birth       ki1119695-PROBIT           BELARUS                        [25-30)            0     3509   13723
Birth       ki1119695-PROBIT           BELARUS                        [25-30)            1       10   13723
Birth       ki1119695-PROBIT           BELARUS                        >=30               0     1530   13723
Birth       ki1119695-PROBIT           BELARUS                        >=30               1        2   13723
6 months    ki1119695-PROBIT           BELARUS                        [18.5-25)          0     7278   13027
6 months    ki1119695-PROBIT           BELARUS                        [18.5-25)          1      455   13027
6 months    ki1119695-PROBIT           BELARUS                        <18.5              0      458   13027
6 months    ki1119695-PROBIT           BELARUS                        <18.5              1       47   13027
6 months    ki1119695-PROBIT           BELARUS                        [25-30)            0     3161   13027
6 months    ki1119695-PROBIT           BELARUS                        [25-30)            1      187   13027
6 months    ki1119695-PROBIT           BELARUS                        >=30               0     1350   13027
6 months    ki1119695-PROBIT           BELARUS                        >=30               1       91   13027
24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)          0     2138    4005
24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)          1      210    4005
24 months   ki1119695-PROBIT           BELARUS                        <18.5              0      128    4005
24 months   ki1119695-PROBIT           BELARUS                        <18.5              1       14    4005
24 months   ki1119695-PROBIT           BELARUS                        [25-30)            0      977    4005
24 months   ki1119695-PROBIT           BELARUS                        [25-30)            1       80    4005
24 months   ki1119695-PROBIT           BELARUS                        >=30               0      420    4005
24 months   ki1119695-PROBIT           BELARUS                        >=30               1       38    4005
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          0     5912    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          1      686    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              0      432    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              1       78    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            0     1808    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            1      144    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      526    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       48    9634
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          0     3997    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          1      853    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              0      285    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              1       77    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            0     1284    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            1      188    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      367    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       58    7109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          0       85     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)          1      185     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              0        8     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5              1       17     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            0       28     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)            1       36     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0        7     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       11     377
6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)          0      414     836
6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)          1      237     836
6 months    ki1148112-LCNI-5           MALAWI                         <18.5              0       83     836
6 months    ki1148112-LCNI-5           MALAWI                         <18.5              1       62     836
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)            0       31     836
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)            1        8     836
6 months    ki1148112-LCNI-5           MALAWI                         >=30               0        1     836
6 months    ki1148112-LCNI-5           MALAWI                         >=30               1        0     836
24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)          0      252     577
24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)          1      198     577
24 months   ki1148112-LCNI-5           MALAWI                         <18.5              0       49     577
24 months   ki1148112-LCNI-5           MALAWI                         <18.5              1       46     577
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            0       21     577
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)            1       10     577
24 months   ki1148112-LCNI-5           MALAWI                         >=30               0        1     577
24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        0     577


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8d3d42f8-71ff-4746-a56e-0b310af34482/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d3d42f8-71ff-4746-a56e-0b310af34482/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d3d42f8-71ff-4746-a56e-0b310af34482/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d3d42f8-71ff-4746-a56e-0b310af34482/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.1039709   0.0966058   0.1113360
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.1529412   0.1217016   0.1841807
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.0737705   0.0621739   0.0853671
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.0836237   0.0609764   0.1062710
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                0.2540107   0.2098527   0.2981687
6 months    ki1017093-NIH-Birth   BANGLADESH   <18.5                NA                0.3763441   0.2777896   0.4748986
6 months    ki1017093-NIH-Birth   BANGLADESH   [25-30)              NA                0.1607143   0.0644332   0.2569954
6 months    ki1017093-NIH-Birth   BANGLADESH   >=30                 NA                0.3571429   0.1059154   0.6083703
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                0.0588387   0.0454760   0.0722015
6 months    ki1119695-PROBIT      BELARUS      <18.5                NA                0.0930693   0.0662215   0.1199172
6 months    ki1119695-PROBIT      BELARUS      [25-30)              NA                0.0558542   0.0413219   0.0703866
6 months    ki1119695-PROBIT      BELARUS      >=30                 NA                0.0631506   0.0453015   0.0809997
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.1758763   0.1651609   0.1865917
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.2127072   0.1705488   0.2548655
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.1277174   0.1106653   0.1447695
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.1364706   0.1038312   0.1691100
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                0.0894378   0.0568842   0.1219914
24 months   ki1119695-PROBIT      BELARUS      <18.5                NA                0.0985915   0.0083975   0.1887856
24 months   ki1119695-PROBIT      BELARUS      [25-30)              NA                0.0756859   0.0319977   0.1193741
24 months   ki1119695-PROBIT      BELARUS      >=30                 NA                0.0829694   0.0426321   0.1233068
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.6851852   0.6297131   0.7406573
24 months   ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.6800000   0.4969017   0.8630983
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.5625000   0.4408015   0.6841985
24 months   ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.6111111   0.3856034   0.8366188


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0992319   0.0932615   0.1052022
6 months    ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1119695-PROBIT      BELARUS      NA                   NA                0.0598756   0.0470544   0.0726968
6 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.1654241   0.1567862   0.1740620
24 months   ki1119695-PROBIT      BELARUS      NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.6604775   0.6126125   0.7083424


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         1.4709998   1.1850072   1.8260147
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.7095302   0.5971573   0.8430493
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         0.8042990   0.6079156   1.0641230
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth   BANGLADESH   <18.5                [18.5-25)         1.4816072   1.0819925   2.0288125
6 months    ki1017093-NIH-Birth   BANGLADESH   [25-30)              [18.5-25)         0.6327068   0.3390716   1.1806291
6 months    ki1017093-NIH-Birth   BANGLADESH   >=30                 [18.5-25)         1.4060150   0.6812403   2.9018811
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT      BELARUS      <18.5                [18.5-25)         1.5817691   1.2149882   2.0592739
6 months    ki1119695-PROBIT      BELARUS      [25-30)              [18.5-25)         0.9492766   0.7919663   1.1378338
6 months    ki1119695-PROBIT      BELARUS      >=30                 [18.5-25)         1.0732824   0.8587945   1.3413398
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         1.2094136   0.9829312   1.4880811
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.7261774   0.6270560   0.8409674
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         0.7759465   0.6062408   0.9931580
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT      BELARUS      <18.5                [18.5-25)         1.1023474   0.5043750   2.4092586
24 months   ki1119695-PROBIT      BELARUS      [25-30)              [18.5-25)         0.8462405   0.4893470   1.4634258
24 months   ki1119695-PROBIT      BELARUS      >=30                 [18.5-25)         0.9276773   0.6092126   1.4126188
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         0.9924324   0.7491873   1.3146541
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.8209459   0.6516144   1.0342807
24 months   ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         0.8918919   0.6112803   1.3013197


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0047390   -0.0086873   -0.0007908
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                 0.0141457   -0.0111588    0.0394503
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                 0.0010369   -0.0024933    0.0045671
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0104522   -0.0161762   -0.0047281
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                -0.0040446   -0.0162156    0.0081264
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0247077   -0.0557015    0.0062860


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0477570   -0.0882273   -0.0087917
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                 0.0527518   -0.0463760    0.1424888
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                 0.0173176   -0.0436444    0.0747186
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0631841   -0.0982616   -0.0292270
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                -0.0473639   -0.2008294    0.0864887
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0374089   -0.0856609    0.0086985
