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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

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
![](/tmp/a8c0bda9-a36b-47f2-91a6-76799f3ca4b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8c0bda9-a36b-47f2-91a6-76799f3ca4b9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8c0bda9-a36b-47f2-91a6-76799f3ca4b9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8c0bda9-a36b-47f2-91a6-76799f3ca4b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.1328671   0.0771620   0.1885722
6 months    ki1000108-IRC             INDIA        <-3                  NA                0.5714286   0.3118673   0.8309899
6 months    ki1000108-IRC             INDIA        [-3--2)              NA                0.5185185   0.3298057   0.7072313
6 months    ki1000108-IRC             INDIA        [-2--1)              NA                0.3538462   0.2374523   0.4702400
6 months    ki1000108-IRC             INDIA        [-1-0)               NA                0.2116788   0.1431866   0.2801711
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.0750000   0.0528660   0.0971340
6 months    ki1000304b-SAS-CompFeed   INDIA        <-3                  NA                0.8387097   0.7624526   0.9149667
6 months    ki1000304b-SAS-CompFeed   INDIA        [-3--2)              NA                0.5684211   0.4861060   0.6507361
6 months    ki1000304b-SAS-CompFeed   INDIA        [-2--1)              NA                0.3375315   0.2809799   0.3940831
6 months    ki1000304b-SAS-CompFeed   INDIA        [-1-0)               NA                0.1458333   0.1172317   0.1744349
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.0743802   0.0552866   0.0934737
6 months    ki1101329-Keneba          GAMBIA       <-3                  NA                0.2173913   0.0487593   0.3860233
6 months    ki1101329-Keneba          GAMBIA       [-3--2)              NA                0.3809524   0.2340316   0.5278732
6 months    ki1101329-Keneba          GAMBIA       [-2--1)              NA                0.2538462   0.1790054   0.3286869
6 months    ki1101329-Keneba          GAMBIA       [-1-0)               NA                0.1730769   0.1367092   0.2094446
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0848507   0.0744276   0.0952738
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <-3                  NA                0.5819672   0.5200753   0.6438592
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              NA                0.3345521   0.2950091   0.3740951
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              NA                0.2240803   0.2029422   0.2452183
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               NA                0.1463181   0.1339497   0.1586866
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.0410642   0.0317099   0.0504185
6 months    ki1135781-COHORTS         INDIA        <-3                  NA                0.6839080   0.6148182   0.7529979
6 months    ki1135781-COHORTS         INDIA        [-3--2)              NA                0.5284091   0.4858263   0.5709919
6 months    ki1135781-COHORTS         INDIA        [-2--1)              NA                0.2743056   0.2512595   0.2973516
6 months    ki1135781-COHORTS         INDIA        [-1-0)               NA                0.1232877   0.1097411   0.1368342
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.0871671   0.0760072   0.0983269
6 months    kiGH5241-JiVitA-3         BANGLADESH   <-3                  NA                0.7525773   0.7282695   0.7768851
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              NA                0.4624200   0.4432301   0.4816099
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              NA                0.2199024   0.2080474   0.2317575
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               NA                0.0860267   0.0771933   0.0948602
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1278135   0.1060052   0.1496218
6 months    kiGH5241-JiVitA-4         BANGLADESH   <-3                  NA                0.7794118   0.7207550   0.8380685
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              NA                0.4680851   0.4133126   0.5228577
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              NA                0.2841476   0.2538336   0.3144616
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               NA                0.1470302   0.1211675   0.1728928
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.3286713   0.2515827   0.4057600
24 months   ki1000108-IRC             INDIA        <-3                  NA                0.6666667   0.4277986   0.9055347
24 months   ki1000108-IRC             INDIA        [-3--2)              NA                0.5185185   0.3298063   0.7072307
24 months   ki1000108-IRC             INDIA        [-2--1)              NA                0.5076923   0.3859976   0.6293871
24 months   ki1000108-IRC             INDIA        [-1-0)               NA                0.3868613   0.3052018   0.4685208
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2311734   0.1965780   0.2657688
24 months   ki1101329-Keneba          GAMBIA       <-3                  NA                0.3333333   0.1154565   0.5512102
24 months   ki1101329-Keneba          GAMBIA       [-3--2)              NA                0.4864865   0.3253611   0.6476119
24 months   ki1101329-Keneba          GAMBIA       [-2--1)              NA                0.5140187   0.4192727   0.6087647
24 months   ki1101329-Keneba          GAMBIA       [-1-0)               NA                0.4012346   0.3478386   0.4546306
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.2434018   0.2206256   0.2661779
24 months   ki1135781-COHORTS         INDIA        <-3                  NA                0.7810219   0.7117646   0.8502792
24 months   ki1135781-COHORTS         INDIA        [-3--2)              NA                0.7045455   0.6596041   0.7494868
24 months   ki1135781-COHORTS         INDIA        [-2--1)              NA                0.6186594   0.5900050   0.6473138
24 months   ki1135781-COHORTS         INDIA        [-1-0)               NA                0.4556818   0.4324119   0.4789517
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.2859135   0.2577879   0.3140392
24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  NA                0.8072776   0.7732598   0.8412954
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              NA                0.6722907   0.6460133   0.6985682
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              NA                0.5395043   0.5179736   0.5610349
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               NA                0.3234183   0.3008670   0.3459696
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.2732510   0.2413639   0.3051382
24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  NA                0.6972477   0.6349735   0.7595219
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              NA                0.6041667   0.5524649   0.6558684
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              NA                0.4505495   0.4146293   0.4864696
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               NA                0.2964072   0.2625046   0.3303097


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


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC             INDIA        <-3                  >=0                4.3007519    2.3178653    7.979957
6 months    ki1000108-IRC             INDIA        [-3--2)              >=0                3.9025341    2.2399212    6.799245
6 months    ki1000108-IRC             INDIA        [-2--1)              >=0                2.6631579    1.5630196    4.537634
6 months    ki1000108-IRC             INDIA        [-1-0)               >=0                1.5931617    0.9381239    2.705575
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        <-3                  >=0               11.1827957    8.4528683   14.794377
6 months    ki1000304b-SAS-CompFeed   INDIA        [-3--2)              >=0                7.5789474    5.9320937    9.682997
6 months    ki1000304b-SAS-CompFeed   INDIA        [-2--1)              >=0                4.5004198    2.9141508    6.950148
6 months    ki1000304b-SAS-CompFeed   INDIA        [-1-0)               >=0                1.9444444    1.2808605    2.951816
6 months    ki1101329-Keneba          GAMBIA       >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA       <-3                  >=0                2.9227053    1.2910176    6.616646
6 months    ki1101329-Keneba          GAMBIA       [-3--2)              >=0                5.1216931    3.2226294    8.139856
6 months    ki1101329-Keneba          GAMBIA       [-2--1)              >=0                3.4128205    2.3085462    5.045316
6 months    ki1101329-Keneba          GAMBIA       [-1-0)               >=0                2.3269231    1.6699793    3.242298
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     <-3                  >=0                6.8587209    5.8301336    8.068778
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-3--2)              >=0                3.9428329    3.3248629    4.675661
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-2--1)              >=0                2.6408773    2.2619541    3.083278
6 months    ki1126311-ZVITAMBO        ZIMBABWE     [-1-0)               >=0                1.7244189    1.4855348    2.001717
6 months    ki1135781-COHORTS         INDIA        >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA        <-3                  >=0               16.6546041   12.9810889   21.367687
6 months    ki1135781-COHORTS         INDIA        [-3--2)              >=0               12.8678764   10.1057254   16.384993
6 months    ki1135781-COHORTS         INDIA        [-2--1)              >=0                6.6799191    5.2399336    8.515627
6 months    ki1135781-COHORTS         INDIA        [-1-0)               >=0                3.0023150    2.3314046    3.866294
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   <-3                  >=0                8.6337342    7.5685680    9.848807
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              >=0                5.3049845    4.6412209    6.063676
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              >=0                2.5227696    2.1994936    2.893560
6 months    kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               >=0                0.9869178    0.8386314    1.161424
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   <-3                  >=0                6.0980392    5.0633597    7.344152
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              >=0                3.6622508    2.9859485    4.491732
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              >=0                2.2231419    1.8116202    2.728143
6 months    kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               >=0                1.1503494    0.9022908    1.466604
24 months   ki1000108-IRC             INDIA        >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1000108-IRC             INDIA        <-3                  >=0                2.0283688    1.3217923    3.112652
24 months   ki1000108-IRC             INDIA        [-3--2)              >=0                1.5776202    1.0232071    2.432436
24 months   ki1000108-IRC             INDIA        [-2--1)              >=0                1.5446809    1.1045671    2.160158
24 months   ki1000108-IRC             INDIA        [-1-0)               >=0                1.1770461    0.8585286    1.613735
24 months   ki1101329-Keneba          GAMBIA       >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA       <-3                  >=0                1.4419192    0.7374416    2.819384
24 months   ki1101329-Keneba          GAMBIA       [-3--2)              >=0                2.1044226    1.4631601    3.026733
24 months   ki1101329-Keneba          GAMBIA       [-2--1)              >=0                2.2235202    1.7535916    2.819381
24 months   ki1101329-Keneba          GAMBIA       [-1-0)               >=0                1.7356435    1.4206497    2.120479
24 months   ki1135781-COHORTS         INDIA        >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA        <-3                  >=0                3.2087767    2.8206666    3.650289
24 months   ki1135781-COHORTS         INDIA        [-3--2)              >=0                2.8945783    2.5846541    3.241665
24 months   ki1135781-COHORTS         INDIA        [-2--1)              >=0                2.5417212    2.2897246    2.821451
24 months   ki1135781-COHORTS         INDIA        [-1-0)               >=0                1.8721386    1.6828346    2.082737
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   <-3                  >=0                2.8235027    2.5303354    3.150637
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-3--2)              >=0                2.3513778    2.1179703    2.610508
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-2--1)              >=0                1.8869490    1.7005166    2.093821
24 months   kiGH5241-JiVitA-3         BANGLADESH   [-1-0)               >=0                1.1311753    1.0048197    1.273420
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   <-3                  >=0                2.5516746    2.1975713    2.962836
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-3--2)              >=0                2.2110316    1.9206701    2.545289
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-2--1)              >=0                1.6488481    1.4322377    1.898219
24 months   kiGH5241-JiVitA-4         BANGLADESH   [-1-0)               >=0                1.0847432    0.9222870    1.275815


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.1080655   0.0567948   0.1593362
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.2088759   0.1756108   0.2421409
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.0602496   0.0428245   0.0776747
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.0806530   0.0706252   0.0906809
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.1452742   0.1337356   0.1568129
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.1636229   0.1519910   0.1752548
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1214981   0.1007818   0.1422145
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.0770134   0.0141613   0.1398656
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.0914378   0.0650044   0.1178711
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.2193162   0.1987699   0.2398624
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.2039285   0.1779494   0.2299076
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.1180204   0.0913483   0.1446925


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC             INDIA        >=0                  NA                0.4485300   0.2032520   0.6182994
6 months    ki1000304b-SAS-CompFeed   INDIA        >=0                  NA                0.7358000   0.6347923   0.8088714
6 months    ki1101329-Keneba          GAMBIA       >=0                  NA                0.4475207   0.3172206   0.5529546
6 months    ki1126311-ZVITAMBO        ZIMBABWE     >=0                  NA                0.4873186   0.4272896   0.5410555
6 months    ki1135781-COHORTS         INDIA        >=0                  NA                0.7796257   0.7255341   0.8230569
6 months    kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.6524300   0.6072847   0.6923856
6 months    kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.4873344   0.4021435   0.5603861
24 months   ki1000108-IRC             INDIA        >=0                  NA                0.1898356   0.0188847   0.3309998
24 months   ki1101329-Keneba          GAMBIA       >=0                  NA                0.2834303   0.1979678   0.3597861
24 months   ki1135781-COHORTS         INDIA        >=0                  NA                0.4739738   0.4278852   0.5163495
24 months   kiGH5241-JiVitA-3         BANGLADESH   >=0                  NA                0.4163148   0.3605422   0.4672229
24 months   kiGH5241-JiVitA-4         BANGLADESH   >=0                  NA                0.3016331   0.2290508   0.3673820
