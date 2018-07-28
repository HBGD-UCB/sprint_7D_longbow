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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0               0       39     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0               1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3               0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3               1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           1       38     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           0       83     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            0       88     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            1        0     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0               0       39     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0               1        0     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3               0        2     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3               1        4     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           0       14     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           1       18     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           0       59     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           1       15     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            0       76     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            1        6     233
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0               0       31     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0               1        7     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3               0        1     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3               1        5     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           0        7     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)           1       19     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           0       28     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)           1       34     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            0       46     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)            1       28     206
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0               0       44     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0               1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <-3               0        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <-3               1        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)           0        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)           1       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)           0       48     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)           1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)            0       78     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)            1        0     191
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0               0       40     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0               1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3               0        7     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3               1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)           0        9     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)           1        1     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)           0       40     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)           1        1     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)            0       73     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)            1        2     173
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0               0       26     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0               1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3               0        5     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3               1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)           0        7     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)           1        1     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)           0       33     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)           1        3     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)            0       62     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)            1        2     139
Birth       ki0047075b-MAL-ED          INDIA                          >=0               0       34     206
Birth       ki0047075b-MAL-ED          INDIA                          >=0               1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <-3               0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <-3               1        7     206
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)           0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)           1       26     206
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)           0       66     206
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)           1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)            0       73     206
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)            1        0     206
6 months    ki0047075b-MAL-ED          INDIA                          >=0               0       33     192
6 months    ki0047075b-MAL-ED          INDIA                          >=0               1        0     192
6 months    ki0047075b-MAL-ED          INDIA                          <-3               0        1     192
6 months    ki0047075b-MAL-ED          INDIA                          <-3               1        6     192
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)           0       16     192
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)           1        7     192
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)           0       43     192
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)           1       21     192
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)            0       61     192
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)            1        4     192
24 months   ki0047075b-MAL-ED          INDIA                          >=0               0       28     183
24 months   ki0047075b-MAL-ED          INDIA                          >=0               1        4     183
24 months   ki0047075b-MAL-ED          INDIA                          <-3               0        0     183
24 months   ki0047075b-MAL-ED          INDIA                          <-3               1        6     183
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)           0       10     183
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)           1       12     183
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)           0       27     183
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)           1       33     183
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)            0       45     183
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)            1       18     183
Birth       ki0047075b-MAL-ED          NEPAL                          >=0               0       45     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=0               1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <-3               0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <-3               1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)           0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)           1       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)           0       46     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)           1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)            0       64     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)            1        0     173
6 months    ki0047075b-MAL-ED          NEPAL                          >=0               0       45     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=0               1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <-3               0        2     171
6 months    ki0047075b-MAL-ED          NEPAL                          <-3               1        4     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)           0        9     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)           1        3     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)           0       43     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)           1        1     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)            0       64     171
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)            1        0     171
24 months   ki0047075b-MAL-ED          NEPAL                          >=0               0       41     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=0               1        1     165
24 months   ki0047075b-MAL-ED          NEPAL                          <-3               0        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <-3               1        5     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)           0        7     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)           1        5     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)           0       30     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)           1       14     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)            0       51     165
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)            1       11     165
Birth       ki0047075b-MAL-ED          PERU                           >=0               0       44     287
Birth       ki0047075b-MAL-ED          PERU                           >=0               1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <-3               0        0     287
Birth       ki0047075b-MAL-ED          PERU                           <-3               1        8     287
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)           0        0     287
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)           1       26     287
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)           0       94     287
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)           1        0     287
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)            0      115     287
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)            1        0     287
6 months    ki0047075b-MAL-ED          PERU                           >=0               0       39     260
6 months    ki0047075b-MAL-ED          PERU                           >=0               1        1     260
6 months    ki0047075b-MAL-ED          PERU                           <-3               0        2     260
6 months    ki0047075b-MAL-ED          PERU                           <-3               1        5     260
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)           0       10     260
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)           1       14     260
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)           0       62     260
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)           1       26     260
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)            0       91     260
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)            1       10     260
24 months   ki0047075b-MAL-ED          PERU                           >=0               0       23     190
24 months   ki0047075b-MAL-ED          PERU                           >=0               1        7     190
24 months   ki0047075b-MAL-ED          PERU                           <-3               0        0     190
24 months   ki0047075b-MAL-ED          PERU                           <-3               1        3     190
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)           0        8     190
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)           1       13     190
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)           0       37     190
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)           1       29     190
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)            0       53     190
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)            1       17     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               0       59     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               0        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           0        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           1       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           0       73     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            0      102     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            1        0     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               0       45     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               1        3     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               0        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               1        1     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           0       14     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           1        6     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           0       40     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           1       16     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            0       73     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            1       16     214
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               0       31     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0               1       13     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               0        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3               1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           0       10     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)           1        8     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           0       30     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)           1       25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            0       57     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)            1       26     201
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               0       24     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           1       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           0       32     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            0       49     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            1        0     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               0       22     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               1        1     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               0        1     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               1        4     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           0        3     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           1        8     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           0       23     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           1        8     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            0       47     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            1        0     117
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               0       14     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0               1        6     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               0        0     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3               1        5     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           0        1     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)           1        8     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           0        8     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)           1       20     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            0       16     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)            1       23     101
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0               0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3               0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           1       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           0       21      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            1        0      90
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0               0       10      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0               1        5      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3               0        3      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3               1        0      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           0        6      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           1        6      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           0       16      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           1        5      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            0       32      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            1        8      91
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0               0        5      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0               1       10      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3               0        1      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3               1        2      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           0        4      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)           1        9      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           0        7      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)           1       15      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            0       10      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)            1       30      93
Birth       ki1000108-IRC              INDIA                          >=0               0      143     388
Birth       ki1000108-IRC              INDIA                          >=0               1        0     388
Birth       ki1000108-IRC              INDIA                          <-3               0        0     388
Birth       ki1000108-IRC              INDIA                          <-3               1       16     388
Birth       ki1000108-IRC              INDIA                          [-3--2)           0        0     388
Birth       ki1000108-IRC              INDIA                          [-3--2)           1       27     388
Birth       ki1000108-IRC              INDIA                          [-2--1)           0       63     388
Birth       ki1000108-IRC              INDIA                          [-2--1)           1        2     388
Birth       ki1000108-IRC              INDIA                          [-1-0)            0      137     388
Birth       ki1000108-IRC              INDIA                          [-1-0)            1        0     388
6 months    ki1000108-IRC              INDIA                          >=0               0      124     386
6 months    ki1000108-IRC              INDIA                          >=0               1       19     386
6 months    ki1000108-IRC              INDIA                          <-3               0        6     386
6 months    ki1000108-IRC              INDIA                          <-3               1        8     386
6 months    ki1000108-IRC              INDIA                          [-3--2)           0       13     386
6 months    ki1000108-IRC              INDIA                          [-3--2)           1       14     386
6 months    ki1000108-IRC              INDIA                          [-2--1)           0       42     386
6 months    ki1000108-IRC              INDIA                          [-2--1)           1       23     386
6 months    ki1000108-IRC              INDIA                          [-1-0)            0      108     386
6 months    ki1000108-IRC              INDIA                          [-1-0)            1       29     386
24 months   ki1000108-IRC              INDIA                          >=0               0       96     387
24 months   ki1000108-IRC              INDIA                          >=0               1       47     387
24 months   ki1000108-IRC              INDIA                          <-3               0        5     387
24 months   ki1000108-IRC              INDIA                          <-3               1       10     387
24 months   ki1000108-IRC              INDIA                          [-3--2)           0       13     387
24 months   ki1000108-IRC              INDIA                          [-3--2)           1       14     387
24 months   ki1000108-IRC              INDIA                          [-2--1)           0       32     387
24 months   ki1000108-IRC              INDIA                          [-2--1)           1       33     387
24 months   ki1000108-IRC              INDIA                          [-1-0)            0       84     387
24 months   ki1000108-IRC              INDIA                          [-1-0)            1       53     387
Birth       ki1000109-EE               PAKISTAN                       >=0               0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=0               1        0       2
Birth       ki1000109-EE               PAKISTAN                       [-3--2)           0        0       2
Birth       ki1000109-EE               PAKISTAN                       [-3--2)           1        1       2
6 months    ki1000109-EE               PAKISTAN                       >=0               0        1       2
6 months    ki1000109-EE               PAKISTAN                       >=0               1        0       2
6 months    ki1000109-EE               PAKISTAN                       [-3--2)           0        0       2
6 months    ki1000109-EE               PAKISTAN                       [-3--2)           1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       >=0               0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       >=0               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       [-3--2)           0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       [-3--2)           1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)            0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)            1        0       7
6 months    ki1000109-ResPak           PAKISTAN                       >=0               0        1       5
6 months    ki1000109-ResPak           PAKISTAN                       >=0               1        0       5
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)           0        0       5
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)           1        2       5
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)            0        2       5
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)            1        0       5
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0               0      222    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0               1       18    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3               0       10    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3               1       52    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)           0       82    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)           1      108    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)           0      263    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)           1      134    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)            0      369    1321
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)            1       63    1321
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0               0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3               0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3               1       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)           0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)           1       35     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)           0       71     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)           1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)            0       54     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)            1        0     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            1        0      28
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0               0        3      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0               1        0      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           0        0      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           1        1      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           0        6      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           1        2      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            0        4      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            1        1      17
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0               0        2      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0               1        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           0        0      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)           1        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           0        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)           1        6      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            0        0      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)            1        5      16
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0               0      183     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0               1        3     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3               0        0     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3               1        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)           0        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)           1       13     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)           0       91     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)           1       57     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)            0      208     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)            1       20     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0               0      159     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0               1       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3               0        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)           0       10     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)           1       10     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)           0       60     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)           1       82     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)            0      158     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)            1       71     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0               0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <-3               0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <-3               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0               0      211     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0               1        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3               0        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3               1        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           0       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           1       31     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           0      110     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           1       64     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            0      229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            1       45     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0               0      143     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0               1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3               0        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3               1        5     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           0       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)           1       14     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           0       85     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)           1       46     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            0      136     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)            1       50     514
Birth       ki1101329-Keneba           GAMBIA                         >=0               0      825    1541
Birth       ki1101329-Keneba           GAMBIA                         >=0               1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <-3               0        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <-3               1       30    1541
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)           0        0    1541
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)           1       52    1541
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)           0      163    1541
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)           1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)            0      471    1541
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)            1        0    1541
6 months    ki1101329-Keneba           GAMBIA                         >=0               0      672    1337
6 months    ki1101329-Keneba           GAMBIA                         >=0               1       54    1337
6 months    ki1101329-Keneba           GAMBIA                         <-3               0       18    1337
6 months    ki1101329-Keneba           GAMBIA                         <-3               1        5    1337
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)           0       26    1337
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)           1       16    1337
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)           0       97    1337
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)           1       33    1337
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)            0      344    1337
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)            1       72    1337
24 months   ki1101329-Keneba           GAMBIA                         >=0               0      439    1057
24 months   ki1101329-Keneba           GAMBIA                         >=0               1      132    1057
24 months   ki1101329-Keneba           GAMBIA                         <-3               0       12    1057
24 months   ki1101329-Keneba           GAMBIA                         <-3               1        6    1057
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)           0       19    1057
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)           1       18    1057
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)           0       52    1057
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)           1       55    1057
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)            0      194    1057
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)            1      130    1057
Birth       ki1114097-CMIN             BANGLADESH                     >=0               0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     >=0               1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <-3               0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <-3               1        5      13
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)           0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)           1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)           0        4      13
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)           1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)            0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)            1        0      13
Birth       ki1114097-CMIN             BRAZIL                         >=0               0       63     115
Birth       ki1114097-CMIN             BRAZIL                         >=0               1        0     115
Birth       ki1114097-CMIN             BRAZIL                         <-3               0        0     115
Birth       ki1114097-CMIN             BRAZIL                         <-3               1        3     115
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)           0        0     115
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)           1        2     115
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)           0       11     115
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)           1        0     115
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)            0       36     115
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)            1        0     115
6 months    ki1114097-CMIN             BRAZIL                         >=0               0       54     104
6 months    ki1114097-CMIN             BRAZIL                         >=0               1        4     104
6 months    ki1114097-CMIN             BRAZIL                         <-3               0        2     104
6 months    ki1114097-CMIN             BRAZIL                         <-3               1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)           0        1     104
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)           1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)           0        9     104
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)           1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)            0       28     104
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)            1        5     104
Birth       ki1114097-CMIN             PERU                           >=0               0       10      10
6 months    ki1114097-CMIN             PERU                           >=0               0        9       9
24 months   ki1114097-CMIN             PERU                           >=0               0        3       3
Birth       ki1114097-CONTENT          PERU                           >=0               0        1       2
Birth       ki1114097-CONTENT          PERU                           [-2--1)           0        1       2
6 months    ki1114097-CONTENT          PERU                           >=0               0        1       2
6 months    ki1114097-CONTENT          PERU                           [-2--1)           0        1       2
24 months   ki1114097-CONTENT          PERU                           >=0               0        1       2
24 months   ki1114097-CONTENT          PERU                           [-2--1)           0        1       2
Birth       ki1119695-PROBIT           BELARUS                        >=0               0    12641   13884
Birth       ki1119695-PROBIT           BELARUS                        >=0               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <-3               0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <-3               1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        [-3--2)           0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        [-3--2)           1       28   13884
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)           0      113   13884
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)           1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)            0     1097   13884
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)            1        0   13884
6 months    ki1119695-PROBIT           BELARUS                        >=0               0    13635   15755
6 months    ki1119695-PROBIT           BELARUS                        >=0               1      683   15755
6 months    ki1119695-PROBIT           BELARUS                        <-3               0        5   15755
6 months    ki1119695-PROBIT           BELARUS                        <-3               1        2   15755
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)           0       16   15755
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)           1       16   15755
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)           0       90   15755
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)           1       42   15755
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)            0     1021   15755
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)            1      245   15755
24 months   ki1119695-PROBIT           BELARUS                        >=0               0     3388    4033
24 months   ki1119695-PROBIT           BELARUS                        >=0               1      298    4033
24 months   ki1119695-PROBIT           BELARUS                        <-3               0        2    4033
24 months   ki1119695-PROBIT           BELARUS                        <-3               1        0    4033
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)           0        5    4033
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)           1        3    4033
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)           0       30    4033
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)           1        4    4033
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)            0      264    4033
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)            1       39    4033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0               0     4658   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0               1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3               0        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3               1      450   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           0        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           1      982   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           0     2565   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            0     5175   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            1        0   13830
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0               0     2513    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0               1      233    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3               0      102    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3               1      142    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           0      364    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           1      183    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           0     1160    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           1      335    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            0     2678    8169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            1      459    8169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0               0       38     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0               1       31     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3               0        2     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3               1       26     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           0       16     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)           1       50     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           0       39     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)           1      107     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            0       60     446
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)            1       77     446
Birth       ki1135781-COHORTS          GUATEMALA                      >=0               0      490     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=0               1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <-3               0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <-3               1       11     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)           0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)           1       39     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)           0       81     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)           1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)            0      231     852
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)            1        0     852
6 months    ki1135781-COHORTS          GUATEMALA                      >=0               0      318     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=0               1       78     688
6 months    ki1135781-COHORTS          GUATEMALA                      <-3               0        1     688
6 months    ki1135781-COHORTS          GUATEMALA                      <-3               1        6     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)           0        1     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)           1       30     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)           0       13     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)           1       50     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)            0       88     688
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)            1      103     688
24 months   ki1135781-COHORTS          GUATEMALA                      >=0               0       91     562
24 months   ki1135781-COHORTS          GUATEMALA                      >=0               1      209     562
24 months   ki1135781-COHORTS          GUATEMALA                      <-3               0        0     562
24 months   ki1135781-COHORTS          GUATEMALA                      <-3               1        5     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)           0        0     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)           1       24     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)           0        5     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)           1       60     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)            0       21     562
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)            1      147     562
Birth       ki1135781-COHORTS          INDIA                          >=0               0     1852    6640
Birth       ki1135781-COHORTS          INDIA                          >=0               1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <-3               0        0    6640
Birth       ki1135781-COHORTS          INDIA                          <-3               1      214    6640
Birth       ki1135781-COHORTS          INDIA                          [-3--2)           0        0    6640
Birth       ki1135781-COHORTS          INDIA                          [-3--2)           1      578    6640
Birth       ki1135781-COHORTS          INDIA                          [-2--1)           0     1568    6640
Birth       ki1135781-COHORTS          INDIA                          [-2--1)           1        0    6640
Birth       ki1135781-COHORTS          INDIA                          [-1-0)            0     2428    6640
Birth       ki1135781-COHORTS          INDIA                          [-1-0)            1        0    6640
6 months    ki1135781-COHORTS          INDIA                          >=0               0     1658    6134
6 months    ki1135781-COHORTS          INDIA                          >=0               1       71    6134
6 months    ki1135781-COHORTS          INDIA                          <-3               0       55    6134
6 months    ki1135781-COHORTS          INDIA                          <-3               1      119    6134
6 months    ki1135781-COHORTS          INDIA                          [-3--2)           0      249    6134
6 months    ki1135781-COHORTS          INDIA                          [-3--2)           1      279    6134
6 months    ki1135781-COHORTS          INDIA                          [-2--1)           0     1045    6134
6 months    ki1135781-COHORTS          INDIA                          [-2--1)           1      395    6134
6 months    ki1135781-COHORTS          INDIA                          [-1-0)            0     1984    6134
6 months    ki1135781-COHORTS          INDIA                          [-1-0)            1      279    6134
24 months   ki1135781-COHORTS          INDIA                          >=0               0     1032    4761
24 months   ki1135781-COHORTS          INDIA                          >=0               1      332    4761
24 months   ki1135781-COHORTS          INDIA                          <-3               0       30    4761
24 months   ki1135781-COHORTS          INDIA                          <-3               1      107    4761
24 months   ki1135781-COHORTS          INDIA                          [-3--2)           0      117    4761
24 months   ki1135781-COHORTS          INDIA                          [-3--2)           1      279    4761
24 months   ki1135781-COHORTS          INDIA                          [-2--1)           0      421    4761
24 months   ki1135781-COHORTS          INDIA                          [-2--1)           1      683    4761
24 months   ki1135781-COHORTS          INDIA                          [-1-0)            0      958    4761
24 months   ki1135781-COHORTS          INDIA                          [-1-0)            1      802    4761
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0               0     1328    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0               1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3               0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3               1       49    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)           0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)           1      138    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)           0      448    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)           1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)            0     1087    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)            1        0    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0               0     1070    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0               1       97    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3               0        3    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3               1       34    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)           0       50    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)           1       68    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)           0      252    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)           1      153    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)            0      754    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)            1      220    2701
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0               0      563    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0               1      495    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3               0        2    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3               1       28    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)           0       12    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)           1       93    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)           0       80    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)           1      278    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)            0      278    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)            1      613    2442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0               0     1424   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0               1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3               0        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3               1     2120   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           0        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           1     4218   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           0     6931   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            0     4920   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            1        0   19613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0               0     2639   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0               1      252   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3               0      336   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3               1     1022   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           0     1595   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           1     1372   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           0     3998   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           1     1127   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            0     3761   16456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            1      354   16456
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0               0     1024    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0               1      410    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3               0      143    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3               1      599    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           0      505    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)           1     1036    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           0     1189    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)           1     1393    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            0     1433    8417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)            1      685    8417
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0               0      883    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0               1      332    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3               0       66    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3               1      152    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           0      209    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           1      319    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           0      550    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           1      451    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            0      705    3964
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            1      297    3964
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0               0     1085    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0               1      159    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3               0       45    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3               1      159    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           0      275    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           1      242    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           0      718    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           1      285    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            0      876    3995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            1      151    3995
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0               0       51     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0               1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3               0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3               1       65     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)           1      182     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           0      313     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)           1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            0      211     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)            1        0     822


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          stunted
## birthlen  0
##   >=0     9
##   <-3     0
##   [-3--2) 0
##   [-2--1) 0
##   [-1-0)  0
##          stunted
## birthlen   0
##   >=0     10
##   <-3      0
##   [-3--2)  0
##   [-2--1)  0
##   [-1-0)   0
```




# Results Detail

## Results Plots
![](/tmp/b2685b3c-aa73-4856-837f-a87343c568d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2685b3c-aa73-4856-837f-a87343c568d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2685b3c-aa73-4856-837f-a87343c568d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2685b3c-aa73-4856-837f-a87343c568d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.1311983    0.0756347   0.1867618
6 months    ki1000108-IRC             INDIA        <-3                  NA                0.5489957    0.2920963   0.8058952
6 months    ki1000108-IRC             INDIA        [-3--2)              NA                0.5036230    0.3127690   0.6944771
6 months    ki1000108-IRC             INDIA        [-2--1)              NA                0.3707143    0.2557371   0.4856915
6 months    ki1000108-IRC             INDIA        [-1-0)               NA                0.2120138    0.1439091   0.2801185
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.0891612    0.0683892   0.1099332
6 months    ki1000304b-SAS-CompFeed   INDIA        <-3                  NA                0.9087681    0.8334477   0.9840884
6 months    ki1000304b-SAS-CompFeed   INDIA        [-3--2)              NA                0.6053897    0.5286739   0.6821054
6 months    ki1000304b-SAS-CompFeed   INDIA        [-2--1)              NA                0.3448174    0.2876127   0.4020222
6 months    ki1000304b-SAS-CompFeed   INDIA        [-1-0)               NA                0.1572342    0.1316790   0.1827894
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.0736521    0.0549600   0.0923441
6 months    ki1101329-Keneba          GAMBIA       <-3                  NA                0.0271051   -0.0380253   0.0922354
6 months    ki1101329-Keneba          GAMBIA       [-3--2)              NA                0.2033789    0.1153800   0.2913778
6 months    ki1101329-Keneba          GAMBIA       [-2--1)              NA                0.1963830    0.1373597   0.2554062
6 months    ki1101329-Keneba          GAMBIA       [-1-0)               NA                0.1553507    0.1229143   0.1877871
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0862560    0.0760820   0.0964300
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <-3                  NA                0.5576833    0.5091019   0.6062646
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              NA                0.3199817    0.2845304   0.3554330
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              NA                0.2229683    0.2030189   0.2429176
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               NA                0.1464742    0.1344051   0.1585432
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.0424384    0.0332952   0.0515816
6 months    ki1135781-COHORTS         INDIA        <-3                  NA                0.6777140    0.6238773   0.7315507
6 months    ki1135781-COHORTS         INDIA        [-3--2)              NA                0.5343263    0.4972876   0.5713650
6 months    ki1135781-COHORTS         INDIA        [-2--1)              NA                0.2709069    0.2490260   0.2927879
6 months    ki1135781-COHORTS         INDIA        [-1-0)               NA                0.1244770    0.1112334   0.1377205
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.1027802    0.0920845   0.1134759
6 months    kiGH5241-JiVitA-3         BANGLADESH   <-3                  NA                0.7113709    0.6897841   0.7329576
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              NA                0.4378412    0.4201750   0.4555074
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              NA                0.2157951    0.2044275   0.2271627
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               NA                0.0984204    0.0895204   0.1073205
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1279653    0.1063938   0.1495369
6 months    kiGH5241-JiVitA-4         BANGLADESH   <-3                  NA                0.7737344    0.7165644   0.8309044
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              NA                0.4752429    0.4199042   0.5305816
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              NA                0.2832786    0.2530575   0.3134998
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               NA                0.1474358    0.1215188   0.1733528
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.3204712    0.2438289   0.3971135
24 months   ki1000108-IRC             INDIA        <-3                  NA                0.5711031    0.3394277   0.8027785
24 months   ki1000108-IRC             INDIA        [-3--2)              NA                0.4275354    0.2462999   0.6087708
24 months   ki1000108-IRC             INDIA        [-2--1)              NA                0.4498954    0.3294520   0.5703388
24 months   ki1000108-IRC             INDIA        [-1-0)               NA                0.3724942    0.2910320   0.4539564
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2301470    0.1966028   0.2636913
24 months   ki1101329-Keneba          GAMBIA       <-3                  NA                0.0414367   -0.0149613   0.0978347
24 months   ki1101329-Keneba          GAMBIA       [-3--2)              NA                0.4169814    0.3122233   0.5217395
24 months   ki1101329-Keneba          GAMBIA       [-2--1)              NA                0.4589770    0.3791364   0.5388177
24 months   ki1101329-Keneba          GAMBIA       [-1-0)               NA                0.3765740    0.3282467   0.4249013
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.2517246    0.2303894   0.2730599
24 months   ki1135781-COHORTS         INDIA        <-3                  NA                0.7561081    0.7039077   0.8083085
24 months   ki1135781-COHORTS         INDIA        [-3--2)              NA                0.6733911    0.6345490   0.7122333
24 months   ki1135781-COHORTS         INDIA        [-2--1)              NA                0.5984970    0.5717516   0.6252424
24 months   ki1135781-COHORTS         INDIA        [-1-0)               NA                0.4517139    0.4295674   0.4738604
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.3239662    0.2996532   0.3482791
24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  NA                0.7685476    0.7430488   0.7940463
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              NA                0.6444233    0.6210594   0.6677872
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              NA                0.5307282    0.5102188   0.5512376
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               NA                0.3432601    0.3218128   0.3647073
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.2730185    0.2412390   0.3047980
24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  NA                0.6946786    0.6329823   0.7563749
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              NA                0.6049160    0.5534117   0.6564203
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              NA                0.4511150    0.4150801   0.4871499
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               NA                0.2960953    0.2620304   0.3301602


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        NA                   NA                0.2409326   0.1982152   0.2836501
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2838759   0.2658427   0.3019090
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1346298   0.1163270   0.1529325
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1655037   0.1574443   0.1735632
6 months    ki1135781-COHORTS         INDIA        NA                   NA                0.1863384   0.1765934   0.1960835
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2507900   0.2426647   0.2589153
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2493116   0.2330908   0.2655325
24 months   ki1000108-IRC             INDIA        NA                   NA                0.4056848   0.3567004   0.4546691
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3226112   0.2944160   0.3508063
24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.4627179   0.4485533   0.4768825
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4898420   0.4766223   0.5030617
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3912714   0.3725897   0.4099532


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-IRC             INDIA        >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    ki1000108-IRC             INDIA        <-3                  >=0                4.1844742    2.2270020    7.8625092
6 months    ki1000108-IRC             INDIA        [-3--2)              >=0                3.8386410    2.1747621    6.7755293
6 months    ki1000108-IRC             INDIA        [-2--1)              >=0                2.8256037    1.6732232    4.7716506
6 months    ki1000108-IRC             INDIA        [-1-0)               >=0                1.6159800    0.9508188    2.7464659
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        <-3                  >=0               10.1924201    8.0349666   12.9291673
6 months    ki1000304b-SAS-CompFeed   INDIA        [-3--2)              >=0                6.7898354    5.5205860    8.3509006
6 months    ki1000304b-SAS-CompFeed   INDIA        [-2--1)              >=0                3.8673501    2.6707853    5.5999996
6 months    ki1000304b-SAS-CompFeed   INDIA        [-1-0)               >=0                1.7634827    1.2810116    2.4276684
6 months    ki1101329-Keneba          GAMBIA       >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    ki1101329-Keneba          GAMBIA       <-3                  >=0                0.3680149    0.0328541    4.1223194
6 months    ki1101329-Keneba          GAMBIA       [-3--2)              >=0                2.7613463    1.6745334    4.5535274
6 months    ki1101329-Keneba          GAMBIA       [-2--1)              >=0                2.6663600    1.8013344    3.9467828
6 months    ki1101329-Keneba          GAMBIA       [-1-0)               >=0                2.1092508    1.5235363    2.9201397
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <-3                  >=0                6.4654428    5.5850649    7.4845954
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              >=0                3.7096745    3.1567100    4.3595024
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              >=0                2.5849593    2.2306016    2.9956109
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               >=0                1.6981332    1.4718099    1.9592587
6 months    ki1135781-COHORTS         INDIA        >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    ki1135781-COHORTS         INDIA        <-3                  >=0               15.9693589   12.6949457   20.0883428
6 months    ki1135781-COHORTS         INDIA        [-3--2)              >=0               12.5906329   10.0427782   15.7848788
6 months    ki1135781-COHORTS         INDIA        [-2--1)              >=0                6.3835336    5.0731419    8.0323992
6 months    ki1135781-COHORTS         INDIA        [-1-0)               >=0                2.9331216    2.3077063    3.7280317
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   <-3                  >=0                6.9212836    6.2159206    7.7066889
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              >=0                4.2599764    3.8198484    4.7508166
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              >=0                2.0995787    1.8726603    2.3539938
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               >=0                0.9575818    0.8363281    1.0964154
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   <-3                  >=0                6.0464387    5.0342506    7.2621377
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              >=0                3.7138417    3.0336411    4.5465564
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              >=0                2.2137144    1.8078843    2.7106444
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               >=0                1.1521541    0.9057182    1.4656426
24 months   ki1000108-IRC             INDIA        >=0                  >=0                1.0000000    1.0000000    1.0000000
24 months   ki1000108-IRC             INDIA        <-3                  >=0                1.7820733    1.1128163    2.8538270
24 months   ki1000108-IRC             INDIA        [-3--2)              >=0                1.3340837    0.8200476    2.1703367
24 months   ki1000108-IRC             INDIA        [-2--1)              >=0                1.4038562    0.9805500    2.0099048
24 months   ki1000108-IRC             INDIA        [-1-0)               >=0                1.1623330    0.8400551    1.6082492
24 months   ki1101329-Keneba          GAMBIA       >=0                  >=0                1.0000000    1.0000000    1.0000000
24 months   ki1101329-Keneba          GAMBIA       <-3                  >=0                0.1800445    0.0458458    0.7070665
24 months   ki1101329-Keneba          GAMBIA       [-3--2)              >=0                1.8118042    1.3582632    2.4167882
24 months   ki1101329-Keneba          GAMBIA       [-2--1)              >=0                1.9942772    1.5915364    2.4989322
24 months   ki1101329-Keneba          GAMBIA       [-1-0)               >=0                1.6362321    1.3517387    1.9806015
24 months   ki1135781-COHORTS         INDIA        >=0                  >=0                1.0000000    1.0000000    1.0000000
24 months   ki1135781-COHORTS         INDIA        <-3                  >=0                3.0037111    2.6941640    3.3488237
24 months   ki1135781-COHORTS         INDIA        [-3--2)              >=0                2.6751100    2.4164932    2.9614044
24 months   ki1135781-COHORTS         INDIA        [-2--1)              >=0                2.3775862    2.1623484    2.6142485
24 months   ki1135781-COHORTS         INDIA        [-1-0)               >=0                1.7944763    1.6292766    1.9764264
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  >=0                2.3723082    2.1854945    2.5750905
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              >=0                1.9891687    1.8335813    2.1579583
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              >=0                1.6382211    1.5096864    1.7776993
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               >=0                1.0595553    0.9629421    1.1658619
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  >=0                2.5444379    2.1932305    2.9518849
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              >=0                2.2156595    1.9257134    2.5492615
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              >=0                1.6523240    1.4353231    1.9021323
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               >=0                1.0845248    0.9220448    1.2756365


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.1097344   0.0587053   0.1607635
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.1947147   0.1624933   0.2269361
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.0609777   0.0441055   0.0778498
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0792477   0.0694504   0.0890451
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.1439000   0.1325073   0.1552928
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.1480098   0.1368556   0.1591640
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1213463   0.1008034   0.1418893
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.0852136   0.0225292   0.1478979
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.0924641   0.0672556   0.1176726
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.2109933   0.1918566   0.2301299
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.1658758   0.1434771   0.1882746
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1182530   0.0916637   0.1448422


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.4554567   0.2107137   0.6243094
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.6859149   0.5912234   0.7586715
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.4529287   0.3275500   0.5549305
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.4788274   0.4206286   0.5311801
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.7722510   0.7197807   0.8148963
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.5901743   0.5477421   0.6286253
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.4867255   0.4025822   0.5590176
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.2100488   0.0391396   0.3505582
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2866117   0.2055659   0.3593893
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.4559868   0.4135807   0.4953264
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.3386313   0.2917215   0.3824342
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.3022274   0.2299061   0.3677568
