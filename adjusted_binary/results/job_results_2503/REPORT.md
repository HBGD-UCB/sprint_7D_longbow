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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              0       27     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)          0       70     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)          1       14     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       77     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       36     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        9     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)          0       59     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)          1       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       77     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)          0       36     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)          1       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       48     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       20     212
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              0       32     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-25)          0       56     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-25)          1        7     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       45     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       37     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        3     191
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)          0       60     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)          1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       60     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     209
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)          0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)          1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       40     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     169
Birth       ki0047075b-MAL-ED          INDIA                          <20              0       20     205
Birth       ki0047075b-MAL-ED          INDIA                          <20              1        5     205
Birth       ki0047075b-MAL-ED          INDIA                          [20-25)          0       80     205
Birth       ki0047075b-MAL-ED          INDIA                          [20-25)          1       17     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          0       59     205
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          1        9     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0       14     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        1     205
6 months    ki0047075b-MAL-ED          INDIA                          <20              0       26     234
6 months    ki0047075b-MAL-ED          INDIA                          <20              1        8     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-25)          0       85     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-25)          1       18     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          0       60     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          1       16     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       19     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        2     234
24 months   ki0047075b-MAL-ED          INDIA                          <20              0       21     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              1       12     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)          0       59     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)          1       40     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          0       35     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          1       38     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       16     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        4     225
6 months    ki0047075b-MAL-ED          NEPAL                          <20              0        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)          0       52     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)          1        6     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          0      124     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       44     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        2     236
24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)          0       44     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)          1       11     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          0       99     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          1       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       33     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1       12     228
Birth       ki0047075b-MAL-ED          NEPAL                          <20              0        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          [20-25)          0       37     173
Birth       ki0047075b-MAL-ED          NEPAL                          [20-25)          1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          0       83     173
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          1        8     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0       32     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        4     173
Birth       ki0047075b-MAL-ED          PERU                           <20              0       63     287
Birth       ki0047075b-MAL-ED          PERU                           <20              1       14     287
Birth       ki0047075b-MAL-ED          PERU                           [20-25)          0       76     287
Birth       ki0047075b-MAL-ED          PERU                           [20-25)          1        8     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          0       57     287
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          1        4     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       57     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        8     287
6 months    ki0047075b-MAL-ED          PERU                           <20              0       60     273
6 months    ki0047075b-MAL-ED          PERU                           <20              1       16     273
6 months    ki0047075b-MAL-ED          PERU                           [20-25)          0       57     273
6 months    ki0047075b-MAL-ED          PERU                           [20-25)          1       20     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          0       49     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          1       10     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             0       47     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             1       14     273
24 months   ki0047075b-MAL-ED          PERU                           <20              0       33     201
24 months   ki0047075b-MAL-ED          PERU                           <20              1       22     201
24 months   ki0047075b-MAL-ED          PERU                           [20-25)          0       32     201
24 months   ki0047075b-MAL-ED          PERU                           [20-25)          1       18     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          0       32     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          1       16     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             0       30     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             1       18     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       35     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        6     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          0       70     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          1       12     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       49     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       80     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       32     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1       10     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          0       59     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          1       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       78     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       16     254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          0       40     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)          1       29     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       28     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       61     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       32     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          0       32     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          1        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       28     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       36     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        4     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          1       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       47     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       82     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       22     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)          1       38     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              1       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          0      127     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          1       58     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       78     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       13     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          0       48     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          1      139     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1       75     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       31     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          0       34      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)          1       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       30      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      90
6 months    ki1000108-IRC              INDIA                          <20              0       29     407
6 months    ki1000108-IRC              INDIA                          <20              1        7     407
6 months    ki1000108-IRC              INDIA                          [20-25)          0      156     407
6 months    ki1000108-IRC              INDIA                          [20-25)          1       63     407
6 months    ki1000108-IRC              INDIA                          [25-30)          0       99     407
6 months    ki1000108-IRC              INDIA                          [25-30)          1       24     407
6 months    ki1000108-IRC              INDIA                          >=30             0       23     407
6 months    ki1000108-IRC              INDIA                          >=30             1        6     407
24 months   ki1000108-IRC              INDIA                          <20              0       20     409
24 months   ki1000108-IRC              INDIA                          <20              1       17     409
24 months   ki1000108-IRC              INDIA                          [20-25)          0      127     409
24 months   ki1000108-IRC              INDIA                          [20-25)          1       93     409
24 months   ki1000108-IRC              INDIA                          [25-30)          0       74     409
24 months   ki1000108-IRC              INDIA                          [25-30)          1       49     409
24 months   ki1000108-IRC              INDIA                          >=30             0       18     409
24 months   ki1000108-IRC              INDIA                          >=30             1       11     409
Birth       ki1000108-IRC              INDIA                          <20              0       28     388
Birth       ki1000108-IRC              INDIA                          <20              1        7     388
Birth       ki1000108-IRC              INDIA                          [20-25)          0      184     388
Birth       ki1000108-IRC              INDIA                          [20-25)          1       26     388
Birth       ki1000108-IRC              INDIA                          [25-30)          0      104     388
Birth       ki1000108-IRC              INDIA                          [25-30)          1       11     388
Birth       ki1000108-IRC              INDIA                          >=30             0       27     388
Birth       ki1000108-IRC              INDIA                          >=30             1        1     388
6 months    ki1000109-EE               PAKISTAN                       <20              0        0     370
6 months    ki1000109-EE               PAKISTAN                       <20              1        1     370
6 months    ki1000109-EE               PAKISTAN                       [20-25)          0       11     370
6 months    ki1000109-EE               PAKISTAN                       [20-25)          1        8     370
6 months    ki1000109-EE               PAKISTAN                       [25-30)          0       68     370
6 months    ki1000109-EE               PAKISTAN                       [25-30)          1       72     370
6 months    ki1000109-EE               PAKISTAN                       >=30             0       99     370
6 months    ki1000109-EE               PAKISTAN                       >=30             1      111     370
Birth       ki1000109-EE               PAKISTAN                       [25-30)          0        1       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)          1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30             0        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30             1        1       2
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              0      127    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              1       44    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)          0      489    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)          1      170    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0      242    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1      116    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0       98    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1       50    1336
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              1        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-25)          0       64     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-25)          1       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        3     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)          0       79     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)          1       52     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          0       70     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          1       60     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       48     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       35     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       51     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1       10     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)          0      145     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)          1       50     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0      115     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1       47     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0       81     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1       36     535
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       21     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1       23     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)          0       73     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)          1       88     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0       54     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1       74     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       42     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       52     427
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-25)          0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-25)          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        0      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       50     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1       15     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)          0      196     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)          1       31     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      153     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0       90     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       44     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)          0      155     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)          1       74     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      121     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1       58     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       67     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       38     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        1      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      100     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       31     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          0      183     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          1       60     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      186     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1       33     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       26     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0       80     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          0      127     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)          1       49     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      117     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1       41     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       58     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       21     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      132    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       14    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)          0      568    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)          1       56    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0      615    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1       79    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      503    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       45    2012
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
Birth       ki1101329-Keneba           GAMBIA                         <20              0      217    1541
Birth       ki1101329-Keneba           GAMBIA                         <20              1       21    1541
Birth       ki1101329-Keneba           GAMBIA                         [20-25)          0      344    1541
Birth       ki1101329-Keneba           GAMBIA                         [20-25)          1       21    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          0      329    1541
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          1       11    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      569    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             1       29    1541
6 months    ki1101329-Keneba           GAMBIA                         <20              0      254    2080
6 months    ki1101329-Keneba           GAMBIA                         <20              1       34    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-25)          0      464    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-25)          1       60    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          0      405    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          1       58    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             0      664    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             1      141    2080
24 months   ki1101329-Keneba           GAMBIA                         <20              0      146    1714
24 months   ki1101329-Keneba           GAMBIA                         <20              1       71    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-25)          0      274    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-25)          1      132    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          0      262    1714
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          1      122    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      458    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             1      249    1714
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       25     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1       21     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)          0       75     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)          1       33     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          0       49     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          1       14     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       41     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1       18     276
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0       80     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1       28     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)          0      161     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)          1       38     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          1       34     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       66     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1       19     563
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       53     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       45     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)          0       97     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)          1       77     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          0       82     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          1       67     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       44     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     499
Birth       ki1119695-PROBIT           BELARUS                        <20              0     1400   13884
Birth       ki1119695-PROBIT           BELARUS                        <20              1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        [20-25)          0     6033   13884
Birth       ki1119695-PROBIT           BELARUS                        [20-25)          1       17   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          0     3881   13884
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2537   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             1        4   13884
6 months    ki1119695-PROBIT           BELARUS                        <20              0     1482   15761
6 months    ki1119695-PROBIT           BELARUS                        <20              1      138   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-25)          0     6451   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-25)          1      460   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          0     4181   15761
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          1      224   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2659   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             1      166   15761
24 months   ki1119695-PROBIT           BELARUS                        <20              0      319    4035
24 months   ki1119695-PROBIT           BELARUS                        <20              1       50    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-25)          0     1639    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-25)          1      145    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          0     1012    4035
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          1       97    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      721    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             1       52    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1947   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      253   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          0     5224   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          1      600   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     3090   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1      352   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2103   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      221   13790
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1024    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      237    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          0     2835    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          1      529    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     1768    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1      349    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1278    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      260    8280
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0       23     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       48     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          0       61     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)          1      109     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1       85     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       30     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       56     456
24 months   ki1135781-COHORTS          GUATEMALA                      <20              0       27    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20              1      126    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)          0       62    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)          1      225    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          0       41    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          1      200    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0       92    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1      294    1067
6 months    ki1135781-COHORTS          GUATEMALA                      <20              0       70     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20              1       48     961
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)          0      161     961
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)          1      101     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          0      125     961
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          1       83     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      211     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1      162     961
Birth       ki1135781-COHORTS          GUATEMALA                      <20              0      112     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20              1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)          0      207     852
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)          1       14     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          0      179     852
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          1        5     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             0      304     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             1       22     852
Birth       ki1135781-COHORTS          INDIA                          <20              0      309    4715
Birth       ki1135781-COHORTS          INDIA                          <20              1       59    4715
Birth       ki1135781-COHORTS          INDIA                          [20-25)          0     1406    4715
Birth       ki1135781-COHORTS          INDIA                          [20-25)          1      216    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)          0     1389    4715
Birth       ki1135781-COHORTS          INDIA                          [25-30)          1      169    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             0     1053    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             1      114    4715
6 months    ki1135781-COHORTS          INDIA                          <20              0      288    4904
6 months    ki1135781-COHORTS          INDIA                          <20              1       83    4904
6 months    ki1135781-COHORTS          INDIA                          [20-25)          0     1374    4904
6 months    ki1135781-COHORTS          INDIA                          [20-25)          1      334    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)          0     1338    4904
6 months    ki1135781-COHORTS          INDIA                          [25-30)          1      285    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             0      943    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             1      259    4904
24 months   ki1135781-COHORTS          INDIA                          <20              0       88    3695
24 months   ki1135781-COHORTS          INDIA                          <20              1      159    3695
24 months   ki1135781-COHORTS          INDIA                          [20-25)          0      643    3695
24 months   ki1135781-COHORTS          INDIA                          [20-25)          1      595    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)          0      685    3695
24 months   ki1135781-COHORTS          INDIA                          [25-30)          1      543    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             0      452    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             1      530    3695
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              0      342    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              1       36    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)          0      922    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)          1       44    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      803    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          1       52    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             0      796    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             1       55    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              0      249    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              1       82    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)          0      676    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)          1      167    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      612    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      146    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      599    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1      177    2708
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      101    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1      191    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)          0      292    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)          1      474    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      284    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      410    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      260    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      433    2445
6 months    ki1148112-LCNI-5           MALAWI                         <20              0       74     669
6 months    ki1148112-LCNI-5           MALAWI                         <20              1       33     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)          0      125     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)          1       68     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          0      103     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          1       68     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             0      117     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             1       81     669
24 months   ki1148112-LCNI-5           MALAWI                         <20              0       49     475
24 months   ki1148112-LCNI-5           MALAWI                         <20              1       31     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)          0       73     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)          1       55     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          0       61     475
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          1       61     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0       78     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       67     475
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              0     5179   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              1     3008   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          0     4368   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          1     1813   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     2418   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1      959   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1304   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      554   19603
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0     5729   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1     2176   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          0     3919   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          1     1162   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     2010   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1      588   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      922   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      299   16805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     1873    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1982    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          0     1393    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)          1     1273    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0      774    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1      618    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      352    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      362    8627


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/8f342cc1-bd13-43f3-b8c1-f6455c9aec27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f342cc1-bd13-43f3-b8c1-f6455c9aec27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f342cc1-bd13-43f3-b8c1-f6455c9aec27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f342cc1-bd13-43f3-b8c1-f6455c9aec27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3362219   0.2161405   0.4563033
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1823927   0.1064626   0.2583227
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1753622   0.1039149   0.2468095
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2505571   0.1471371   0.3539771
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.0783067   0.0456213   0.1109921
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.0574347   0.0338297   0.0810397
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0320426   0.0135467   0.0505386
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0477964   0.0305495   0.0650433
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1113619   0.0985592   0.1241647
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1016744   0.0939842   0.1093645
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1012716   0.0913259   0.1112174
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0915172   0.0801231   0.1029112
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0833534   0.0444650   0.1222418
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.0664705   0.0367367   0.0962044
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0252778   0.0051885   0.0453671
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0647216   0.0407383   0.0887048
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.1615792   0.1267170   0.1964414
Birth       ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1351328   0.1187943   0.1514713
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1084422   0.0932299   0.1236544
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0978553   0.0812722   0.1144385
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0842991   0.0577200   0.1108781
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.0449703   0.0320307   0.0579100
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0652337   0.0490397   0.0814277
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0653051   0.0492837   0.0813265
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3610147   0.3500626   0.3719667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2928246   0.2804308   0.3052184
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2892061   0.2725860   0.3058263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3055556   0.2842625   0.3268488
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2304120   0.1246852   0.3361387
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.2731149   0.1850953   0.3611345
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1259547   0.0627466   0.1891628
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3046791   0.1937440   0.4156142
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2078350   0.1182791   0.2973909
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2565583   0.1600390   0.3530776
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.1721902   0.0784715   0.2659088
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2331289   0.1294211   0.3368368
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2800048   0.1932628   0.3667468
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2254639   0.1545108   0.2964171
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1377158   0.0669018   0.2085297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2322818   0.1689080   0.2956557
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460192   0.4600414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.3135135   0.2465720   0.3804550
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2777778   0.1931896   0.3623660
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1944444   0.0650020   0.3238868
6 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.2876712   0.2276440   0.3476985
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1951220   0.1250010   0.2652429
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2529147   0.2113828   0.2944466
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2583017   0.2263522   0.2902511
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3143233   0.2739652   0.3546814
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3237935   0.2421401   0.4054468
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4422350   0.2849609   0.5995090
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.3815077   0.3027266   0.4602889
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4712273   0.3892745   0.5531801
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4322519   0.3303042   0.5341995
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1644277   0.0749015   0.2539538
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.2587434   0.1984903   0.3189964
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2886664   0.2199403   0.3573925
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3059504   0.2254949   0.3864059
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1556639   0.0649434   0.2463845
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1281081   0.0847986   0.1714176
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1482044   0.0965212   0.1998876
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1558528   0.0899616   0.2217440
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2387128   0.1659083   0.3115172
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2429034   0.1895716   0.2962353
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1540183   0.1066352   0.2014013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2104534   0.1386419   0.2822649
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1071053   0.0620554   0.1521552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0903736   0.0684217   0.1123256
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1197651   0.0965166   0.1430135
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0881587   0.0657490   0.1105684
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1234486   0.0865475   0.1603497
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1199509   0.0921346   0.1477672
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1268070   0.0969380   0.1566760
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1692196   0.1442314   0.1942078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4527793   0.3178964   0.5876622
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.2999547   0.2159596   0.3839497
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2185954   0.1200679   0.3171228
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2969979   0.1860959   0.4078999
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2602878   0.1776902   0.3428855
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.1918655   0.1370728   0.2466583
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2030995   0.1430638   0.2631352
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2276669   0.1395007   0.3158331
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0808082   0.0568283   0.1047881
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0663987   0.0510056   0.0817919
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0509316   0.0400469   0.0618164
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0580018   0.0401961   0.0758074
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1842298   0.1632109   0.2052486
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1562355   0.1440872   0.1683839
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1647933   0.1492542   0.1803324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1683771   0.1501658   0.1865883
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3761148   0.3036880   0.4485415
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.3891771   0.3370802   0.4412741
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3700567   0.3115353   0.4285781
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4119648   0.3664892   0.4574404
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2152104   0.1762587   0.2541622
6 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1945771   0.1761490   0.2130053
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1747292   0.1565365   0.1929219
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2081495   0.1858873   0.2304117
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2213625   0.1791313   0.2635938
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.1939548   0.1677077   0.2202020
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1940350   0.1665679   0.2215021
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2278672   0.1994074   0.2563270
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3067637   0.2211118   0.3924156
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3537841   0.2874059   0.4201624
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3979570   0.3258254   0.4700886
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4079184   0.3395807   0.4762560
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2681684   0.2572515   0.2790854
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2317935   0.2194800   0.2441070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2383014   0.2210726   0.2555301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2583326   0.2349452   0.2817199
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5186542   0.3561005   0.6812079
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4359356   0.3258690   0.5460021
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4051743   0.3056145   0.5047342
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4793233   0.3404273   0.6182194
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4142079   0.2935118   0.5349040
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3260615   0.2035995   0.4485234
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3039902   0.1859367   0.4220436
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3741875   0.2485338   0.4998413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3842124   0.2759795   0.4924453
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4337490   0.3367345   0.5307636
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2347997   0.1291480   0.3404513
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3442567   0.2619102   0.4266032
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540801   0.7812140
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7433155   0.6806255   0.8060055
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6880734   0.6009845   0.7751623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049469   0.8712436
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.4594595   0.2986852   0.6202337
24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.4227273   0.3573707   0.4880838
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3983740   0.3117505   0.4849975
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5053521   0.3595693   0.6511350
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5539018   0.4786766   0.6291270
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5735424   0.4913698   0.6557150
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5554898   0.4600726   0.6509069
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2813601   0.1790237   0.3836965
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3227968   0.2639247   0.3816690
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3290503   0.2623745   0.3957260
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3683549   0.2823205   0.4543894
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2102242   0.1337240   0.2867243
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2771324   0.2146233   0.3396414
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2628528   0.1971903   0.3285154
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2537451   0.1597197   0.3477705
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3530999   0.2953392   0.4108606
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3350418   0.2905195   0.3795640
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3145958   0.2696296   0.3595620
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3415901   0.3078493   0.3753309
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4611284   0.3627354   0.5595215
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.4449830   0.3711176   0.5188483
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4529731   0.3730043   0.5329419
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4392888   0.3297869   0.5487908
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1330853   0.0548374   0.2113331
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0811345   0.0545286   0.1077404
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0847778   0.0497863   0.1197694
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0658051   0.0359241   0.0956862
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6679814   0.5602648   0.7756980
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.6429231   0.5730547   0.7127915
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6657293   0.5866547   0.7448040
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6439160   0.5484652   0.7393668
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8474288   0.7983172   0.8965405
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7915812   0.7487676   0.8343948
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8134506   0.7708564   0.8560448
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7593042   0.7209291   0.7976794
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.6323282   0.5790581   0.6855982
24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.4842090   0.4571653   0.5112526
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.4433758   0.4163299   0.4704217
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5243033   0.4941662   0.5544404
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6437949   0.5934149   0.6941748
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.6188871   0.5856586   0.6521155
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.6007053   0.5656277   0.6357829
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6263949   0.5923394   0.6604503
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3864425   0.2818802   0.4910048
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.4317834   0.3483082   0.5152587
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4959893   0.4092176   0.5827610
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4636933   0.3841457   0.5432410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5047848   0.4866383   0.5229313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.4815872   0.4603153   0.5028591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4578163   0.4304990   0.4851336
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5147732   0.4753246   0.5542218


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034083   0.0983260   0.1084905
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1183457   0.1091247   0.1275667
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231138   0.3154608   0.3307668
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0835208   0.1093221
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1408654   0.1259115   0.1558193
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.2568550   0.3663334
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451226
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660628   0.1580467   0.1740789
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1959625   0.1848518   0.2070732
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3370052   0.4103790
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514133   0.2432880   0.2595385
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5550351   0.5078433   0.6022269
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3348891   0.3125397   0.3572386
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4944520   0.4783291   0.5105749
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4505263   0.4057351   0.4953175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909007   0.4777498   0.5040515


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.5424770   0.3137223   0.9380312
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.5215668   0.3039276   0.8950553
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.7452135   0.4321094   1.2851911
Birth       ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.7334579   0.4083599   1.3173687
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.4091939   0.2007253   0.8341729
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <20               0.6103744   0.3516181   1.0595498
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9130083   0.7957479   1.0475482
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9093919   0.7818822   1.0576959
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8217993   0.6937852   0.9734341
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.7974545   0.4195788   1.5156481
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.3032606   0.1209561   0.7603334
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.7764719   0.4299970   1.4021230
Birth       ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8363258   0.6531180   1.0709257
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6711395   0.5189081   0.8680307
Birth       ki1135781-COHORTS          INDIA                          >=30                 <20               0.6056185   0.4603522   0.7967241
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.5334618   0.3483380   0.8169695
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7738360   0.5184820   1.1549527
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.7746834   0.5200518   1.1539895
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8111155   0.7717935   0.8524409
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8010925   0.7524249   0.8529080
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8463801   0.7853614   0.9121398
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               1.1853329   0.6801465   2.0657522
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.5466501   0.2791282   1.0705700
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.3223233   0.7392998   2.3651283
6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.2344326   0.6986915   2.1809679
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8284945   0.4156038   1.6515803
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               1.1217020   0.6061701   2.0756801
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.8052145   0.5290002   1.2256526
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.4918336   0.2716933   0.8903430
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8295638   0.5617636   1.2250279
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0345946   0.5907290   1.8119745
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.9166667   0.5025764   1.6719404
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9976744   0.5007412   1.9877619
6 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [20-25)              <20               1.4794521   0.7364092   2.9722311
6 months    ki1000108-IRC              INDIA                          [25-30)              <20               1.0034843   0.4709364   2.1382523
6 months    ki1000108-IRC              INDIA                          >=30                 <20               1.0640394   0.4010254   2.8232121
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0212996   0.8537004   1.2218020
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2428037   1.0042908   1.5379620
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.2802477   0.9433324   1.7374939
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               0.8626811   0.5738933   1.2967893
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.0655587   0.7191394   1.5788529
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               0.9774258   0.6392785   1.4944366
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.5736002   0.8734576   2.8349603
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.7555832   0.9718632   3.1713029
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.8606994   1.0202496   3.3934857
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.8229784   0.4208027   1.6095273
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.9520794   0.4829231   1.8770175
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.0012130   0.4880651   2.0538803
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0175552   0.6996584   1.4798915
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.6452032   0.4184325   0.9948731
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.8816177   0.5582965   1.3921811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.8437831   0.5195767   1.3702885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1181993   0.7040003   1.7760926
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.8231030   0.5040181   1.3441947
6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9716668   0.6659797   1.4176652
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0272053   0.7025306   1.5019285
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               1.3707703   0.9828577   1.9117837
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6624743   0.4410166   0.9951377
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.4827856   0.2814105   0.8282634
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.6559440   0.4071659   1.0567253
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.7371283   0.4810324   1.1295668
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.7802881   0.5055531   1.2043237
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.8746736   0.5300300   1.4434162
6 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8216827   0.6731116   1.0030468
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6302780   0.4906968   0.8095636
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7177705   0.5468755   0.9420690
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8480472   0.7390596   0.9731070
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8944989   0.7717651   1.0367510
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9139517   0.7813619   1.0690406
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0347298   0.8209157   1.3042335
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9838931   0.7690755   1.2587133
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0953167   0.8799706   1.3633623
6 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.9041249   0.7372096   1.1088324
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.8118991   0.6590018   1.0002707
6 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.9671906   0.7838785   1.1933707
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.8761864   0.6942238   1.1058430
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.8765484   0.6918261   1.1105930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0293846   0.8207194   1.2911022
6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1532789   0.8250632   1.6120610
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2972752   0.9310043   1.8076426
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3297477   0.9609306   1.8401215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8643579   0.8132357   0.9186938
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8886258   0.8213120   0.9614565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.9633220   0.8748839   1.0606999
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.8405129   0.5654413   1.2493993
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7812032   0.5282487   1.1552863
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.9241675   0.6059931   1.4093980
24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.7871927   0.4913485   1.2611667
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.7339072   0.4548284   1.1842264
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9033810   0.5820807   1.4020345
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.1289303   0.7883490   1.6166491
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6111195   0.3594627   1.0389589
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8960063   0.6200625   1.2947522
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.2034632   0.9114444   1.5890422
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1140236   0.8306587   1.4940535
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.1950113   0.8673862   1.6463856
24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9200535   0.6275841   1.3488206
24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8670493   0.5742805   1.3090717
24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.8255578   0.4609047   1.4787128
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.0960709   0.7980049   1.5054687
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.1349362   0.8238761   1.5634391
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.0992133   0.7873203   1.5346610
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               1.1472729   0.7657555   1.7188714
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               1.1694987   0.7730120   1.7693479
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.3091939   0.8522432   2.0111499
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.3182707   0.8636187   2.0122743
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.2503455   0.8079020   1.9350910
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.2070217   0.7199682   2.0235637
24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9488583   0.7694829   1.1700481
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.8909541   0.7178318   1.1058290
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               0.9674036   0.8005235   1.1690721
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.9649871   0.7365286   1.2643094
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9823143   0.7445410   1.2960218
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9526388   0.6860369   1.3228453
24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.6096429   0.3956004   0.9394948
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6370190   0.4178719   0.9710948
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.4944584   0.2493964   0.9803233
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9624866   0.7936992   1.1671682
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9966286   0.8169083   1.2158875
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9639730   0.7754999   1.1982516
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9340975   0.8634591   1.0105148
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9599043   0.8885385   1.0370020
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.8960094   0.8303849   0.9668201
24 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.7657558   0.6923050   0.8469995
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7011799   0.6320468   0.7778747
24 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.8291633   0.7488749   0.9180594
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9613110   0.8749383   1.0562101
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9330695   0.8469141   1.0279893
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9729727   0.8853703   1.0692430
24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1173290   0.8026312   1.5554144
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2834750   0.9310226   1.7693535
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1999025   0.8723581   1.6504301
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.9540446   0.9052453   1.0054745
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.9069534   0.8463518   0.9718943
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               1.0197874   0.9398116   1.1065689


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1533425   -0.2626053   -0.0440797
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0250945   -0.0546002    0.0044111
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0079537   -0.0195899    0.0036826
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0246680   -0.0603093    0.0109734
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.0432335   -0.0763657   -0.0101013
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0229876   -0.0472574    0.0012822
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0379009   -0.0457745   -0.0300273
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0436900   -0.1417447    0.0543648
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0119452   -0.0642639    0.0881544
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0831544   -0.1590557   -0.0072531
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0022173   -0.1520126    0.1475780
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.0512558   -0.0734230    0.1759346
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0315164   -0.0074247    0.0704576
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0132876   -0.1618493    0.1352741
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1028621    0.0165729    0.1891512
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0055710   -0.0786828    0.0898249
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0289226   -0.0939215    0.0360764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0106838   -0.0540629    0.0326952
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0174168   -0.0175306    0.0523643
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1411851   -0.2621217   -0.0202486
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0489202   -0.1220029    0.0241626
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0181219   -0.0330334   -0.0032103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0181670   -0.0373061    0.0009722
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0338748   -0.0343178    0.1020674
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0192480   -0.0565562    0.0180602
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0101365   -0.0494871    0.0292140
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0669284   -0.0122011    0.1460578
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0167552   -0.0236479   -0.0098624
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0563900   -0.2051968    0.0924167
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0460487   -0.1466711    0.0545737
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0312712   -0.1318052    0.0692628
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0974067   -0.0574265    0.2522399
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0438115   -0.1969732    0.1093501
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0496830   -0.0874799    0.1868459
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0479293   -0.0486635    0.1445222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0465852   -0.0225927    0.1157630
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0182108   -0.0722822    0.0358607
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0142347   -0.1023849    0.0739155
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0478312   -0.1058393    0.0101768
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0144726   -0.1128286    0.0838834
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0554888   -0.1018999   -0.0090777
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1378762   -0.1895377   -0.0862147
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0270259   -0.0744597    0.0204078
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0640838   -0.0313231    0.1594907
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0138841   -0.0264238   -0.0013445


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.8384900   -1.5912436   -0.3044106
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.4715938   -1.1421963   -0.0109196
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0769153   -0.1955073    0.0299126
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.4203419   -1.1953778    0.0810825
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.3653151   -0.6759583   -0.1122504
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.3749315   -0.8306586   -0.0326539
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1172988   -0.1421101   -0.0930265
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2339841   -0.9025263    0.1996344
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0543508   -0.3643308    0.3445486
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.4224243   -0.8953002   -0.0675305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0073710   -0.6514740    0.3855208
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.2086111   -0.5015179    0.5828912
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.1108052   -0.0367816    0.2373829
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0309772   -0.4425556    0.2631729
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3848336   -0.0354863    0.6345392
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0345523   -0.6593838    0.4382920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1378642   -0.4935746    0.1331300
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1108035   -0.6661885    0.2594569
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1236416   -0.1622006    0.3391812
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.4531058   -0.9041490   -0.1089029
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.2314459   -0.6298527    0.0695730
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2890876   -0.5300449   -0.0860772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1093981   -0.2307698    0.0000046
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0826237   -0.0992176    0.2343833
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0982227   -0.3061874    0.0766308
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0479891   -0.2519140    0.1227184
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1791003   -0.0623505    0.3656742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0666439   -0.0943907   -0.0396007
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1219866   -0.4957680    0.1583895
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1250782   -0.4357032    0.1183408
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0886018   -0.4181031    0.1643388
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.1362229   -0.1106257    0.3282067
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1054054   -0.5429054    0.2080389
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0895132   -0.1947177    0.3061238
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.1455538   -0.2040542    0.3936500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.1813999   -0.1368520    0.4105599
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0543784   -0.2290573    0.0954743
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0318524   -0.2492456    0.1477100
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.5610437   -1.2891899   -0.0645065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0221460   -0.1843003    0.1178062
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0700670   -0.1306847   -0.0126991
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.2788465   -0.3886811   -0.1776991
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0438186   -0.1237099    0.0303927
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1422421   -0.0981904    0.3300354
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0282830   -0.0541607   -0.0030405
