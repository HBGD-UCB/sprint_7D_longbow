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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0              0       34     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3              0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3              1        7     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          1       22     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          0       82     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          1       14     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           0       78     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           1        4     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0              0       32     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0              1        1     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3              0        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3              1        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          0       19     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          1       15     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          0       70     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          1       16     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           0       68     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           1        9     234
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0              0       27     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0              1        4     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3              0        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3              1        4     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          0       10     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)          1       19     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          0       38     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)          1       35     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           0       38     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)           1       32     207
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0              0      106     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0              1        5     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)          0        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)          1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)          0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)          1        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)           0       49     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)           1        6     191
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0              0      120     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)          0        7     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)          1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)          0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)          1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)           0       58     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)           1        2     209
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0              0       94     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)          0        7     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)          1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)          0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)          1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)           0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)           1        2     169
Birth       ki0047075b-MAL-ED          INDIA                          >=0              0       40     206
Birth       ki0047075b-MAL-ED          INDIA                          >=0              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <-3              0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <-3              1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)          0       11     206
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)          1       10     206
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)          0       51     206
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)          1       17     206
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)           0       71     206
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)           1        4     206
6 months    ki0047075b-MAL-ED          INDIA                          >=0              0       39     231
6 months    ki0047075b-MAL-ED          INDIA                          >=0              1        2     231
6 months    ki0047075b-MAL-ED          INDIA                          <-3              0        1     231
6 months    ki0047075b-MAL-ED          INDIA                          <-3              1        4     231
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)          0       15     231
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)          1        7     231
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)          0       55     231
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)          1       20     231
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)           0       77     231
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)           1       11     231
24 months   ki0047075b-MAL-ED          INDIA                          >=0              0       28     222
24 months   ki0047075b-MAL-ED          INDIA                          >=0              1       10     222
24 months   ki0047075b-MAL-ED          INDIA                          <-3              0        1     222
24 months   ki0047075b-MAL-ED          INDIA                          <-3              1        4     222
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)          0       10     222
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)          1       12     222
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)          0       33     222
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)          1       36     222
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)           0       57     222
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)           1       31     222
Birth       ki0047075b-MAL-ED          NEPAL                          >=0              0       32     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=0              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <-3              0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <-3              1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)          0        5     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)          1        7     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)          0       36     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)          1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)           0       82     173
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)           1        3     173
6 months    ki0047075b-MAL-ED          NEPAL                          >=0              0       47     229
6 months    ki0047075b-MAL-ED          NEPAL                          >=0              1        1     229
6 months    ki0047075b-MAL-ED          NEPAL                          <-3              0        2     229
6 months    ki0047075b-MAL-ED          NEPAL                          <-3              1        2     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)          0       13     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)          1        2     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)          0       49     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)          1        4     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)           0      107     229
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)           1        2     229
24 months   ki0047075b-MAL-ED          NEPAL                          >=0              0       41     221
24 months   ki0047075b-MAL-ED          NEPAL                          >=0              1        4     221
24 months   ki0047075b-MAL-ED          NEPAL                          <-3              0        0     221
24 months   ki0047075b-MAL-ED          NEPAL                          <-3              1        3     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)          0       10     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)          1        5     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)          0       38     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)          1       14     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)           0       87     221
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)           1       19     221
Birth       ki0047075b-MAL-ED          PERU                           >=0              0       90     287
Birth       ki0047075b-MAL-ED          PERU                           >=0              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <-3              0        0     287
Birth       ki0047075b-MAL-ED          PERU                           <-3              1        4     287
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)          0        2     287
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)          1        7     287
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)          0       24     287
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)          1       18     287
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)           0      137     287
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)           1        5     287
6 months    ki0047075b-MAL-ED          PERU                           >=0              0       76     270
6 months    ki0047075b-MAL-ED          PERU                           >=0              1        7     270
6 months    ki0047075b-MAL-ED          PERU                           <-3              0        1     270
6 months    ki0047075b-MAL-ED          PERU                           <-3              1        3     270
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)          0        2     270
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)          1        7     270
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)          0       20     270
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)          1       20     270
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)           0      112     270
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)           1       22     270
24 months   ki0047075b-MAL-ED          PERU                           >=0              0       44     198
24 months   ki0047075b-MAL-ED          PERU                           >=0              1       13     198
24 months   ki0047075b-MAL-ED          PERU                           <-3              0        2     198
24 months   ki0047075b-MAL-ED          PERU                           <-3              1        1     198
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)          0        0     198
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)          1        6     198
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)          0       17     198
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)          1       18     198
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)           0       63     198
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)           1       34     198
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              0       91     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              0        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1        3     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          0        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          1        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          0       30     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          1        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           0      107     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           1        9     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              0       90     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              1       10     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          0        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          1       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           0       80     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           1       24     254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              0       60     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0              1       29     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          0        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)          1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          0       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)          1       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)           1       41     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              0       53     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          0        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          1        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           0       40     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           1        5     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              0       53     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              1        2     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          0        1     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          1        4     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          0       10     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          1        7     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           0       39     124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           1        8     124
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              0       24     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0              1       25     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          0        0     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          1        4     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          0        4     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)          1       11     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           0       13     106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)           1       25     106
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0              0       58     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0              1       11     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3              0        2     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3              1        9     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          0       12     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          1       18     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          0       70     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          1       35     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           0      110     361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           1       36     361
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0              0       27     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0              1       42     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3              0        3     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3              1        9     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          0        2     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          1       28     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          0       24     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          1       82     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           0       49     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           1       98     364
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0              0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3              0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)          1        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          0       26      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)          1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           0       34      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)           1        3      90
6 months    ki1000108-IRC              INDIA                          >=0              0       53     401
6 months    ki1000108-IRC              INDIA                          >=0              1        8     401
6 months    ki1000108-IRC              INDIA                          <-3              0        5     401
6 months    ki1000108-IRC              INDIA                          <-3              1        6     401
6 months    ki1000108-IRC              INDIA                          [-3--2)          0       25     401
6 months    ki1000108-IRC              INDIA                          [-3--2)          1       16     401
6 months    ki1000108-IRC              INDIA                          [-2--1)          0       91     401
6 months    ki1000108-IRC              INDIA                          [-2--1)          1       41     401
6 months    ki1000108-IRC              INDIA                          [-1-0)           0      132     401
6 months    ki1000108-IRC              INDIA                          [-1-0)           1       24     401
24 months   ki1000108-IRC              INDIA                          >=0              0       51     403
24 months   ki1000108-IRC              INDIA                          >=0              1       10     403
24 months   ki1000108-IRC              INDIA                          <-3              0        2     403
24 months   ki1000108-IRC              INDIA                          <-3              1       10     403
24 months   ki1000108-IRC              INDIA                          [-3--2)          0       18     403
24 months   ki1000108-IRC              INDIA                          [-3--2)          1       23     403
24 months   ki1000108-IRC              INDIA                          [-2--1)          0       67     403
24 months   ki1000108-IRC              INDIA                          [-2--1)          1       66     403
24 months   ki1000108-IRC              INDIA                          [-1-0)           0       99     403
24 months   ki1000108-IRC              INDIA                          [-1-0)           1       57     403
Birth       ki1000108-IRC              INDIA                          >=0              0       55     383
Birth       ki1000108-IRC              INDIA                          >=0              1        3     383
Birth       ki1000108-IRC              INDIA                          <-3              0        7     383
Birth       ki1000108-IRC              INDIA                          <-3              1        5     383
Birth       ki1000108-IRC              INDIA                          [-3--2)          0       30     383
Birth       ki1000108-IRC              INDIA                          [-3--2)          1        9     383
Birth       ki1000108-IRC              INDIA                          [-2--1)          0      107     383
Birth       ki1000108-IRC              INDIA                          [-2--1)          1       17     383
Birth       ki1000108-IRC              INDIA                          [-1-0)           0      140     383
Birth       ki1000108-IRC              INDIA                          [-1-0)           1       10     383
6 months    ki1000109-EE               PAKISTAN                       >=0              0       27     369
6 months    ki1000109-EE               PAKISTAN                       >=0              1        8     369
6 months    ki1000109-EE               PAKISTAN                       <-3              0        9     369
6 months    ki1000109-EE               PAKISTAN                       <-3              1       37     369
6 months    ki1000109-EE               PAKISTAN                       [-3--2)          0       19     369
6 months    ki1000109-EE               PAKISTAN                       [-3--2)          1       50     369
6 months    ki1000109-EE               PAKISTAN                       [-2--1)          0       54     369
6 months    ki1000109-EE               PAKISTAN                       [-2--1)          1       62     369
6 months    ki1000109-EE               PAKISTAN                       [-1-0)           0       70     369
6 months    ki1000109-EE               PAKISTAN                       [-1-0)           1       33     369
Birth       ki1000109-EE               PAKISTAN                       [-2--1)          0        1       2
Birth       ki1000109-EE               PAKISTAN                       [-2--1)          1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       >=0              0        4       7
Birth       ki1000109-ResPak           PAKISTAN                       >=0              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <-3              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <-3              1        1       7
Birth       ki1000109-ResPak           PAKISTAN                       [-2--1)          0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       [-2--1)          1        1       7
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)           0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)           1        0       7
6 months    ki1000109-ResPak           PAKISTAN                       >=0              0        2       5
6 months    ki1000109-ResPak           PAKISTAN                       >=0              1        0       5
6 months    ki1000109-ResPak           PAKISTAN                       <-3              0        0       5
6 months    ki1000109-ResPak           PAKISTAN                       <-3              1        1       5
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)          0        0       5
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)          1        1       5
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)           0        1       5
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)           1        0       5
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0              0      126    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0              1       11    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3              0       16    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3              1       70    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)          0       99    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)          1       85    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)          0      306    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)          1      147    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)           0      402    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)           1       64    1326
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0              0       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3              0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3              1        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)          0       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)          1       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)          0       52     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)          1       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)           0       69     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)           1        6     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           1        0      28
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0              0        1      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0              1        0      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          0        1      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1        2      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          0        7      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          1        2      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           0        4      17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           1        0      17
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0              0        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0              1        0      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          0        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1        2      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          0        0      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          1        8      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           0        1      16
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           1        3      16
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0              0       50     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0              1        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3              0        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3              1        3     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)          0       54     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)          1       38     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)          0      205     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)          1       41     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)           0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)           1       11     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0              0       43     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0              1        8     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3              0        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3              1        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)          0       49     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)          1       45     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)          0      150     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)          1       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)           0      143     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)           1       42     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0              0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0              0       87     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0              1        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3              0        8     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          0       63     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          1       45     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          0      208     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          1       63     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           0      199     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           1       23     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0              0       56     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0              1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3              0        5     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3              1       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          0       47     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)          1       34     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          0      147     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)          1       50     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           0      127     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)           1       32     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0              0      805    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0              1       55    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3              0       11    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3              1        6    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)          0       28    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)          1       11    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)          0      215    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)          1       44    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)           0      757    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)           1       78    2010
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0              1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)           0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)           1        0       6
Birth       ki1101329-Keneba           GAMBIA                         >=0              0      286    1541
Birth       ki1101329-Keneba           GAMBIA                         >=0              1        2    1541
Birth       ki1101329-Keneba           GAMBIA                         <-3              0        6    1541
Birth       ki1101329-Keneba           GAMBIA                         <-3              1       12    1541
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)          0       68    1541
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)          1       27    1541
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)          0      408    1541
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)          1       27    1541
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)           0      691    1541
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)           1       14    1541
6 months    ki1101329-Keneba           GAMBIA                         >=0              0      331    1724
6 months    ki1101329-Keneba           GAMBIA                         >=0              1       20    1724
6 months    ki1101329-Keneba           GAMBIA                         <-3              0       10    1724
6 months    ki1101329-Keneba           GAMBIA                         <-3              1       14    1724
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)          0       60    1724
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)          1       44    1724
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)          0      381    1724
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)          1       96    1724
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)           0      698    1724
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)           1       70    1724
24 months   ki1101329-Keneba           GAMBIA                         >=0              0      230    1435
24 months   ki1101329-Keneba           GAMBIA                         >=0              1       54    1435
24 months   ki1101329-Keneba           GAMBIA                         <-3              0        7    1435
24 months   ki1101329-Keneba           GAMBIA                         <-3              1       12    1435
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)          0       33    1435
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)          1       56    1435
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)          0      222    1435
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)          1      175    1435
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)           0      451    1435
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)           1      195    1435
Birth       ki1114097-CMIN             BANGLADESH                     >=0              0        2      12
Birth       ki1114097-CMIN             BANGLADESH                     >=0              1        0      12
Birth       ki1114097-CMIN             BANGLADESH                     <-3              0        0      12
Birth       ki1114097-CMIN             BANGLADESH                     <-3              1        3      12
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)          0        1      12
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)          1        2      12
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)          0        1      12
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)          1        0      12
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)           0        3      12
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)           1        0      12
Birth       ki1114097-CMIN             BRAZIL                         >=0              0       55     115
Birth       ki1114097-CMIN             BRAZIL                         >=0              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         <-3              0        0     115
Birth       ki1114097-CMIN             BRAZIL                         <-3              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)          0        1     115
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)          1        1     115
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)          0       16     115
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)          1        2     115
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)           0       38     115
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)           1        0     115
6 months    ki1114097-CMIN             BRAZIL                         >=0              0       49     104
6 months    ki1114097-CMIN             BRAZIL                         >=0              1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)          0        1     104
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)          1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)          0       14     104
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)          1        2     104
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)           0       30     104
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)           1        7     104
Birth       ki1114097-CMIN             PERU                           >=0              0        8      10
Birth       ki1114097-CMIN             PERU                           [-1-0)           0        2      10
6 months    ki1114097-CMIN             PERU                           >=0              0        8       9
6 months    ki1114097-CMIN             PERU                           [-1-0)           0        1       9
24 months   ki1114097-CMIN             PERU                           >=0              0        2       3
24 months   ki1114097-CMIN             PERU                           [-1-0)           0        1       3
Birth       ki1114097-CONTENT          PERU                           >=0              0        1       2
Birth       ki1114097-CONTENT          PERU                           [-1-0)           0        1       2
6 months    ki1114097-CONTENT          PERU                           >=0              0        1       2
6 months    ki1114097-CONTENT          PERU                           [-1-0)           0        1       2
24 months   ki1114097-CONTENT          PERU                           >=0              0        1       2
24 months   ki1114097-CONTENT          PERU                           [-1-0)           0        1       2
Birth       ki1119695-PROBIT           BELARUS                        >=0              0     8682   13884
Birth       ki1119695-PROBIT           BELARUS                        >=0              1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)          0      955   13884
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)          1       26   13884
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)           0     4214   13884
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)           1        5   13884
6 months    ki1119695-PROBIT           BELARUS                        >=0              0     9573   15761
6 months    ki1119695-PROBIT           BELARUS                        >=0              1      264   15761
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)          0      845   15761
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)          1      258   15761
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)           0     4355   15761
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)           1      466   15761
24 months   ki1119695-PROBIT           BELARUS                        >=0              0     2396    4035
24 months   ki1119695-PROBIT           BELARUS                        >=0              1      165    4035
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)          0      232    4035
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)          1       48    4035
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)           0     1063    4035
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)           1      131    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0              0     3128   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0              1       43   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3              0      147   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3              1      257   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          0      754   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          1      418   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          0     2900   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          1      445   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           0     5469   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           1      269   13830
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0              0     1845    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0              1      110    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3              0       83    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3              1      129    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          0      392    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          1      245    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          0     1459    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          1      490    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           0     3114    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           1      398    8265
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0              0       29     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0              1       26     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3              0        1     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3              1       14     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          0       11     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)          1       46     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          0       47     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)          1      109     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           0       71     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)           1      101     455
Birth       ki1135781-COHORTS          GUATEMALA                      >=0              0      223     784
Birth       ki1135781-COHORTS          GUATEMALA                      >=0              1        3     784
Birth       ki1135781-COHORTS          GUATEMALA                      <-3              0        2     784
Birth       ki1135781-COHORTS          GUATEMALA                      <-3              1        5     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)          0       41     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)          1       19     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)          0      203     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)          1       19     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)           0      269     784
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)           1        0     784
6 months    ki1135781-COHORTS          GUATEMALA                      >=0              0      169     771
6 months    ki1135781-COHORTS          GUATEMALA                      >=0              1       47     771
6 months    ki1135781-COHORTS          GUATEMALA                      <-3              0        0     771
6 months    ki1135781-COHORTS          GUATEMALA                      <-3              1       10     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)          0       16     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)          1       42     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)          0      110     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)          1      121     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)           0      167     771
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)           1       89     771
24 months   ki1135781-COHORTS          GUATEMALA                      >=0              0       50     653
24 months   ki1135781-COHORTS          GUATEMALA                      >=0              1      119     653
24 months   ki1135781-COHORTS          GUATEMALA                      <-3              0        0     653
24 months   ki1135781-COHORTS          GUATEMALA                      <-3              1        7     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)          0        3     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)          1       51     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)          0       26     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)          1      173     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)           0       56     653
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)           1      168     653
Birth       ki1135781-COHORTS          INDIA                          >=0              0      754    6637
Birth       ki1135781-COHORTS          INDIA                          >=0              1        6    6637
Birth       ki1135781-COHORTS          INDIA                          <-3              0       59    6637
Birth       ki1135781-COHORTS          INDIA                          <-3              1      225    6637
Birth       ki1135781-COHORTS          INDIA                          [-3--2)          0      547    6637
Birth       ki1135781-COHORTS          INDIA                          [-3--2)          1      314    6637
Birth       ki1135781-COHORTS          INDIA                          [-2--1)          0     2056    6637
Birth       ki1135781-COHORTS          INDIA                          [-2--1)          1      200    6637
Birth       ki1135781-COHORTS          INDIA                          [-1-0)           0     2430    6637
Birth       ki1135781-COHORTS          INDIA                          [-1-0)           1       46    6637
6 months    ki1135781-COHORTS          INDIA                          >=0              0      706    6261
6 months    ki1135781-COHORTS          INDIA                          >=0              1       23    6261
6 months    ki1135781-COHORTS          INDIA                          <-3              0       72    6261
6 months    ki1135781-COHORTS          INDIA                          <-3              1      159    6261
6 months    ki1135781-COHORTS          INDIA                          [-3--2)          0      516    6261
6 months    ki1135781-COHORTS          INDIA                          [-3--2)          1      294    6261
6 months    ki1135781-COHORTS          INDIA                          [-2--1)          0     1658    6261
6 months    ki1135781-COHORTS          INDIA                          [-2--1)          1      473    6261
6 months    ki1135781-COHORTS          INDIA                          [-1-0)           0     2149    6261
6 months    ki1135781-COHORTS          INDIA                          [-1-0)           1      211    6261
24 months   ki1135781-COHORTS          INDIA                          >=0              0      475    4861
24 months   ki1135781-COHORTS          INDIA                          >=0              1      134    4861
24 months   ki1135781-COHORTS          INDIA                          <-3              0       27    4861
24 months   ki1135781-COHORTS          INDIA                          <-3              1      134    4861
24 months   ki1135781-COHORTS          INDIA                          [-3--2)          0      218    4861
24 months   ki1135781-COHORTS          INDIA                          [-3--2)          1      380    4861
24 months   ki1135781-COHORTS          INDIA                          [-2--1)          0      755    4861
24 months   ki1135781-COHORTS          INDIA                          [-2--1)          1      891    4861
24 months   ki1135781-COHORTS          INDIA                          [-1-0)           0     1148    4861
24 months   ki1135781-COHORTS          INDIA                          [-1-0)           1      699    4861
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0              0      654    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0              1        0    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3              0       24    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3              1       47    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)          0      120    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)          1       57    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)          0      663    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)          1       57    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)           0     1363    3002
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)           1       17    3002
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0              0      530    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0              1       50    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3              0       20    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3              1       32    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)          0       78    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)          1       74    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)          0      443    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)          1      200    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)           0     1033    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)           1      204    2664
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0              0      276    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0              1      243    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3              0        7    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3              1       32    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)          0       23    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)          1      109    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)          0      163    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)          1      415    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)           0      456    2404
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)           1      680    2404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0              0      652   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0              1        2   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3              0      124   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3              1     1893   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          0     1906   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          1     3030   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          0     6585   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          1     1313   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           0     4007   19596
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           1       84   19596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0              0     1766   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0              1      215   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3              0      458   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3              1      978   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          0     2153   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          1     1458   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          0     4895   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          1     1199   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           0     3257   16731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           1      352   16731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0              0      676    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0              1      306    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3              0      183    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3              1      600    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          0      710    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)          1     1238    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          0     1610    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)          1     1465    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           0     1188    8578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)           1      602    8578
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0              0      675    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0              1      274    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3              0       78    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3              1      161    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          0      269    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          1      340    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          0      732    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          1      496    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           0      688    4007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           1      294    4007
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0              0      812    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0              1      145    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3              0       63    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3              1      168    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          0      345    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          1      262    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          0      934    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          1      293    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           0      879    4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           1      137    4038
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0              0       40     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0              1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3              0        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3              1       58     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          0       51     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)          1      104     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          0      253     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)          1       81     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           0      230     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)           1        4     822


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/28f7ea4e-0e38-4adc-b88b-6be92fda3cdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28f7ea4e-0e38-4adc-b88b-6be92fda3cdc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28f7ea4e-0e38-4adc-b88b-6be92fda3cdc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28f7ea4e-0e38-4adc-b88b-6be92fda3cdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0135604   0.0095347   0.0175861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6361386   0.5892230   0.6830542
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3566553   0.3292303   0.3840803
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1330344   0.1215251   0.1445437
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.0468804   0.0414109   0.0523500
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.0078947   0.0016023   0.0141872
Birth       ki1135781-COHORTS          INDIA                          <-3                  NA                0.7922535   0.7450667   0.8394403
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3646922   0.3325383   0.3968462
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.0886525   0.0769225   0.1003825
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0185784   0.0132593   0.0238974
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1311475   0.0463314   0.2159637
6 months    ki1000108-IRC              INDIA                          <-3                  NA                0.5454545   0.2508348   0.8400743
6 months    ki1000108-IRC              INDIA                          [-3--2)              NA                0.3902439   0.2407428   0.5397450
6 months    ki1000108-IRC              INDIA                          [-2--1)              NA                0.3106061   0.2315670   0.3896452
6 months    ki1000108-IRC              INDIA                          [-1-0)               NA                0.1538462   0.0971575   0.2105348
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2285714   0.0892679   0.3678750
6 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.8043478   0.6895529   0.9191428
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.7246377   0.6190956   0.8301797
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.5344828   0.4435871   0.6253784
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.3203883   0.2301508   0.4106259
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.0802920   0.0397919   0.1207921
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.8139535   0.7499173   0.8779897
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.4619565   0.4258341   0.4980790
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.3245033   0.2818446   0.3671620
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.1373391   0.0979097   0.1767684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.0543478   0.0079909   0.1007048
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.6363636   0.4352104   0.8375169
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.4166667   0.3236217   0.5097116
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.2324723   0.1821454   0.2827992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.1036036   0.0634880   0.1437192
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0639535   0.0475971   0.0803099
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.3529412   0.1257169   0.5801655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.2820513   0.1407863   0.4233163
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1698842   0.1241383   0.2156301
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0934132   0.0736698   0.1131566
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0569801   0.0327228   0.0812374
6 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.5833333   0.3860360   0.7806307
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.4230769   0.3280983   0.5180556
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.2012579   0.1652668   0.2372489
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0911458   0.0707844   0.1115073
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0268375   0.0167707   0.0369042
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.2339075   0.1996488   0.2681663
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0966604   0.0765769   0.1167440
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0562660   0.0460507   0.0664812
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6084906   0.5427846   0.6741965
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3846154   0.3468328   0.4223979
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.2514110   0.2321498   0.2706721
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1133257   0.1028413   0.1238101
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0315501   0.0188602   0.0442400
6 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.6883117   0.6285766   0.7480468
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3629630   0.3298458   0.3960802
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.2219615   0.2043162   0.2396069
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0894068   0.0778942   0.1009194
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0862069   0.0633609   0.1090529
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6153846   0.4831289   0.7476404
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.4868421   0.4073677   0.5663165
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.3110420   0.2752546   0.3468294
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.1649151   0.1442308   0.1855994
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1085310   0.0936610   0.1234011
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.6810585   0.6543364   0.7077806
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.4037663   0.3862906   0.4212419
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.1967509   0.1859274   0.2075744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0975339   0.0870402   0.1080277
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1515152   0.1256165   0.1774138
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.7272727   0.6639942   0.7905512
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4316310   0.3826984   0.4805635
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2387938   0.2123868   0.2652008
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.1348425   0.1074524   0.1622326
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1901408   0.1444864   0.2357953
24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.6315789   0.4146044   0.8485535
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.6292135   0.5288293   0.7295977
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.4408060   0.3919510   0.4896611
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.3018576   0.2664451   0.3372701
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0644280   0.0329377   0.0959182
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.1714286   0.0708541   0.2720031
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.1097152   0.0671946   0.1522359
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2200328   0.1871275   0.2529382
24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.8322981   0.7745832   0.8900131
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.6354515   0.5968716   0.6740314
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.5413123   0.5172376   0.5653869
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.3784515   0.3563307   0.4005724
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4682081   0.4252698   0.5111464
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.8205128   0.7000465   0.9409791
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.8257576   0.7610352   0.8904800
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7179931   0.6813017   0.7546845
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5985915   0.5700809   0.6271022
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3116090   0.2771456   0.3460723
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.7662835   0.7342227   0.7983443
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.6355236   0.6127807   0.6582666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.4764228   0.4560162   0.4968293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.3363128   0.3103006   0.3623251
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2887250   0.2531645   0.3242854
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.6736402   0.6110575   0.7362228
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.5582923   0.5125939   0.6039907
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.4039088   0.3731009   0.4347167
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2993890   0.2635586   0.3352194


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1191804   0.1113849   0.1269758
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2369077   0.1952403   0.2785751
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5149051   0.4638428   0.5659675
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2843137   0.2660295   0.3025980
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965174   0.0836046   0.1094302
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1415313   0.1250727   0.1579900
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660012   0.1579791   0.1740234
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2102102   0.1947347   0.2256857
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2511506   0.2430432   0.2592580
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2488856   0.2327574   0.2650138
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3428571   0.3182897   0.3674246
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4603991   0.4463860   0.4744122
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6152246   0.5957714   0.6346779
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909070   0.4777319   0.5040821
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3905665   0.3719151   0.4092179


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level       estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ------------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                46.9115243   34.5487263    63.698183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                26.3012541   19.3549975    35.740432
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 9.8105120    7.2011189    13.365443
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 3.4571603    2.5129954     4.756060
Birth       ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          <-3                  >=0               100.3521122   45.1240621   223.174642
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              >=0                46.1943474   20.7168753   103.003841
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              >=0                11.2293144    5.0056767    25.190900
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.3532579    1.0089312     5.488801
6 months    ki1000108-IRC              INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          <-3                  >=0                 4.1590909    1.7908365     9.659194
6 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                 2.9756098    1.4032277     6.309919
6 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                 2.3683712    1.1820112     4.745456
6 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                 1.1730769    0.5572738     2.469360
6 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                 3.5190217    1.8818261     6.580584
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 3.1702899    1.6941956     5.932454
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 2.3383621    1.2419902     4.402561
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 1.4016990    0.7162675     2.743054
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                10.1374207    6.1562844    16.693072
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                 5.7534585    3.6080093     9.174667
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 4.0415412    2.2599422     7.227643
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.7104955    0.8262022     3.541258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                11.7090909    4.7148190    29.079124
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                 7.6666667    3.1745543    18.515285
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                 4.2774908    1.7742096    10.312720
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                 1.9063063    0.7470885     4.864221
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 5.5187166    2.7604763    11.032963
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 4.4102564    2.5132155     7.739234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.6563707    1.8323225     3.851017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.4606424    1.0482172     2.035338
6 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                10.2375000    5.9437455    17.633058
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 7.4250000    4.5885833    12.014738
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 3.5320755    2.2258403     5.604875
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.5996094    0.9890509     2.587076
6 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 8.7157133    6.3196003    12.020326
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 3.6016999    2.7507898     4.715825
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                10.8145369    8.7552479    13.358183
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 6.8356643    5.5607237     8.402918
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 4.4682588    3.6690890     5.441497
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 2.0141075    1.6428134     2.469318
6 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                21.8164879   14.4572434    32.921846
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                11.5043478    7.6163076    17.377189
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 7.0352151    4.6689443    10.600737
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.8338062    1.8576221     4.322977
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 7.1384615    5.0748247    10.041260
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 5.6473684    4.1368401     7.709452
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 3.6080871    2.7027383     4.816705
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.9130154    1.4268732     2.564788
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 6.2752413    5.4384928     7.240729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.7202836    3.2363053     4.276639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.8128537    1.5688947     2.094747
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.8986732    0.7572804     1.066466
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 4.8000000    3.9477592     5.836222
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.8487644    2.3087134     3.515143
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.5760391    1.2843969     1.933903
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 0.8899606    0.6863015     1.154055
24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 3.3216374    2.1843608     5.051031
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 3.3091968    2.4804165     4.414897
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.3183133    1.7795963     3.020110
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.5875473    1.2152558     2.073890
24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 2.6607792    1.3204736     5.361520
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 1.7029136    1.0782976     2.689345
24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                 3.7826087    3.2077559     4.460479
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                 2.8879848    2.4575320     3.393834
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 2.4601431    2.1047550     2.875539
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 1.7199775    1.4648413     2.019552
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.7524533    1.4738971     2.083655
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.7636551    1.5632233     1.989786
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5334914    1.3806609     1.703239
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2784733    1.1529546     1.417657
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 2.4591190    2.1826122     2.770655
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 2.0394908    1.8212093     2.283934
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.5289123    1.3583724     1.720863
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.0792785    0.9455939     1.231863
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.3331552    1.9970502     2.725827
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 1.9336474    1.6695468     2.239525
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.3989396    1.2129109     1.613500
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.0369349    0.8763577     1.226935


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0899826   0.0841040   0.0958613
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.1112856   0.1017307   0.1208405
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1057602   0.0236547   0.1878657
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2863337   0.1509395   0.4217279
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.2040218   0.1592482   0.2487953
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.1554424   0.1055639   0.2053209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0325639   0.0182342   0.0468936
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0845513   0.0596574   0.1094451
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0358489   0.0291581   0.0425398
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1097352   0.0988109   0.1206595
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1537238   0.1390214   0.1684263
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1240033   0.1008914   0.1471152
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1426195   0.1280524   0.1571866
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.0973704   0.0728023   0.1219386
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1527163   0.1095553   0.1958773
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0208261   0.0073247   0.0343275
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2403663   0.2086200   0.2721125
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1470165   0.1092534   0.1847797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1792980   0.1467118   0.2118842
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1018415   0.0707525   0.1329306


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.8690362    0.8246321   0.9021969
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.9337581    0.8535049   0.9700468
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.4464193   -0.0243647   0.7008374
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.5560902    0.1979108   0.7543217
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.7175938    0.5298108   0.8303804
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.7409420    0.4021720   0.8877419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3373891    0.1784614   0.4655720
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.5974032    0.3956250   0.7318152
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.5718775    0.4745193   0.6511977
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.6610508    0.5969388   0.7149649
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.8297112    0.7465763   0.8855740
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.5899015    0.4727811   0.6810038
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.5678646    0.5075401   0.6207996
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3912257    0.2875346   0.4798257
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4454225    0.3062537   0.5566735
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.2442825    0.0506731   0.3984065
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.5220824    0.4482972   0.5859995
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2389640    0.1743205   0.2985465
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3652383    0.2950652   0.4284259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2607534    0.1762226   0.3366102
