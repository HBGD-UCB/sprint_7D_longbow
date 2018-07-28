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

**Intervention Variable:** birthwt

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

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



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/c5f90d20-911d-4237-91b7-b23c00168280/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5f90d20-911d-4237-91b7-b23c00168280/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5f90d20-911d-4237-91b7-b23c00168280/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5f90d20-911d-4237-91b7-b23c00168280/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0141146   0.0102006   0.0180287
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6427244   0.6055293   0.6799195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3634382   0.3386397   0.3882368
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1358449   0.1246115   0.1470783
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.0469651   0.0415679   0.0523623
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.0077435   0.0019857   0.0135012
Birth       ki1135781-COHORTS          INDIA                          <-3                  NA                0.7936007   0.7557672   0.8314342
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3530609   0.3231307   0.3829910
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.0873779   0.0759456   0.0988103
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0184640   0.0133040   0.0236240
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1323315   0.0482583   0.2164046
6 months    ki1000108-IRC              INDIA                          <-3                  NA                0.5517677   0.2843520   0.8191834
6 months    ki1000108-IRC              INDIA                          [-3--2)              NA                0.4030530   0.2590219   0.5470840
6 months    ki1000108-IRC              INDIA                          [-2--1)              NA                0.3097419   0.2320048   0.3874790
6 months    ki1000108-IRC              INDIA                          [-1-0)               NA                0.1550336   0.0987061   0.2113610
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.1818704   0.0618437   0.3018970
6 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.7992020   0.7014795   0.8969244
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.7050749   0.6074237   0.8027262
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.5077054   0.4220864   0.5933245
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.2884533   0.2072323   0.3696743
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.0961363   0.0610740   0.1311986
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.8845624   0.8412823   0.9278425
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.4713541   0.4436580   0.4990501
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.3296113   0.2885302   0.3706924
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.1467292   0.1102478   0.1832106
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.0457312   0.0099510   0.0815114
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.5360640   0.4422134   0.6299146
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.4026544   0.3264482   0.4788607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.2366229   0.1902212   0.2830246
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.1003875   0.0640270   0.1367481
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0628968   0.0474144   0.0783791
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.2628711   0.1732411   0.3525012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.1924527   0.1346817   0.2502236
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1506779   0.1146921   0.1866638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0919506   0.0735193   0.1103818
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0517096   0.0304313   0.0729880
6 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.4135315   0.3689671   0.4580960
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.2858574   0.2285069   0.3432079
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.1802031   0.1490399   0.2113662
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0886124   0.0694106   0.1078142
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0321485   0.0212002   0.0430968
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.1841163   0.1543023   0.2139303
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0819172   0.0643144   0.0995201
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0557715   0.0462005   0.0653426
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6050520   0.5570850   0.6530191
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3657261   0.3336100   0.3978422
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.2461670   0.2281067   0.2642274
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1128570   0.1026146   0.1230995
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0317248   0.0198474   0.0436022
6 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.6798819   0.6296022   0.7301615
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3658857   0.3352614   0.3965100
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.2213090   0.2042091   0.2384090
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0904739   0.0791675   0.1017804
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0887818   0.0678520   0.1097116
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.5778997   0.5129595   0.6428398
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.4393590   0.3801140   0.4986041
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.3042874   0.2716234   0.3369514
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.1672242   0.1472937   0.1871547
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1247502   0.1110571   0.1384434
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.6464913   0.6233972   0.6695854
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.3750879   0.3591615   0.3910144
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.1973046   0.1866267   0.2079825
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1088539   0.0983543   0.1193535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1509047   0.1254006   0.1764088
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.7192626   0.6576822   0.7808431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4327763   0.3838357   0.4817169
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2392586   0.2130619   0.2654553
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.1353286   0.1080312   0.1626261
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.2081469   0.1689156   0.2473783
24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.7988115   0.7515036   0.8461194
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.5817883   0.5150285   0.6485481
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.4237606   0.3802168   0.4673045
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.3023591   0.2688581   0.3358600
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0755455   0.0425870   0.1085040
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.1463926   0.0679795   0.2248056
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.0888642   0.0565303   0.1211980
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2299194   0.1999512   0.2598877
24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.8141131   0.7705644   0.8576618
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.6306876   0.5971291   0.6642462
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.5357322   0.5130580   0.5584064
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.3831061   0.3622251   0.4039870
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4539925   0.4167087   0.4912764
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6415237   0.5916572   0.6913902
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.7150829   0.6663409   0.7638250
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.6984514   0.6655596   0.7313433
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5961442   0.5692297   0.6230588
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3498734   0.3217783   0.3779686
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.7260749   0.7001096   0.7520402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.6094173   0.5881730   0.6306615
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.4763644   0.4570984   0.4956305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.3580340   0.3343444   0.3817235
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2883333   0.2528912   0.3237754
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.6729079   0.6105288   0.7352869
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.5578432   0.5121640   0.6035224
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.4050436   0.3741774   0.4359098
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2987602   0.2629608   0.3345595


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                45.5361006   34.3030796    60.447531
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                25.7490770   19.3530261    34.258982
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 9.6244165    7.2063969    12.853774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 3.3274086    2.4647051     4.492078
Birth       ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          <-3                  >=0               102.4867027   48.6498555   215.900420
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              >=0                45.5947760   21.5727998    96.365962
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              >=0                11.2841092    5.3038541    24.007282
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.3844636    1.0775191     5.276627
6 months    ki1000108-IRC              INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          <-3                  >=0                 4.1695889    1.8756640     9.268969
6 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                 3.0457836    1.4693710     6.313448
6 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                 2.3406522    1.1821584     4.634449
6 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                 1.1715551    0.5636107     2.435265
6 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                 4.3943497    2.2447753     8.602335
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 3.8767994    1.9759488     7.606256
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 2.7915787    1.4123266     5.517783
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 1.5860380    0.7741288     3.249481
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                 9.2011297    6.3418659    13.349508
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                 4.9029778    3.5031829     6.862100
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 3.4285835    2.1873829     5.374086
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 1.5262626    0.8748329     2.662769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                11.7220629    5.2601711    26.122108
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                 8.8048076    3.9383500    19.684547
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                 5.1742110    2.3115078    11.582249
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                 2.1951653    0.9278737     5.193326
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 4.1794055    2.7489304     6.354265
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 3.0598176    2.0814653     4.498025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.3956385    1.7053379     3.365365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.4619284    1.0684819     2.000253
6 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                 7.9971838    5.2293546    12.229989
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 5.5281258    3.5005466     8.730115
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 3.4849022    2.2319131     5.441316
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.7136527    1.0771268     2.726332
6 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 5.7270536    4.1737375     7.858459
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 2.5480867    2.0266393     3.203701
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                10.8487656    8.9817884    13.103817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 6.5575794    5.4093081     7.949602
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 4.4138494    3.6633762     5.318063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 2.0235610    1.6671410     2.456180
6 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                21.4306014   14.6321562    31.387765
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                11.5331077    7.8589258    16.925032
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 6.9758964    4.7601008    10.223130
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.8518347    1.9220270     4.231450
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 6.5092097    5.0166518     8.445834
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 4.9487486    3.7738839     6.489366
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 3.4273604    2.6480177     4.436073
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.8835406    1.4482262     2.449704
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 5.1822866    4.6156615     5.818472
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.0067120    2.6893386     3.361539
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.5815974    1.4034227     1.782393
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.8725751    0.7566641     1.006242
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 4.7663368    3.9300696     5.780551
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.8678781    2.3281720     3.532696
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.5854946    1.2953626     1.940610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 0.8967820    0.6936328     1.159429
24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 3.8377289    3.1529489     4.671234
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 2.7950847    2.2462568     3.478008
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.0358725    1.6465175     2.517299
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.4526232    1.1708302     1.802237
24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                 1.9378066    1.0466275     3.587804
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                 1.1763001    0.7922297     1.746567
24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                 3.5408625    3.0766671     4.075094
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                 2.7430810    2.3842534     3.155912
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 2.3300865    2.0332377     2.670275
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 1.6662623    1.4483825     1.916918
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.4130711    1.2642037     1.579468
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.5750984    1.4175245     1.750188
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5384645    1.4014493     1.688875
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.3131146    1.1981617     1.439096
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 2.0752503    1.9021367     2.264119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 1.7418221    1.6006900     1.895398
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.3615337    1.2471201     1.486444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.0233243    0.9248626     1.132268
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.3337848    1.9986998     2.725047
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 1.9347165    1.6708818     2.240211
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4047757    1.2182190     1.619902
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.0361626    0.8758087     1.225876


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0894284    0.0836039   0.0952530
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.1114369    0.1021807   0.1206932
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1045763    0.0232272   0.1859253
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.3330348    0.2148450   0.4512246
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.1881774    0.1468555   0.2294994
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.1640590    0.1223994   0.2057186
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0336206    0.0200311   0.0472102
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0898217    0.0671967   0.1124467
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0305379    0.0242602   0.0368155
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1102297    0.0997739   0.1206855
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1535491    0.1394681   0.1676301
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1214284    0.0999883   0.1428684
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1264004    0.1129196   0.1398811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.0979809    0.0737127   0.1222491
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1347102    0.0974049   0.1720155
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.0097085   -0.0045251   0.0239421
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2304797    0.2016363   0.2593231
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1612321    0.1288495   0.1936147
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1410336    0.1145572   0.1675099
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1022332    0.0712249   0.1332415


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.8636836    0.8209392   0.8962243
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.9350275    0.8637636   0.9690139
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.4414220   -0.0218741   0.6946694
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.6467886    0.3284353   0.8142275
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.6618655    0.5068458   0.7681558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.7820146    0.5310349   0.8986755
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3483375    0.2001945   0.4690410
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.6346417    0.4591175   0.7532058
6 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                0.4871530    0.3905770   0.5684244
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.6640295    0.6043328   0.7147194
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.8287680    0.7521224   0.8817143
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.5776521    0.4726246   0.6617632
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.5032852    0.4488657   0.5523312
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3936784    0.2916263   0.4810284
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.3929048    0.2778143   0.4896539
24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.1138777   -0.0752341   0.2697286
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.5006084    0.4345452   0.5589534
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2620703    0.2070745   0.3132517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2872918    0.2316883   0.3388713
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2617562    0.1774827   0.3373952
