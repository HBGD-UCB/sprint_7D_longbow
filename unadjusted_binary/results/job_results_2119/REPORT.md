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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm        stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=160              0        4     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=160              1        0     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <145               0       41     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <145               1       14     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [145-150)          0       70     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [145-150)          1       16     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [150-155)          0       71     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [150-155)          1        9     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [155-160)          0       18     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [155-160)          1        3     246
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160              0        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <145               0       37     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <145               1       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)          0       67     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)          1       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)          0       71     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)          1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)          0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)          1        3     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160              0        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160              1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <145               0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <145               1       30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)          0       38     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)          1       42     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)          0       44     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)          1       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)          0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)          1        3     212
Birth       ki0047075b-MAL-ED          BRAZIL                         >=160              0       54     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=160              1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <145               0        6     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <145               1        1     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [145-150)          0       24     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [145-150)          1        6     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [150-155)          0       36     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [150-155)          1        4     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [155-160)          0       45     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [155-160)          1        5     184
6 months    ki0047075b-MAL-ED          BRAZIL                         >=160              0       63     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=160              1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <145               0        7     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <145               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)          0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)          1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)          0       48     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)          1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)          0       55     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)          1        1     209
24 months   ki0047075b-MAL-ED          BRAZIL                         >=160              0       45     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=160              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <145               0        7     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <145               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)          0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)          1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)          0       39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)          1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)          0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)          1        1     169
Birth       ki0047075b-MAL-ED          INDIA                          >=160              0       12     198
Birth       ki0047075b-MAL-ED          INDIA                          >=160              1        1     198
Birth       ki0047075b-MAL-ED          INDIA                          <145               0       20     198
Birth       ki0047075b-MAL-ED          INDIA                          <145               1        4     198
Birth       ki0047075b-MAL-ED          INDIA                          [145-150)          0       44     198
Birth       ki0047075b-MAL-ED          INDIA                          [145-150)          1       13     198
Birth       ki0047075b-MAL-ED          INDIA                          [150-155)          0       59     198
Birth       ki0047075b-MAL-ED          INDIA                          [150-155)          1       12     198
Birth       ki0047075b-MAL-ED          INDIA                          [155-160)          0       31     198
Birth       ki0047075b-MAL-ED          INDIA                          [155-160)          1        2     198
6 months    ki0047075b-MAL-ED          INDIA                          >=160              0       12     235
6 months    ki0047075b-MAL-ED          INDIA                          >=160              1        2     235
6 months    ki0047075b-MAL-ED          INDIA                          <145               0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          <145               1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          [145-150)          0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          [145-150)          1       21     235
6 months    ki0047075b-MAL-ED          INDIA                          [150-155)          0       70     235
6 months    ki0047075b-MAL-ED          INDIA                          [150-155)          1       13     235
6 months    ki0047075b-MAL-ED          INDIA                          [155-160)          0       36     235
6 months    ki0047075b-MAL-ED          INDIA                          [155-160)          1        5     235
24 months   ki0047075b-MAL-ED          INDIA                          >=160              0       11     226
24 months   ki0047075b-MAL-ED          INDIA                          >=160              1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          <145               0       13     226
24 months   ki0047075b-MAL-ED          INDIA                          <145               1       13     226
24 months   ki0047075b-MAL-ED          INDIA                          [145-150)          0       32     226
24 months   ki0047075b-MAL-ED          INDIA                          [145-150)          1       37     226
24 months   ki0047075b-MAL-ED          INDIA                          [150-155)          0       48     226
24 months   ki0047075b-MAL-ED          INDIA                          [150-155)          1       30     226
24 months   ki0047075b-MAL-ED          INDIA                          [155-160)          0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          [155-160)          1       12     226
6 months    ki0047075b-MAL-ED          NEPAL                          >=160              0        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=160              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <145               0       33     236
6 months    ki0047075b-MAL-ED          NEPAL                          <145               1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)          0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)          1        6     236
6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)          0       71     236
6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)          1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)          0       36     236
6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)          1        0     236
24 months   ki0047075b-MAL-ED          NEPAL                          >=160              0        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=160              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <145               0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          <145               1       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)          0       64     228
24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)          1       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)          0       58     228
24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)          1       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)          0       34     228
24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)          1        0     228
Birth       ki0047075b-MAL-ED          NEPAL                          >=160              0        2     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=160              1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          <145               0       22     172
Birth       ki0047075b-MAL-ED          NEPAL                          <145               1        3     172
Birth       ki0047075b-MAL-ED          NEPAL                          [145-150)          0       59     172
Birth       ki0047075b-MAL-ED          NEPAL                          [145-150)          1        5     172
Birth       ki0047075b-MAL-ED          NEPAL                          [150-155)          0       48     172
Birth       ki0047075b-MAL-ED          NEPAL                          [150-155)          1        8     172
Birth       ki0047075b-MAL-ED          NEPAL                          [155-160)          0       23     172
Birth       ki0047075b-MAL-ED          NEPAL                          [155-160)          1        2     172
Birth       ki0047075b-MAL-ED          PERU                           >=160              0       10     276
Birth       ki0047075b-MAL-ED          PERU                           >=160              1        1     276
Birth       ki0047075b-MAL-ED          PERU                           <145               0       29     276
Birth       ki0047075b-MAL-ED          PERU                           <145               1       11     276
Birth       ki0047075b-MAL-ED          PERU                           [145-150)          0       89     276
Birth       ki0047075b-MAL-ED          PERU                           [145-150)          1       13     276
Birth       ki0047075b-MAL-ED          PERU                           [150-155)          0       71     276
Birth       ki0047075b-MAL-ED          PERU                           [150-155)          1        5     276
Birth       ki0047075b-MAL-ED          PERU                           [155-160)          0       44     276
Birth       ki0047075b-MAL-ED          PERU                           [155-160)          1        3     276
6 months    ki0047075b-MAL-ED          PERU                           >=160              0       11     272
6 months    ki0047075b-MAL-ED          PERU                           >=160              1        1     272
6 months    ki0047075b-MAL-ED          PERU                           <145               0       25     272
6 months    ki0047075b-MAL-ED          PERU                           <145               1       13     272
6 months    ki0047075b-MAL-ED          PERU                           [145-150)          0       76     272
6 months    ki0047075b-MAL-ED          PERU                           [145-150)          1       25     272
6 months    ki0047075b-MAL-ED          PERU                           [150-155)          0       60     272
6 months    ki0047075b-MAL-ED          PERU                           [150-155)          1       15     272
6 months    ki0047075b-MAL-ED          PERU                           [155-160)          0       40     272
6 months    ki0047075b-MAL-ED          PERU                           [155-160)          1        6     272
24 months   ki0047075b-MAL-ED          PERU                           >=160              0        7     201
24 months   ki0047075b-MAL-ED          PERU                           >=160              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           <145               0       10     201
24 months   ki0047075b-MAL-ED          PERU                           <145               1       19     201
24 months   ki0047075b-MAL-ED          PERU                           [145-150)          0       43     201
24 months   ki0047075b-MAL-ED          PERU                           [145-150)          1       31     201
24 months   ki0047075b-MAL-ED          PERU                           [150-155)          0       37     201
24 months   ki0047075b-MAL-ED          PERU                           [150-155)          1       15     201
24 months   ki0047075b-MAL-ED          PERU                           [155-160)          0       30     201
24 months   ki0047075b-MAL-ED          PERU                           [155-160)          1        7     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              0       93     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              1       11     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <145               0        8     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <145               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          0        9     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          1        2     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          0       32     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          1        4     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          0       63     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          1        6     228
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              0       98     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              1       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145               0        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145               1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          0        9     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          0       29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          1       11     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          0       58     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          1       17     249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              0       76     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160              1       31     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145               0        4     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145               1        4     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          0        6     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)          1        6     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          0       20     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)          1       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          0       46     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)          1       27     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              0       29     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              1        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               0        2     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          0        7     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          1        4     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          0       26     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          0       39     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          1        7     121
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              0       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               0        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          1       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          0       49     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          1       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          0       67     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          1       18     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160              1       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145               1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)          1       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)          1       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          0       25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)          1       48     214
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160              0      145    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160              1       26    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145               0       60    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145               1       43    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)          0      140    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)          1       95    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)          0      266    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)          1      114    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)          0      263    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)          1       76    1228
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=160              0       11     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=160              1        1     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <145               0        3     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <145               1        3     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [145-150)          0       10     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [145-150)          1        9     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [150-155)          0       34     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [150-155)          1       12     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [155-160)          0       37     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [155-160)          1       10     130
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160              0       14     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160              1        2     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145               0       16     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145               1       38     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)          0       62     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)          1       59     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)          0       85     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)          1       45     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)          0       40     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)          1       18     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160              0       19     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160              1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <145               0       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <145               1       42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)          0      130     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)          1       53     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)          0      135     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)          1       33     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)          0       61     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)          1       16     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160              0       15     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160              1        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <145               0       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <145               1       61     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)          0       57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)          1       89     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)          0       67     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)          1       62     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)          0       36     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)          1       25     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     <145               0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <145               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [145-150)          0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [145-150)          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [150-155)          0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [150-155)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [155-160)          0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [155-160)          1        0      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160              0       26     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160              1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <145               0       52     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <145               1       23     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)          0      165     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)          1       34     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)          0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)          1       25     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)          0       89     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)          1        7     582
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160              0       26     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160              1        6     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145               0       35     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145               1       37     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)          0      135     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)          1       65     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)          0      115     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)          1       67     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)          0       76     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)          1       14     576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=160              0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=160              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <145               0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <145               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160              0       20     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160              1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145               0       71     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145               1       35     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          0      176     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          1       54     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          0      202     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          0       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          1       16     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160              0       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145               0       40     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145               1       31     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          0      115     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)          1       53     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          0      136     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)          1       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          0       79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)          1        8     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160              0      538    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160              1       33    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145               0       26    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145               1        6    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)          0      124    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)          1       29    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)          0      496    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)          1       69    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)          0      622    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)          1       53    1996
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)          1        0       6
Birth       ki1101329-Keneba           GAMBIA                         >=160              0      696    1429
Birth       ki1101329-Keneba           GAMBIA                         >=160              1       30    1429
Birth       ki1101329-Keneba           GAMBIA                         <145               0        2    1429
Birth       ki1101329-Keneba           GAMBIA                         <145               1        1    1429
Birth       ki1101329-Keneba           GAMBIA                         [145-150)          0       19    1429
Birth       ki1101329-Keneba           GAMBIA                         [145-150)          1        1    1429
Birth       ki1101329-Keneba           GAMBIA                         [150-155)          0      206    1429
Birth       ki1101329-Keneba           GAMBIA                         [150-155)          1       14    1429
Birth       ki1101329-Keneba           GAMBIA                         [155-160)          0      434    1429
Birth       ki1101329-Keneba           GAMBIA                         [155-160)          1       26    1429
6 months    ki1101329-Keneba           GAMBIA                         >=160              0      871    1877
6 months    ki1101329-Keneba           GAMBIA                         >=160              1       87    1877
6 months    ki1101329-Keneba           GAMBIA                         <145               0        1    1877
6 months    ki1101329-Keneba           GAMBIA                         <145               1        3    1877
6 months    ki1101329-Keneba           GAMBIA                         [145-150)          0       18    1877
6 months    ki1101329-Keneba           GAMBIA                         [145-150)          1       12    1877
6 months    ki1101329-Keneba           GAMBIA                         [150-155)          0      215    1877
6 months    ki1101329-Keneba           GAMBIA                         [150-155)          1       60    1877
6 months    ki1101329-Keneba           GAMBIA                         [155-160)          0      504    1877
6 months    ki1101329-Keneba           GAMBIA                         [155-160)          1      106    1877
24 months   ki1101329-Keneba           GAMBIA                         >=160              0      621    1602
24 months   ki1101329-Keneba           GAMBIA                         >=160              1      189    1602
24 months   ki1101329-Keneba           GAMBIA                         <145               0        0    1602
24 months   ki1101329-Keneba           GAMBIA                         <145               1        3    1602
24 months   ki1101329-Keneba           GAMBIA                         [145-150)          0       10    1602
24 months   ki1101329-Keneba           GAMBIA                         [145-150)          1       16    1602
24 months   ki1101329-Keneba           GAMBIA                         [150-155)          0      124    1602
24 months   ki1101329-Keneba           GAMBIA                         [150-155)          1      111    1602
24 months   ki1101329-Keneba           GAMBIA                         [155-160)          0      303    1602
24 months   ki1101329-Keneba           GAMBIA                         [155-160)          1      225    1602
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160              0        9     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160              1        2     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145               0       29     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145               1       20     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)          0       55     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)          1       22     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)          0       49     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)          1       20     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)          0       19     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)          1        6     231
Birth       ki1119695-PROBIT           BELARUS                        >=160              0    11134   13729
Birth       ki1119695-PROBIT           BELARUS                        >=160              1       21   13729
Birth       ki1119695-PROBIT           BELARUS                        <145               0        4   13729
Birth       ki1119695-PROBIT           BELARUS                        <145               1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [145-150)          0       25   13729
Birth       ki1119695-PROBIT           BELARUS                        [145-150)          1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [150-155)          0      493   13729
Birth       ki1119695-PROBIT           BELARUS                        [150-155)          1        1   13729
Birth       ki1119695-PROBIT           BELARUS                        [155-160)          0     2040   13729
Birth       ki1119695-PROBIT           BELARUS                        [155-160)          1       11   13729
6 months    ki1119695-PROBIT           BELARUS                        >=160              0    10030   13033
6 months    ki1119695-PROBIT           BELARUS                        >=160              1      554   13033
6 months    ki1119695-PROBIT           BELARUS                        <145               0        4   13033
6 months    ki1119695-PROBIT           BELARUS                        <145               1        0   13033
6 months    ki1119695-PROBIT           BELARUS                        [145-150)          0       19   13033
6 months    ki1119695-PROBIT           BELARUS                        [145-150)          1        5   13033
6 months    ki1119695-PROBIT           BELARUS                        [150-155)          0      419   13033
6 months    ki1119695-PROBIT           BELARUS                        [150-155)          1       53   13033
6 months    ki1119695-PROBIT           BELARUS                        [155-160)          0     1781   13033
6 months    ki1119695-PROBIT           BELARUS                        [155-160)          1      168   13033
24 months   ki1119695-PROBIT           BELARUS                        >=160              0     3022    4005
24 months   ki1119695-PROBIT           BELARUS                        >=160              1      242    4005
24 months   ki1119695-PROBIT           BELARUS                        <145               0        2    4005
24 months   ki1119695-PROBIT           BELARUS                        <145               1        0    4005
24 months   ki1119695-PROBIT           BELARUS                        [145-150)          0        4    4005
24 months   ki1119695-PROBIT           BELARUS                        [145-150)          1        3    4005
24 months   ki1119695-PROBIT           BELARUS                        [150-155)          0      113    4005
24 months   ki1119695-PROBIT           BELARUS                        [150-155)          1       24    4005
24 months   ki1119695-PROBIT           BELARUS                        [155-160)          0      522    4005
24 months   ki1119695-PROBIT           BELARUS                        [155-160)          1       73    4005
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160              0     4430    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160              1      420    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145               0       51    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145               1       13    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          0      270    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          1       37    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          0     1411    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          1      181    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          0     2547    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          1      307    9667
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160              0     3099    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160              1      439    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145               0       35    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145               1       10    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          0      147    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          1       97    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          0      921    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          1      244    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          0     1744    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          1      390    7126
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160              0       77     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160              1       93     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145               0        0     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145               1        7     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          0        1     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)          1       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          0       19     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)          1       56     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          0       32     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)          1       76     378
Birth       ki1135781-COHORTS          GUATEMALA                      >=160              0       30     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=160              1        1     840
Birth       ki1135781-COHORTS          GUATEMALA                      <145               0      160     840
Birth       ki1135781-COHORTS          GUATEMALA                      <145               1       18     840
Birth       ki1135781-COHORTS          GUATEMALA                      [145-150)          0      281     840
Birth       ki1135781-COHORTS          GUATEMALA                      [145-150)          1       13     840
Birth       ki1135781-COHORTS          GUATEMALA                      [150-155)          0      246     840
Birth       ki1135781-COHORTS          GUATEMALA                      [150-155)          1       12     840
Birth       ki1135781-COHORTS          GUATEMALA                      [155-160)          0       74     840
Birth       ki1135781-COHORTS          GUATEMALA                      [155-160)          1        5     840
6 months    ki1135781-COHORTS          GUATEMALA                      >=160              0       24     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=160              1        2     943
6 months    ki1135781-COHORTS          GUATEMALA                      <145               0       81     943
6 months    ki1135781-COHORTS          GUATEMALA                      <145               1      125     943
6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)          0      198     943
6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)          1      143     943
6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)          0      185     943
6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)          1       94     943
6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)          0       69     943
6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)          1       22     943
24 months   ki1135781-COHORTS          GUATEMALA                      >=160              0       14     997
24 months   ki1135781-COHORTS          GUATEMALA                      >=160              1       15     997
24 months   ki1135781-COHORTS          GUATEMALA                      <145               0       19     997
24 months   ki1135781-COHORTS          GUATEMALA                      <145               1      198     997
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)          0       65     997
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)          1      294     997
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)          0       66     997
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)          1      228     997
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)          0       42     997
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)          1       56     997
Birth       ki1135781-COHORTS          INDIA                          >=160              0      139    1774
Birth       ki1135781-COHORTS          INDIA                          >=160              1        8    1774
Birth       ki1135781-COHORTS          INDIA                          <145               0      130    1774
Birth       ki1135781-COHORTS          INDIA                          <145               1       28    1774
Birth       ki1135781-COHORTS          INDIA                          [145-150)          0      413    1774
Birth       ki1135781-COHORTS          INDIA                          [145-150)          1       61    1774
Birth       ki1135781-COHORTS          INDIA                          [150-155)          0      550    1774
Birth       ki1135781-COHORTS          INDIA                          [150-155)          1       62    1774
Birth       ki1135781-COHORTS          INDIA                          [155-160)          0      358    1774
Birth       ki1135781-COHORTS          INDIA                          [155-160)          1       25    1774
6 months    ki1135781-COHORTS          INDIA                          >=160              0      136    1819
6 months    ki1135781-COHORTS          INDIA                          >=160              1       14    1819
6 months    ki1135781-COHORTS          INDIA                          <145               0      112    1819
6 months    ki1135781-COHORTS          INDIA                          <145               1       51    1819
6 months    ki1135781-COHORTS          INDIA                          [145-150)          0      389    1819
6 months    ki1135781-COHORTS          INDIA                          [145-150)          1      106    1819
6 months    ki1135781-COHORTS          INDIA                          [150-155)          0      524    1819
6 months    ki1135781-COHORTS          INDIA                          [150-155)          1       96    1819
6 months    ki1135781-COHORTS          INDIA                          [155-160)          0      355    1819
6 months    ki1135781-COHORTS          INDIA                          [155-160)          1       36    1819
24 months   ki1135781-COHORTS          INDIA                          >=160              0      124    1819
24 months   ki1135781-COHORTS          INDIA                          >=160              1       28    1819
24 months   ki1135781-COHORTS          INDIA                          <145               0       48    1819
24 months   ki1135781-COHORTS          INDIA                          <145               1      116    1819
24 months   ki1135781-COHORTS          INDIA                          [145-150)          0      215    1819
24 months   ki1135781-COHORTS          INDIA                          [145-150)          1      271    1819
24 months   ki1135781-COHORTS          INDIA                          [150-155)          0      327    1819
24 months   ki1135781-COHORTS          INDIA                          [150-155)          1      290    1819
24 months   ki1135781-COHORTS          INDIA                          [155-160)          0      282    1819
24 months   ki1135781-COHORTS          INDIA                          [155-160)          1      118    1819
Birth       ki1135781-COHORTS          PHILIPPINES                    >=160              0      129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=160              1        1    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <145               0      285    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <145               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [145-150)          0      892    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [145-150)          1       68    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [150-155)          0     1072    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [150-155)          1       61    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [155-160)          0      485    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [155-160)          1       15    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160              0      102    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160              1        6    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <145               0      180    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <145               1      107    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)          0      627    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)          1      227    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)          0      836    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)          1      170    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)          0      391    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)          1       62    2708
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160              0       76    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160              1       31    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <145               0       34    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <145               1      222    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)          0      242    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)          1      532    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)          0      377    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)          1      528    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)          0      208    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)          1      195    2445
6 months    ki1148112-LCNI-5           MALAWI                         >=160              0      163     836
6 months    ki1148112-LCNI-5           MALAWI                         >=160              1       63     836
6 months    ki1148112-LCNI-5           MALAWI                         <145               0        4     836
6 months    ki1148112-LCNI-5           MALAWI                         <145               1        8     836
6 months    ki1148112-LCNI-5           MALAWI                         [145-150)          0       43     836
6 months    ki1148112-LCNI-5           MALAWI                         [145-150)          1       50     836
6 months    ki1148112-LCNI-5           MALAWI                         [150-155)          0      124     836
6 months    ki1148112-LCNI-5           MALAWI                         [150-155)          1       94     836
6 months    ki1148112-LCNI-5           MALAWI                         [155-160)          0      195     836
6 months    ki1148112-LCNI-5           MALAWI                         [155-160)          1       92     836
24 months   ki1148112-LCNI-5           MALAWI                         >=160              0      104     577
24 months   ki1148112-LCNI-5           MALAWI                         >=160              1       60     577
24 months   ki1148112-LCNI-5           MALAWI                         <145               0        1     577
24 months   ki1148112-LCNI-5           MALAWI                         <145               1        8     577
24 months   ki1148112-LCNI-5           MALAWI                         [145-150)          0       27     577
24 months   ki1148112-LCNI-5           MALAWI                         [145-150)          1       41     577
24 months   ki1148112-LCNI-5           MALAWI                         [150-155)          0       67     577
24 months   ki1148112-LCNI-5           MALAWI                         [150-155)          1       78     577
24 months   ki1148112-LCNI-5           MALAWI                         [155-160)          0      124     577
24 months   ki1148112-LCNI-5           MALAWI                         [155-160)          1       67     577
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160              0      409   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160              1       76   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145               0     1860   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145               1     1644   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          0     4341   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          1     2363   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          0     4678   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          1     1750   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          0     1936   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          1      479   19536
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160              0      437   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160              1       15   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145               0     1640   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145               1     1221   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          0     3970   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          1     1649   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          0     4546   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          1     1075   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          0     1952   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          1      256   16761
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160              0      186    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160              1       41    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145               0      425    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145               1     1052    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          0     1281    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)          1     1652    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          0     1701    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)          1     1174    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          0      783    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)          1      304    8599


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7d135eee-f5f2-472f-a666-ffca8417fc41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d135eee-f5f2-472f-a666-ffca8417fc41/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d135eee-f5f2-472f-a666-ffca8417fc41/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d135eee-f5f2-472f-a666-ffca8417fc41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0865979   0.0786823   0.0945135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2031250   0.1045521   0.3016979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.1205212   0.0841007   0.1569417
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1136935   0.0980994   0.1292875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1075683   0.0962006   0.1189360
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0544218   0.0177403   0.0911033
Birth       ki1135781-COHORTS          INDIA                          <145                 NA                0.1772152   0.1176578   0.2367726
Birth       ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1286920   0.0985381   0.1588458
Birth       ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1013072   0.0773949   0.1252194
Birth       ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0652742   0.0405294   0.0900189
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1567010   0.1199830   0.1934190
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4691781   0.4520324   0.4863237
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.3524761   0.3397615   0.3651907
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.2722464   0.2598314   0.2846614
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1983437   0.1804860   0.2162014
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1520468   0.0830256   0.2210680
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4174757   0.3212831   0.5136684
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.4042553   0.3335878   0.4749228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.3000000   0.2680835   0.3319165
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2241888   0.1831224   0.2652552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0577933   0.0386485   0.0769381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.1875000   0.0522323   0.3227677
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.1895425   0.1274227   0.2516622
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1221239   0.0951186   0.1491292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.0785185   0.0582214   0.0988156
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1240814   0.1132175   0.1349453
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2222222   0.1007453   0.3436992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3975410   0.3361311   0.4589509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2094421   0.1860744   0.2328097
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1827554   0.1663573   0.1991534
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0933333   0.0467679   0.1398988
6 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.3128834   0.2416834   0.3840835
6 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2141414   0.1779932   0.2502897
6 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1548387   0.1263560   0.1833214
6 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0920716   0.0634056   0.1207377
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0555556   0.0123471   0.0987640
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.3728223   0.3168680   0.4287766
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.2658080   0.2361741   0.2954418
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.1689861   0.1458250   0.1921472
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.1368653   0.1052087   0.1685220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.0331859   0.0158784   0.0504934
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4267739   0.4063416   0.4472061
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.2934686   0.2802441   0.3066931
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.1912471   0.1803975   0.2020967
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1159420   0.1011207   0.1307634
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1875000   0.0521486   0.3228514
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.5138889   0.3983411   0.6294367
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.3250000   0.2600313   0.3899687
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3681319   0.2980017   0.4382620
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.1555556   0.0806123   0.2304988
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.5172414   0.3352802   0.6992025
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.9124424   0.8748166   0.9500682
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.8189415   0.7790891   0.8587939
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.7755102   0.7277920   0.8232284
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.5714286   0.4734016   0.6694555
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1842105   0.1225664   0.2458547
24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.7073171   0.6376622   0.7769719
24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.5576132   0.5134442   0.6017821
24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.4700162   0.4306238   0.5094086
24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.2950000   0.2502963   0.3397037
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2897196   0.2037492   0.3756900
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.8671875   0.8256067   0.9087683
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6873385   0.6546730   0.7200040
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5834254   0.5512998   0.6155510
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4838710   0.4350700   0.5326719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1806167   0.1266738   0.2345596
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.7122546   0.6852705   0.7392387
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.5632458   0.5435082   0.5829835
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.4083478   0.3865850   0.4301106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2796688   0.2483118   0.3110259


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991000   0.0931434   0.1050567
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1037204   0.0895283   0.1179125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3230958   0.3154261   0.3307655
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0823123   0.1080685
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1655908   0.1569598   0.1742218
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1665750   0.1494477   0.1837024
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515363   0.2434210   0.2596516
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7933801   0.7682355   0.8185248
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4524464   0.4295668   0.4753260
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4911036   0.4779420   0.5042652


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              2.3456101   1.4315106    3.843413
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              1.3917326   1.0149467    1.908395
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160              1.3128888   1.1133838    1.548143
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              1.2421580   1.0801768    1.428430
Birth       ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          <145                 >=160              3.2563291   1.5333263    6.915475
Birth       ki1135781-COHORTS          INDIA                          [145-150)            >=160              2.3647152   1.1584349    4.827097
Birth       ki1135781-COHORTS          INDIA                          [150-155)            >=160              1.8615196   0.9114091    3.802085
Birth       ki1135781-COHORTS          INDIA                          [155-160)            >=160              1.1994125   0.5535060    2.599051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160              2.9940970   2.3637213    3.792586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              2.2493543   1.7756512    2.849430
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              1.7373620   1.3707222    2.202071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              1.2657459   0.9895522    1.619028
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160              2.7457058   1.8117183    4.161188
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160              2.6587561   1.6327323    4.329543
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160              1.9730769   1.3155667    2.959206
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              1.4744724   0.8109171    2.681000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160              3.2443182   1.4667630    7.176075
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              3.2796593   2.0580332    5.226430
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              2.1131134   1.4188882    3.147005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              1.3586083   0.8925014    2.068138
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              1.7909390   1.0295549    3.115387
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              3.2038724   2.6826326    3.826390
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160              1.6879408   1.4647523    1.945137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              1.4728669   1.2993246    1.669588
6 months    ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <145                 >=160              3.3523223   1.9372923    5.800914
6 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160              2.2943722   1.3549435    3.885139
6 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160              1.6589861   0.9747830    2.823433
6 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160              0.9864816   0.5478777    1.776210
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160              6.7108014   3.0392732   14.817640
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160              4.7845433   2.1807945   10.497025
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160              3.0417495   1.3808469    6.700410
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160              2.4635762   1.0943908    5.545741
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             12.8601013   7.6213606   21.699827
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              8.8431747   5.2309463   14.949827
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              5.7629050   3.3995909    9.769138
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              3.4937150   2.0499082    5.954435
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160              2.7407407   1.2867845    5.837543
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              1.7333333   0.8195536    3.665952
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160              1.9633700   0.9306002    4.142296
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160              0.8296296   0.3483129    1.976054
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160              1.7640553   1.2378985    2.513850
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160              1.5832869   1.1100018    2.258372
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160              1.4993197   1.0490440    2.142865
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              1.1047619   0.7469481    1.633981
24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <145                 >=160              3.8397213   2.7089765    5.442446
24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160              3.0270429   2.1462013    4.269399
24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160              2.5515166   1.8070805    3.602627
24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160              1.6014286   1.1090947    2.312312
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160              2.9931956   2.2161158    4.042758
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160              2.3724264   1.7566264    3.204100
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160              2.0137587   1.4891429    2.723193
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160              1.6701353   1.2207885    2.284877
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160              3.9434582   2.9204563    5.324806
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              3.1184586   2.3099662    4.209925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              2.2608526   1.6689402    3.062695
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              1.5484103   1.1257278    2.129799


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0125021   0.0065635   0.0184407
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0492986   0.0129124   0.0856849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1663948   0.1302954   0.2024942
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1362268   0.0653526   0.2071010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0373970   0.0194342   0.0553599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0415094   0.0328305   0.0501883
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0732417   0.0273715   0.1191119
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1556704   0.1114609   0.1998800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2183504   0.1995541   0.2371467
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1406250   0.0073685   0.2738815
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.2761388   0.0977685   0.4545090
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.2682359   0.2075036   0.3289681
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3270493   0.2426957   0.4114029
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.3104869   0.2567933   0.3641805


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1261563    0.0645443   0.1837103
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.4753032   -0.0135820   0.7283823
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5150014    0.3888956   0.6150843
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4725609    0.1706988   0.6645464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3928657    0.1805644   0.5501635
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2506745    0.1976263   0.3002155
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.4396919    0.0887787   0.6554678
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7369852    0.4302512   0.8785838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.8680672    0.7778324   0.9216526
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.4285714   -0.1603124   0.7185839
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.3480535    0.0780686   0.5389742
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.5928567    0.4353798   0.7064121
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.5302623    0.3708167   0.6493017
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.6322227    0.5054975   0.7264724
