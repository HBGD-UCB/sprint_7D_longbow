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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/d9bc0eda-dbb0-45a8-8bb0-411252dc9cba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d9bc0eda-dbb0-45a8-8bb0-411252dc9cba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d9bc0eda-dbb0-45a8-8bb0-411252dc9cba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d9bc0eda-dbb0-45a8-8bb0-411252dc9cba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2500000   0.1082758   0.3917242
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1666667   0.0868141   0.2465192
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1630435   0.0874118   0.2386752
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2000000   0.0829023   0.3170977
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.0882353   0.0521888   0.1242818
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.0575342   0.0336375   0.0814310
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0323529   0.0135396   0.0511662
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0484950   0.0312726   0.0657173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1150000   0.1016687   0.1283313
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1030220   0.0952145   0.1108294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1022661   0.0921434   0.1123889
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0950947   0.0831678   0.1070215
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0743802   0.0276007   0.1211596
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.0633484   0.0312145   0.0954823
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0271739   0.0036674   0.0506804
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0674847   0.0402373   0.0947320
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.1603261   0.1228350   0.1978171
Birth       ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1331689   0.1166327   0.1497052
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1084724   0.0930292   0.1239156
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0976864   0.0806509   0.1147219
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0952381   0.0656412   0.1248350
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.0455487   0.0323981   0.0586993
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0608187   0.0447962   0.0768412
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0646298   0.0481078   0.0811519
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3674118   0.3562918   0.3785317
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2933182   0.2806701   0.3059664
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2839799   0.2668847   0.3010750
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2981701   0.2753380   0.3210021
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1714286   0.0463095   0.2965477
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.2435897   0.1481318   0.3390476
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1149425   0.0477815   0.1821036
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2439024   0.1121811   0.3756238
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2105263   0.1187015   0.3023512
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2597403   0.1616194   0.3578611
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.1694915   0.0735813   0.2654018
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2295082   0.1237867   0.3352297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2380952   0.1090311   0.3671594
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2337662   0.1390486   0.3284839
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1463415   0.0379391   0.2547438
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1702128   0.0940890   0.2463365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460192   0.4600414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.3135135   0.2465720   0.3804550
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2777778   0.1931896   0.3623660
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1944444   0.0650020   0.3238868
6 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.2876712   0.2276440   0.3476985
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1951220   0.1250010   0.2652429
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2573099   0.2128107   0.3018092
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2579666   0.2242080   0.2917252
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3240223   0.2817344   0.3663103
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3378378   0.2581285   0.4175472
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4444444   0.2819115   0.6069774
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                0.3969466   0.3130530   0.4808401
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4615385   0.3757300   0.5473469
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4216867   0.3153073   0.5280662
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1639344   0.0709426   0.2569262
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.2564103   0.1950663   0.3177542
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2901235   0.2201748   0.3600722
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3076923   0.2239839   0.3914008
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2307692   0.1282556   0.3332828
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1365639   0.0918553   0.1812725
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1593407   0.1061227   0.2125587
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1743119   0.1030300   0.2455938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2366412   0.1638086   0.3094738
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2469136   0.1926581   0.3011691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1506849   0.1032717   0.1980981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2131148   0.1403980   0.2858315
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0958904   0.0481179   0.1436629
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0897436   0.0673127   0.1121745
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1138329   0.0901972   0.1374685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0821168   0.0591249   0.1051087
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1180556   0.0807803   0.1553308
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1145038   0.0872335   0.1417741
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1252700   0.0951106   0.1554294
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1751553   0.1488918   0.2014188
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4565217   0.3123171   0.6007264
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.3055556   0.2185217   0.3925894
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2222222   0.1193762   0.3250682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3050847   0.1873820   0.4227875
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2592593   0.1765370   0.3419815
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.1909548   0.1362961   0.2456135
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1988304   0.1389562   0.2587046
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2235294   0.1348844   0.3121745
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0851852   0.0595589   0.1108115
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0665606   0.0510584   0.0820627
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0508513   0.0400009   0.0617017
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0587611   0.0408004   0.0767217
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1879461   0.1663822   0.2095099
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1572533   0.1449507   0.1695558
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1648559   0.1490490   0.1806628
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1690507   0.1503184   0.1877831
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.4067797   0.3181007   0.4954587
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.3854962   0.3265310   0.4444614
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3990385   0.3324539   0.4656230
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4343164   0.3839884   0.4846444
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2237197   0.1813098   0.2661295
6 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1955504   0.1767387   0.2143620
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1756007   0.1570882   0.1941132
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2154742   0.1922286   0.2387198
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2477341   0.2012192   0.2942491
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.1981020   0.1711917   0.2250123
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1926121   0.1645335   0.2206908
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2280928   0.1985647   0.2576209
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3084112   0.2208382   0.3959842
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3523316   0.2848871   0.4197761
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3976608   0.3242514   0.4710702
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4090909   0.3405562   0.4776256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2752688   0.2640403   0.2864973
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.2286951   0.2161141   0.2412762
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2263279   0.2084409   0.2442150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2448812   0.2199133   0.2698492
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5517241   0.3702940   0.7331543
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4375000   0.3156754   0.5593246
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4146341   0.3077498   0.5215185
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5405405   0.3795829   0.7014982
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4000000   0.2702058   0.5297942
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3600000   0.2266210   0.4933790
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3333333   0.1996417   0.4670250
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3750000   0.2377014   0.5122986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3589744   0.2081055   0.5098432
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4202899   0.3035773   0.5370025
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2432432   0.1047081   0.3817784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3440860   0.2473300   0.4408420
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540801   0.7812140
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7433155   0.6806255   0.8060055
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6880734   0.6009845   0.7751623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049469   0.8712436
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.4594595   0.2986852   0.6202337
24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.4227273   0.3573707   0.4880838
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3983740   0.3117505   0.4849975
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5227273   0.3749690   0.6704855
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5465839   0.4695962   0.6235715
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5781250   0.4924695   0.6637804
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5531915   0.4525698   0.6538132
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3125000   0.1988430   0.4261570
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3231441   0.2625189   0.3837693
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3240223   0.2554022   0.3926425
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3619048   0.2699085   0.4539010
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2079208   0.1286992   0.2871424
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2784091   0.2121261   0.3446920
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2594937   0.1910757   0.3279116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2658228   0.1683117   0.3633339
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3271889   0.2647449   0.3896330
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3251232   0.2795459   0.3707004
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3177083   0.2711274   0.3642893
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3521924   0.3169733   0.3874115
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4591837   0.3604219   0.5579454
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.4425287   0.3686548   0.5164026
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4496644   0.3697089   0.5296200
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4358974   0.3257416   0.5460533
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1355014   0.0090679   0.2619348
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0812780   0.0550796   0.1074765
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0874662   0.0520100   0.1229223
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0672704   0.0379234   0.0966173
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6760563   0.5670826   0.7850301
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.6411765   0.5689944   0.7133586
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6589147   0.5770162   0.7408132
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6511628   0.5503230   0.7520025
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8235294   0.7630954   0.8839635
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7839721   0.7363382   0.8316060
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8298755   0.7824149   0.8773361
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7616580   0.7191336   0.8041824
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.6437247   0.5839935   0.7034559
24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.4806139   0.4527790   0.5084488
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.4421824   0.4144010   0.4699638
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5397149   0.5085370   0.5708928
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6541096   0.5995413   0.7086778
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.6187990   0.5843977   0.6532002
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5907781   0.5541892   0.6273670
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6248196   0.5887644   0.6608748
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3875000   0.2806315   0.4943685
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.4296875   0.3438388   0.5155362
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5000000   0.4111831   0.5888169
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4620690   0.3808349   0.5433031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5141375   0.4954721   0.5328029
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.4774944   0.4557160   0.4992727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4439655   0.4155591   0.4723719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5070028   0.4660721   0.5479335


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
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.6666667   0.3173635   1.4004269
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6521739   0.3135047   1.3566966
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.8000000   0.3541237   1.8072783
Birth       ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.6520548   0.3641409   1.1676124
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.3666667   0.1801504   0.7462898
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <20               0.5496098   0.3198649   0.9443704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8958433   0.7799793   1.0289187
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8892707   0.7635410   1.0357038
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8269102   0.6970849   0.9809141
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.8516843   0.3796392   1.9106722
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.3653382   0.1253763   1.0645708
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9072938   0.4297030   1.9156999
Birth       ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8306130   0.6373995   1.0823949
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6765736   0.5145375   0.8896374
Birth       ki1135781-COHORTS          INDIA                          >=30                 <20               0.6092981   0.4551371   0.8156754
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.4782609   0.3129275   0.7309472
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.6385965   0.4249052   0.9597565
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.6786134   0.4537963   1.0148081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.7983366   0.7590931   0.8396088
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.7729199   0.7238438   0.8253234
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8115420   0.7481138   0.8803480
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               1.4209402   0.6205843   3.2534998
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6704981   0.2632449   1.7077925
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.4227642   0.5738766   3.5273401
6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.2337662   0.6928471   2.1969915
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8050847   0.3940542   1.6448536
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               1.0901639   0.5780762   2.0558835
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.9818182   0.4990174   1.9317301
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6146341   0.2454572   1.5390671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7148936   0.3540323   1.4435771
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0345946   0.5907290   1.8119745
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.9166667   0.5025764   1.6719404
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9976744   0.5007412   1.9877619
6 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [20-25)              <20               1.4794521   0.7364092   2.9722311
6 months    ki1000108-IRC              INDIA                          [25-30)              <20               1.0034843   0.4709364   2.1382523
6 months    ki1000108-IRC              INDIA                          >=30                 <20               1.0640394   0.4010254   2.8232121
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0025521   0.8338009   1.2054565
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2592687   0.9964317   1.5914363
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.3129607   0.9543872   1.8062541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               0.8931298   0.5854340   1.3625461
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               1.0384615   0.6890060   1.5651568
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               0.9487952   0.6084544   1.4795066
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.5641026   0.8450793   2.8948962
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.7697531   0.9554989   3.2778958
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.8769231   1.0005193   3.5210116
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.5917768   0.3408015   1.0275769
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.6904762   0.3960765   1.2037002
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.7553517   0.4129776   1.3815669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0434090   0.7148568   1.5229657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.6367654   0.4100387   0.9888582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.9005817   0.5688006   1.4258905
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.9358974   0.5359947   1.6341654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1871140   0.6919718   2.0365566
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.8563608   0.4835745   1.5165270
6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9699147   0.6530906   1.4404350
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0611104   0.7133778   1.5783435
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               1.4836682   1.0460065   2.1044530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6693122   0.4374290   1.0241177
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.4867725   0.2779574   0.8524596
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.6682809   0.4058924   1.1002899
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.7365398   0.4797739   1.1307221
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.7669173   0.4945486   1.1892910
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.8621849   0.5182595   1.4343446
6 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.7813630   0.6386540   0.9559608
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.5969501   0.4647123   0.7668173
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.6898038   0.5321594   0.8941479
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8366936   0.7282099   0.9613383
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8771448   0.7553248   1.0186122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8994639   0.7668504   1.0550107
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9476781   0.7261116   1.2368537
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9809696   0.7454654   1.2908731
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0676944   0.8341141   1.3666850
6 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8740865   0.7066959   1.0811259
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7849141   0.6318580   0.9750454
6 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.9631438   0.7743996   1.1978904
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.7996557   0.6342437   1.0082075
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7774953   0.6130020   0.9861289
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9207160   0.7329570   1.1565726
6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1424085   0.8111454   1.6089560
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2893851   0.9189568   1.8091316
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3264463   0.9539131   1.8444655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8308066   0.7797387   0.8852190
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8222070   0.7545482   0.8959326
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8896076   0.7994372   0.9899487
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.7929688   0.5153692   1.2200951
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7515244   0.4948560   1.1413197
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.9797297   0.6286970   1.5267613
24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.9000000   0.5499855   1.4727660
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8333333   0.4974696   1.3959534
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9375000   0.5747821   1.5291120
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.1708075   0.7074839   1.9375565
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6776062   0.3338700   1.3752364
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.9585253   0.5780863   1.5893315
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.2034632   0.9114444   1.5890422
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1140236   0.8306587   1.4940535
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.1950113   0.8673862   1.6463856
24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9200535   0.6275841   1.3488206
24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8670493   0.5742805   1.3090717
24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.8255578   0.4609047   1.4787128
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.0456387   0.7624720   1.4339677
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.1059783   0.8037929   1.5217700
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.0582794   0.7561693   1.4810906
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               1.0340611   0.6867769   1.5569574
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               1.0368715   0.6806831   1.5794464
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.1580952   0.7430780   1.8049042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.3390152   0.8544057   2.0984898
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.2480410   0.7852347   1.9836188
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.2784810   0.7533471   2.1696687
24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9936863   0.7841646   1.2591901
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.9710241   0.7633265   1.2352352
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.0764189   0.8677759   1.3352268
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.9637292   0.7340277   1.2653120
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9792692   0.7408086   1.2944884
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9492878   0.6812061   1.3228702
24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.5998318   0.2586654   1.3909794
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6455005   0.2831271   1.4716744
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.4964554   0.1862066   1.3236262
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9484069   0.7791256   1.1544681
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9746447   0.7951468   1.1946628
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9631783   0.7702473   1.2044345
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9519662   0.8654558   1.0471240
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0077060   0.9181809   1.1059600
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9248705   0.8434034   1.0142068
24 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.7466140   0.6692566   0.8329130
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6869123   0.6140934   0.7683660
24 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.8384250   0.7516137   0.9352629
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9460173   0.8557774   1.0457727
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9031791   0.8140491   1.0020679
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9552216   0.8630795   1.0572008
24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1088710   0.7888240   1.5587695
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2903226   0.9294586   1.7912927
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1924360   0.8597958   1.6537691
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.9287290   0.8792797   0.9809591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8635152   0.8017165   0.9300774
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.9861230   0.9044890   1.0751248


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0671206   -0.1963529    0.0621117
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0350231   -0.0670179   -0.0030283
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0115917   -0.0237098    0.0005263
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0156947   -0.0583106    0.0269212
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.0419804   -0.0776343   -0.0063265
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0339266   -0.0609703   -0.0068830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0442979   -0.0523579   -0.0362380
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0152934   -0.1010611    0.1316480
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0092539   -0.0692250    0.0877328
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0412448   -0.1576463    0.0751566
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0022173   -0.1520126    0.1475780
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.0512558   -0.0734230    0.1759346
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0271212   -0.0164127    0.0706551
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0154971   -0.1700753    0.1390811
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1033553    0.0134420    0.1932685
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0695342   -0.1647094    0.0256410
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0268510   -0.0920640    0.0383619
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0005311   -0.0454844    0.0465465
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0228098   -0.0122372    0.0578568
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1449275   -0.2747724   -0.0150826
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0478916   -0.1210831    0.0252999
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0224988   -0.0386076   -0.0063900
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0218833   -0.0415714   -0.0021951
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0032099   -0.0798606    0.0862805
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0277572   -0.0683762    0.0128619
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0365081   -0.0797649    0.0067487
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0652809   -0.0157240    0.1462857
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0238555   -0.0310962   -0.0166149
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0894600   -0.2580924    0.0791725
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0318408   -0.1418181    0.0781365
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0060332   -0.1438861    0.1318197
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0974067   -0.0574265    0.2522399
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0438115   -0.1969732    0.1093501
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0323079   -0.1075497    0.1721654
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0167894   -0.0905660    0.1241448
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0488885   -0.0234909    0.1212680
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0077002   -0.0507072    0.0661076
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0122899   -0.1007737    0.0761939
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0502473   -0.1593658    0.0588712
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0225476   -0.1229916    0.0778965
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0315894   -0.0881458    0.0249670
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1492727   -0.2071586   -0.0913869
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0373407   -0.0887019    0.0140205
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0630263   -0.0348516    0.1609043
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0232368   -0.0364755   -0.0099982


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.3670213   -1.2881552    0.1832953
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.6581779   -1.3640946   -0.1630474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1120968   -0.2355729   -0.0009601
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2674380   -1.2424553    0.2836427
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.3547267   -0.6911131   -0.0852523
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5533486   -1.0563133   -0.1734068
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1370970   -0.1625293   -0.1122212
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0819048   -0.8094888    0.5341784
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0421053   -0.3905477    0.3401432
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2095238   -0.9706004    0.2576131
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0073710   -0.6514740    0.3855208
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.2086111   -0.5015179    0.5828912
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0953524   -0.0704947    0.2355056
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.0361282   -0.4671254    0.2682551
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3866789   -0.0572188    0.6441959
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.4312602   -1.1582073    0.0508299
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1279898   -0.4856086    0.1435422
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0055077   -0.6069725    0.3845477
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1619264   -0.1271642    0.3768722
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.4651163   -0.9505969   -0.1004661
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.2265795   -0.6258181    0.0746214
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.3589106   -0.6111167   -0.1461852
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1317771   -0.2566637   -0.0193017
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0078293   -0.2169592    0.1910964
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.1416455   -0.3688520    0.0478486
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.1728392   -0.3964240    0.0149468
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1746916   -0.0731963    0.3653221
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0948858   -0.1240312   -0.0664961
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1935257   -0.6217645    0.1216335
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0864865   -0.4304562    0.1747717
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0170940   -0.4932718    0.3072391
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.1362229   -0.1106257    0.3282067
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1054054   -0.5429054    0.2080389
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0582087   -0.2307843    0.2793450
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0509868   -0.3380332    0.3269031
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.1903690   -0.1458825    0.4279498
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0229933   -0.1679510    0.1827208
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0275007   -0.2458763    0.1525983
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.5893836   -2.3656546    0.2494357
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0345023   -0.2002653    0.1083679
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0398886   -0.1138911    0.0291974
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.3018953   -0.4250897   -0.1893507
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0605424   -0.1472298    0.0195947
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1398949   -0.1074942    0.3320228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0473351   -0.0746833   -0.0206828
