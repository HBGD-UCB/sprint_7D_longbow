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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/01fd8b45-828b-4734-ae66-f06cfe32cd77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01fd8b45-828b-4734-ae66-f06cfe32cd77/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01fd8b45-828b-4734-ae66-f06cfe32cd77/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01fd8b45-828b-4734-ae66-f06cfe32cd77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0866987   0.0787966   0.0946008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2037647   0.1095084   0.2980209
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.1205954   0.0846601   0.1565307
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1138611   0.0984140   0.1293083
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1075650   0.0962358   0.1188943
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0553574   0.0198348   0.0908800
Birth       ki1135781-COHORTS          INDIA                          <145                 NA                0.1946896   0.1383623   0.2510168
Birth       ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1319270   0.1022756   0.1615784
Birth       ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1020565   0.0783897   0.1257232
Birth       ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0654470   0.0411127   0.0897812
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1561152   0.1253873   0.1868431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4664662   0.4494085   0.4835239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.3505079   0.3378606   0.3631551
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.2736180   0.2612098   0.2860262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2006060   0.1831266   0.2180855
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1529176   0.0841001   0.2217351
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4161128   0.3219115   0.5103140
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.4035616   0.3327215   0.4744017
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.3004103   0.2686860   0.3321345
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.2239071   0.1822851   0.2655292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0580651   0.0389306   0.0771995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2195371   0.0938338   0.3452404
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.1946904   0.1343673   0.2550135
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1231083   0.0962716   0.1499450
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.0786527   0.0583781   0.0989273
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1239001   0.1130747   0.1347255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2066874   0.1096384   0.3037364
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3958677   0.3387037   0.4530316
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2085132   0.1855102   0.2315162
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1834014   0.1671186   0.1996841
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0941384   0.0490077   0.1392691
6 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.2952541   0.2276583   0.3628498
6 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2124783   0.1768845   0.2480721
6 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1548309   0.1266105   0.1830512
6 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0915507   0.0633049   0.1197966
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0466862   0.0090685   0.0843040
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.3636833   0.3095282   0.4178384
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.2644369   0.2349658   0.2939079
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.1669340   0.1439231   0.1899449
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.1317546   0.1008999   0.1626092
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.0318468   0.0173148   0.0463789
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.4243278   0.4041591   0.4444965
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.2927007   0.2795216   0.3058799
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.1919578   0.1811198   0.2027959
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.1171447   0.1025981   0.1316913
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1799484   0.0584046   0.3014922
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.5110943   0.4031023   0.6190863
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.3201772   0.2566346   0.3837199
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3673749   0.2981229   0.4366269
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.1466931   0.0761802   0.2172060
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.4412996   0.2999890   0.5826101
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.9092329   0.8721798   0.9462860
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.8157046   0.7761938   0.8552155
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.7733032   0.7270095   0.8195969
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.5523473   0.4623211   0.6423735
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1873297   0.1299788   0.2446806
24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.6861500   0.6231823   0.7491178
24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.5541127   0.5109443   0.5972811
24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.4677607   0.4291623   0.5063592
24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.2952216   0.2525230   0.3379201
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2925517   0.2121527   0.3729506
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.8696021   0.8297928   0.9094114
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6868741   0.6544490   0.7192992
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5834529   0.5515097   0.6153961
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4799451   0.4320256   0.5278646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1819651   0.1282153   0.2357150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.7110938   0.6842785   0.7379090
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.5626753   0.5430441   0.5823066
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.4087531   0.3870719   0.4304343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2811162   0.2498710   0.3123615


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              2.3502616   1.4667508    3.765963
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              1.3909710   1.0186205    1.899432
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160              1.3132964   1.1153505    1.546373
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              1.2406762   1.0794120    1.426033
Birth       ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          <145                 >=160              3.5169567   1.7400158    7.108547
Birth       ki1135781-COHORTS          INDIA                          [145-150)            >=160              2.3831864   1.2068778    4.706009
Birth       ki1135781-COHORTS          INDIA                          [150-155)            >=160              1.8435921   0.9318878    3.647254
Birth       ki1135781-COHORTS          INDIA                          [155-160)            >=160              1.1822621   0.5634382    2.480740
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160              2.9879622   2.4464354    3.649358
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              2.2451878   1.8395370    2.740292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              1.7526676   1.4359809    2.139195
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              1.2849876   1.0425448    1.583810
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160              2.7211571   1.8056509    4.100846
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160              2.6390789   1.6340582    4.262233
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160              1.9645239   1.3107917    2.944292
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              1.4642341   0.8073930    2.655437
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160              3.7808816   1.9528064    7.320268
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              3.3529696   2.1329808    5.270748
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              2.1201782   1.4281874    3.147455
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              1.3545613   0.8914434    2.058276
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              1.6681782   1.0347426    2.689382
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              3.1950557   2.6990009    3.782281
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160              1.6829140   1.4620934    1.937085
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              1.4802360   1.3069860    1.676451
6 months    ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <145                 >=160              3.1363821   1.8448863    5.331978
6 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160              2.2570837   1.3588175    3.749162
6 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160              1.6447150   0.9850055    2.746266
6 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160              0.9725118   0.5502822    1.718717
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160              7.7899463   3.4330843   17.676019
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160              5.6641283   2.5111299   12.776062
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160              3.5756573   1.5787580    8.098344
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160              2.8221283   1.2194069    6.531379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             13.3240139   8.4248926   21.072001
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              9.1908862   5.8012234   14.561134
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              6.0275300   3.7958441    9.571288
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              3.6783770   2.2998485    5.883195
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160              2.8402269   1.3995278    5.764008
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              1.7792725   0.8803304    3.596162
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160              2.0415568   1.0126373    4.115940
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160              0.8151952   0.3558918    1.867262
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160              2.0603530   1.4920861    2.845047
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160              1.8484148   1.3372575    2.554958
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160              1.7523316   1.2654876    2.426469
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              1.2516380   0.8743034    1.791824
24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <145                 >=160              3.6627929   2.6613731    5.041026
24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160              2.9579540   2.1575565    4.055278
24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160              2.4969913   1.8194558    3.426830
24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160              1.5759462   1.1239062    2.209799
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160              2.9724737   2.2497100    3.927439
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160              2.3478726   1.7765706    3.102892
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160              1.9943585   1.5069992    2.639328
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160              1.6405482   1.2246608    2.197668
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160              3.9078569   2.9038409    5.259016
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160              3.0922149   2.2981968    4.160563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160              2.2463263   1.6633858    3.033561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160              1.5448906   1.1269899    2.117754


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0124013   0.0064743   0.0183283
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0483630   0.0130641   0.0836619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1669807   0.1368147   0.1971466
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1353560   0.0648122   0.2058999
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0371253   0.0191725   0.0550781
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0416907   0.0330406   0.0503408
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0724366   0.0279356   0.1169376
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1645398   0.1254908   0.2035887
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2196895   0.2033590   0.2360199
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1481766   0.0280582   0.2682950
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.3520806   0.2137853   0.4903758
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.2651167   0.2084886   0.3217447
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3242172   0.2452483   0.4031862
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.3091385   0.2556390   0.3626379


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1251394    0.0636659   0.1825769
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.4662825    0.0012649   0.7147849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5168147    0.4136324   0.6018401
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4695401    0.1695627   0.6611572
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3900113    0.1780287   0.5473245
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2517695    0.1989389   0.3011158
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.4348588    0.0984775   0.6457275
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7789749    0.5075792   0.9007920
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.8733907    0.8002352   0.9197560
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.4515858   -0.0638927   0.7173041
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.4437729    0.2377001   0.5941379
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.5859626    0.4419138   0.6928307
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.5256705    0.3783228   0.6380944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.6294771    0.5034347   0.7235263
