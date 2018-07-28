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

**Intervention Variable:** mbmi

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
![](/tmp/2d6f9d3b-421a-4819-82fc-9985e8b51662/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d6f9d3b-421a-4819-82fc-9985e8b51662/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d6f9d3b-421a-4819-82fc-9985e8b51662/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d6f9d3b-421a-4819-82fc-9985e8b51662/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.1041859   0.0968091   0.1115628
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.1591358   0.1301771   0.1880946
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.0734007   0.0617299   0.0850715
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.0891026   0.0674501   0.1107552
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                0.2543853   0.2102769   0.2984938
6 months    ki1017093-NIH-Birth   BANGLADESH   <18.5                NA                0.3847277   0.2877948   0.4816606
6 months    ki1017093-NIH-Birth   BANGLADESH   [25-30)              NA                0.1639823   0.0693825   0.2585821
6 months    ki1017093-NIH-Birth   BANGLADESH   >=30                 NA                0.4131226   0.1873171   0.6389281
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                0.0585780   0.0452487   0.0719073
6 months    ki1119695-PROBIT      BELARUS      <18.5                NA                0.0931927   0.0724349   0.1139506
6 months    ki1119695-PROBIT      BELARUS      [25-30)              NA                0.0570457   0.0423578   0.0717336
6 months    ki1119695-PROBIT      BELARUS      >=30                 NA                0.0572329   0.0417810   0.0726848
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.1770679   0.1663309   0.1878049
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.2175817   0.1803783   0.2547851
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.1266997   0.1097133   0.1436861
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.1234289   0.0959682   0.1508897
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                0.0892261   0.0570491   0.1214032
24 months   ki1119695-PROBIT      BELARUS      <18.5                NA                0.0936283   0.0162659   0.1709907
24 months   ki1119695-PROBIT      BELARUS      [25-30)              NA                0.0757636   0.0309738   0.1205533
24 months   ki1119695-PROBIT      BELARUS      >=30                 NA                0.0918505   0.0550209   0.1286801
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                0.6903803   0.6361410   0.7446195
24 months   ki1126311-ZVITAMBO    ZIMBABWE     <18.5                NA                0.7275047   0.5981099   0.8568994
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              NA                0.5936197   0.4944808   0.6927587
24 months   ki1126311-ZVITAMBO    ZIMBABWE     >=30                 NA                0.7155058   0.5734808   0.8575307


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
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         1.5274210   1.2565208   1.8567261
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.7045162   0.5919883   0.8384340
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         0.8552268   0.6640042   1.1015184
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth   BANGLADESH   <18.5                [18.5-25)         1.5123815   1.1139587   2.0533058
6 months    ki1017093-NIH-Birth   BANGLADESH   [25-30)              [18.5-25)         0.6446216   0.3529312   1.1773883
6 months    ki1017093-NIH-Birth   BANGLADESH   >=30                 [18.5-25)         1.6240031   0.9153685   2.8812285
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT      BELARUS      <18.5                [18.5-25)         1.5909173   1.2788301   1.9791667
6 months    ki1119695-PROBIT      BELARUS      [25-30)              [18.5-25)         0.9738417   0.8106585   1.1698733
6 months    ki1119695-PROBIT      BELARUS      >=30                 [18.5-25)         0.9770379   0.7875239   1.2121575
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         1.2288035   1.0249822   1.4731554
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.7155430   0.6176888   0.8288994
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         0.6970712   0.5535420   0.8778163
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT      BELARUS      <18.5                [18.5-25)         1.0493373   0.5231373   2.1048181
24 months   ki1119695-PROBIT      BELARUS      [25-30)              [18.5-25)         0.8491184   0.4869935   1.4805168
24 months   ki1119695-PROBIT      BELARUS      >=30                 [18.5-25)         1.0294122   0.7177215   1.4764634
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO    ZIMBABWE     <18.5                [18.5-25)         1.0537738   0.8677926   1.2796136
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [25-30)              [18.5-25)         0.8598446   0.7151929   1.0337528
24 months   ki1126311-ZVITAMBO    ZIMBABWE     >=30                 [18.5-25)         1.0363937   0.8373859   1.2826963


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0049541   -0.0089767   -0.0009315
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                 0.0137711   -0.0115159    0.0390580
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                 0.0012976   -0.0024062    0.0050015
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0116438   -0.0174668   -0.0058208
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                -0.0038329   -0.0158066    0.0081408
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0299028   -0.0601949    0.0003893


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0499241   -0.0912014   -0.0102081
6 months    ki1017093-NIH-Birth   BANGLADESH   [18.5-25)            NA                 0.0513546   -0.0476730    0.1410220
6 months    ki1119695-PROBIT      BELARUS      [18.5-25)            NA                 0.0216724   -0.0423467    0.0817595
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0703877   -0.1061162   -0.0358132
24 months   ki1119695-PROBIT      BELARUS      [18.5-25)            NA                -0.0448850   -0.1961342    0.0872390
24 months   ki1126311-ZVITAMBO    ZIMBABWE     [18.5-25)            NA                -0.0452746   -0.0925957   -0.0000030
