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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                0       55     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                1        4     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                0       28     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                1       12     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                0       23     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                1        5     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                0       65     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                1       15     207
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                0       53     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                1        4     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                0       27     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                1       12     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                0       23     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                1        2     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                1       17     196
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                0       29     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                1       22     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                0       16     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                1       20     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                0       16     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                1        7     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                0       34     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                1       27     171
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4                0       58     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4                1        7     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1                0       37     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1                1        3     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2                0       29     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2                1        7     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3                0       45     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3                1        4     190
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                0       70     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                0       44     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                0       35     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                0       53     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                1        1     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                0       33     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                0       23     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                0       45     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                1        2     168
Birth       ki0047075b-MAL-ED          INDIA                          Q4                0       42     183
Birth       ki0047075b-MAL-ED          INDIA                          Q4                1        9     183
Birth       ki0047075b-MAL-ED          INDIA                          Q1                0       24     183
Birth       ki0047075b-MAL-ED          INDIA                          Q1                1        3     183
Birth       ki0047075b-MAL-ED          INDIA                          Q2                0       38     183
Birth       ki0047075b-MAL-ED          INDIA                          Q2                1        5     183
Birth       ki0047075b-MAL-ED          INDIA                          Q3                0       52     183
Birth       ki0047075b-MAL-ED          INDIA                          Q3                1       10     183
6 months    ki0047075b-MAL-ED          INDIA                          Q4                0       50     208
6 months    ki0047075b-MAL-ED          INDIA                          Q4                1        9     208
6 months    ki0047075b-MAL-ED          INDIA                          Q1                0       28     208
6 months    ki0047075b-MAL-ED          INDIA                          Q1                1        5     208
6 months    ki0047075b-MAL-ED          INDIA                          Q2                0       38     208
6 months    ki0047075b-MAL-ED          INDIA                          Q2                1       12     208
6 months    ki0047075b-MAL-ED          INDIA                          Q3                0       56     208
6 months    ki0047075b-MAL-ED          INDIA                          Q3                1       10     208
24 months   ki0047075b-MAL-ED          INDIA                          Q4                0       33     199
24 months   ki0047075b-MAL-ED          INDIA                          Q4                1       22     199
24 months   ki0047075b-MAL-ED          INDIA                          Q1                0       20     199
24 months   ki0047075b-MAL-ED          INDIA                          Q1                1       11     199
24 months   ki0047075b-MAL-ED          INDIA                          Q2                0       29     199
24 months   ki0047075b-MAL-ED          INDIA                          Q2                1       20     199
24 months   ki0047075b-MAL-ED          INDIA                          Q3                0       36     199
24 months   ki0047075b-MAL-ED          INDIA                          Q3                1       28     199
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                0       10     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                1        3     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                0       19     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                1        2     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                0       41     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                1        6     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                0       73     160
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                1        6     160
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                0       20     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                0       28     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                1        2     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                0       59     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                1        4     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                0      104     221
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                1        4     221
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                0       14     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                1        4     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                0       24     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                1        6     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                0       45     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                1       16     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                0       86     213
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                1       18     213
Birth       ki0047075b-MAL-ED          PERU                           Q4                0       77     286
Birth       ki0047075b-MAL-ED          PERU                           Q4                1       10     286
Birth       ki0047075b-MAL-ED          PERU                           Q1                0       52     286
Birth       ki0047075b-MAL-ED          PERU                           Q1                1        8     286
Birth       ki0047075b-MAL-ED          PERU                           Q2                0       60     286
Birth       ki0047075b-MAL-ED          PERU                           Q2                1        7     286
Birth       ki0047075b-MAL-ED          PERU                           Q3                0       63     286
Birth       ki0047075b-MAL-ED          PERU                           Q3                1        9     286
6 months    ki0047075b-MAL-ED          PERU                           Q4                0       60     272
6 months    ki0047075b-MAL-ED          PERU                           Q4                1       21     272
6 months    ki0047075b-MAL-ED          PERU                           Q1                0       48     272
6 months    ki0047075b-MAL-ED          PERU                           Q1                1       11     272
6 months    ki0047075b-MAL-ED          PERU                           Q2                0       47     272
6 months    ki0047075b-MAL-ED          PERU                           Q2                1       15     272
6 months    ki0047075b-MAL-ED          PERU                           Q3                0       57     272
6 months    ki0047075b-MAL-ED          PERU                           Q3                1       13     272
24 months   ki0047075b-MAL-ED          PERU                           Q4                0       42     200
24 months   ki0047075b-MAL-ED          PERU                           Q4                1       17     200
24 months   ki0047075b-MAL-ED          PERU                           Q1                0       26     200
24 months   ki0047075b-MAL-ED          PERU                           Q1                1       19     200
24 months   ki0047075b-MAL-ED          PERU                           Q2                0       30     200
24 months   ki0047075b-MAL-ED          PERU                           Q2                1       19     200
24 months   ki0047075b-MAL-ED          PERU                           Q3                0       28     200
24 months   ki0047075b-MAL-ED          PERU                           Q3                1       19     200
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       63     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       49     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       75     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1       10     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       58     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       44     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1       10     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       56     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0       46     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1       11     254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       50     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       42     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1       20     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        2     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        0     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0       14     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1        1     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0       18     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1        2     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0       58     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1       12     107
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        3     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0       24     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1        6     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0       24     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1        8     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0      111     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1       27     203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        2     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        1     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0        2     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1       25     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0        8     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1       19     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0       41     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1       77     175
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4                0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1                0       69     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1                1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2                0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2                1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3                0       98     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3                1       37     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                0       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                0       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                1       87     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                1       77     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                0       43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                1       93     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q4                0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q4                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q1                0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q1                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q2                0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q2                1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q3                0       36      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q3                1        7      90
6 months    ki1000108-IRC              INDIA                          Q4                0        8     407
6 months    ki1000108-IRC              INDIA                          Q4                1        3     407
6 months    ki1000108-IRC              INDIA                          Q1                0      134     407
6 months    ki1000108-IRC              INDIA                          Q1                1       47     407
6 months    ki1000108-IRC              INDIA                          Q2                0       75     407
6 months    ki1000108-IRC              INDIA                          Q2                1       28     407
6 months    ki1000108-IRC              INDIA                          Q3                0       90     407
6 months    ki1000108-IRC              INDIA                          Q3                1       22     407
24 months   ki1000108-IRC              INDIA                          Q4                0       10     409
24 months   ki1000108-IRC              INDIA                          Q4                1        1     409
24 months   ki1000108-IRC              INDIA                          Q1                0      102     409
24 months   ki1000108-IRC              INDIA                          Q1                1       79     409
24 months   ki1000108-IRC              INDIA                          Q2                0       57     409
24 months   ki1000108-IRC              INDIA                          Q2                1       47     409
24 months   ki1000108-IRC              INDIA                          Q3                0       70     409
24 months   ki1000108-IRC              INDIA                          Q3                1       43     409
Birth       ki1000108-IRC              INDIA                          Q4                0        9     388
Birth       ki1000108-IRC              INDIA                          Q4                1        1     388
Birth       ki1000108-IRC              INDIA                          Q1                0      155     388
Birth       ki1000108-IRC              INDIA                          Q1                1       21     388
Birth       ki1000108-IRC              INDIA                          Q2                0       86     388
Birth       ki1000108-IRC              INDIA                          Q2                1       13     388
Birth       ki1000108-IRC              INDIA                          Q3                0       93     388
Birth       ki1000108-IRC              INDIA                          Q3                1       10     388
6 months    ki1000109-EE               PAKISTAN                       Q4                0        3     369
6 months    ki1000109-EE               PAKISTAN                       Q4                1        1     369
6 months    ki1000109-EE               PAKISTAN                       Q1                0      149     369
6 months    ki1000109-EE               PAKISTAN                       Q1                1      172     369
6 months    ki1000109-EE               PAKISTAN                       Q2                0       20     369
6 months    ki1000109-EE               PAKISTAN                       Q2                1       13     369
6 months    ki1000109-EE               PAKISTAN                       Q3                0        6     369
6 months    ki1000109-EE               PAKISTAN                       Q3                1        5     369
Birth       ki1000109-EE               PAKISTAN                       Q1                0        1       2
Birth       ki1000109-EE               PAKISTAN                       Q1                1        1       2
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                0       28    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                1        6    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                0      407    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                1      226    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                0      299    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                1      114    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                1       34    1336
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4                0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4                1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1                0       64     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1                1       26     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2                0       52     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2                1       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3                0       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3                1        5     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                0       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                0      175     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                1      133     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                1       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                0       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                1        9     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                0       52     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                1       16     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                0      148     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                1       73     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                0      117     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                1       44     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                0       76     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                1       11     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                0       40     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                1       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                0       60     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                1      115     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                0       53     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                1       71     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                1       33     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4                0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1                0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1                1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2                0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3                0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3                1        0      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                0       11     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                1        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                0      189     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                1       41     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                0      182     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                1       36     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                0      107     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                1       16     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                0       11     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                1        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                0      129     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                1       96     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                0      146     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                1       71     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                0      101     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                1       23     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1        2      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0      203     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1       37     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0      135     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1       40     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0       38     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1       16     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0      189     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1       57     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0       74     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1       38     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1       11     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1       55     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                0        4    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                1        0    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                0       60    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                1        5    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                0     1685    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                1      185    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                0       77    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                1        5    2021
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                1        0       6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                0       81     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                1       36     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                0       25     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                1       20     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                0       59     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                1       22     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                0       26     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                1        8     277
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                0       57     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                1       10     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                0      306     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                1       93     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                0       37     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                1        5     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                0       41     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                1       11     560
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                0       42     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                1       16     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                0      185     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                1      165     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                0       23     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                1       15     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                0       23     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                1       27     496
Birth       ki1119695-PROBIT           BELARUS                        Q4                0     2246   13884
Birth       ki1119695-PROBIT           BELARUS                        Q4                1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        Q1                0       29   13884
Birth       ki1119695-PROBIT           BELARUS                        Q1                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Q2                0      480   13884
Birth       ki1119695-PROBIT           BELARUS                        Q2                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        Q3                0    11096   13884
Birth       ki1119695-PROBIT           BELARUS                        Q3                1       28   13884
6 months    ki1119695-PROBIT           BELARUS                        Q4                0     2547   15761
6 months    ki1119695-PROBIT           BELARUS                        Q4                1      110   15761
6 months    ki1119695-PROBIT           BELARUS                        Q1                0       25   15761
6 months    ki1119695-PROBIT           BELARUS                        Q1                1        5   15761
6 months    ki1119695-PROBIT           BELARUS                        Q2                0      512   15761
6 months    ki1119695-PROBIT           BELARUS                        Q2                1       68   15761
6 months    ki1119695-PROBIT           BELARUS                        Q3                0    11689   15761
6 months    ki1119695-PROBIT           BELARUS                        Q3                1      805   15761
24 months   ki1119695-PROBIT           BELARUS                        Q4                0      626    4035
24 months   ki1119695-PROBIT           BELARUS                        Q4                1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        Q2                0       95    4035
24 months   ki1119695-PROBIT           BELARUS                        Q2                1       12    4035
24 months   ki1119695-PROBIT           BELARUS                        Q3                0     2970    4035
24 months   ki1119695-PROBIT           BELARUS                        Q3                1      294    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0     7839   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1      858   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0      186   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1       22   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0      365   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1       55   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0     3988   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1      497   13810
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0     4411    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1      811    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0      103    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1       27    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0      203    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1       43    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0     2186    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1      498    8282
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0       99     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1      157     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0        0     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1       10     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0        6     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1       21     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0       54     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1      110     457
24 months   ki1135781-COHORTS          GUATEMALA                      Q4                0        1    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q4                1        2    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q1                0      179    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q1                1      672    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q2                0       35    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q2                1      142    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q3                0        7    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Q3                1       22    1060
6 months    ki1135781-COHORTS          GUATEMALA                      Q4                0        1     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q4                1        0     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q1                0      450     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q1                1      317     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q2                0       98     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q2                1       62     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q3                0       15     952
6 months    ki1135781-COHORTS          GUATEMALA                      Q3                1        9     952
Birth       ki1135781-COHORTS          GUATEMALA                      Q1                0      625     842
Birth       ki1135781-COHORTS          GUATEMALA                      Q1                1       39     842
Birth       ki1135781-COHORTS          GUATEMALA                      Q2                0      147     842
Birth       ki1135781-COHORTS          GUATEMALA                      Q2                1        8     842
Birth       ki1135781-COHORTS          GUATEMALA                      Q3                0       21     842
Birth       ki1135781-COHORTS          GUATEMALA                      Q3                1        2     842
Birth       ki1135781-COHORTS          INDIA                          Q4                0     1604    5216
Birth       ki1135781-COHORTS          INDIA                          Q4                1      154    5216
Birth       ki1135781-COHORTS          INDIA                          Q1                0     1505    5216
Birth       ki1135781-COHORTS          INDIA                          Q1                1      251    5216
Birth       ki1135781-COHORTS          INDIA                          Q2                0      771    5216
Birth       ki1135781-COHORTS          INDIA                          Q2                1      108    5216
Birth       ki1135781-COHORTS          INDIA                          Q3                0      719    5216
Birth       ki1135781-COHORTS          INDIA                          Q3                1      104    5216
6 months    ki1135781-COHORTS          INDIA                          Q4                0     1699    5413
6 months    ki1135781-COHORTS          INDIA                          Q4                1      195    5413
6 months    ki1135781-COHORTS          INDIA                          Q1                0     1264    5413
6 months    ki1135781-COHORTS          INDIA                          Q1                1      513    5413
6 months    ki1135781-COHORTS          INDIA                          Q2                0      701    5413
6 months    ki1135781-COHORTS          INDIA                          Q2                1      192    5413
6 months    ki1135781-COHORTS          INDIA                          Q3                0      712    5413
6 months    ki1135781-COHORTS          INDIA                          Q3                1      137    5413
24 months   ki1135781-COHORTS          INDIA                          Q4                0     1141    4201
24 months   ki1135781-COHORTS          INDIA                          Q4                1      393    4201
24 months   ki1135781-COHORTS          INDIA                          Q1                0      380    4201
24 months   ki1135781-COHORTS          INDIA                          Q1                1      894    4201
24 months   ki1135781-COHORTS          INDIA                          Q2                0      295    4201
24 months   ki1135781-COHORTS          INDIA                          Q2                1      410    4201
24 months   ki1135781-COHORTS          INDIA                          Q3                0      362    4201
24 months   ki1135781-COHORTS          INDIA                          Q3                1      326    4201
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4                0      892    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4                1       41    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1                0      586    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1                1       52    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2                0      244    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2                1       18    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3                0     1141    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3                1       76    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                0      687    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                1      115    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                0      435    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                1      159    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                0      175    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                1       57    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                0      839    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                1      241    2708
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                0      412    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                1      318    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                0      135    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                1      399    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                0       66    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                1      144    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                0      324    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                1      647    2445
6 months    ki1148112-LCNI-5           MALAWI                         Q4                0        1     813
6 months    ki1148112-LCNI-5           MALAWI                         Q4                1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Q1                0      352     813
6 months    ki1148112-LCNI-5           MALAWI                         Q1                1      222     813
6 months    ki1148112-LCNI-5           MALAWI                         Q2                0      151     813
6 months    ki1148112-LCNI-5           MALAWI                         Q2                1       65     813
6 months    ki1148112-LCNI-5           MALAWI                         Q3                0       14     813
6 months    ki1148112-LCNI-5           MALAWI                         Q3                1        8     813
24 months   ki1148112-LCNI-5           MALAWI                         Q4                0        1     572
24 months   ki1148112-LCNI-5           MALAWI                         Q4                1        0     572
24 months   ki1148112-LCNI-5           MALAWI                         Q1                0      218     572
24 months   ki1148112-LCNI-5           MALAWI                         Q1                1      179     572
24 months   ki1148112-LCNI-5           MALAWI                         Q2                0       94     572
24 months   ki1148112-LCNI-5           MALAWI                         Q2                1       62     572
24 months   ki1148112-LCNI-5           MALAWI                         Q3                0        9     572
24 months   ki1148112-LCNI-5           MALAWI                         Q3                1        9     572
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4                0      579   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4                1      125   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     5186   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     2711   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2                0     3005   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2                1     1618   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     4485   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3                1     1878   19587
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                0      974   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                1      112   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     3988   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     1634   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                0     2783   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                1     1093   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     4826   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                1     1384   16794
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                0      363    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                1       96    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     1294    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     1710    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                0      964    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                1     1051    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     1769    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                1     1374    8621
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                0        8    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                1        8    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                0     1425    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      481    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                0       34    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                1       15    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                0       45    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                1       20    2036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                0        7    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                1        7    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                0     1129    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      738    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                0       31    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                1       24    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                0       39    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                1       31    2006
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                0      249     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      105     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                0        2     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                1        2     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                0        4     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                1        5     367


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/06fd34a2-d0ba-4eae-a3fe-7c4f6701d907/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06fd34a2-d0ba-4eae-a3fe-7c4f6701d907/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06fd34a2-d0ba-4eae-a3fe-7c4f6701d907/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06fd34a2-d0ba-4eae-a3fe-7c4f6701d907/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                0.1149425    0.0478035   0.1820816
Birth       ki0047075b-MAL-ED          PERU           Q1                   NA                0.1333333    0.0471688   0.2194979
Birth       ki0047075b-MAL-ED          PERU           Q2                   NA                0.1044776    0.0311072   0.1778481
Birth       ki0047075b-MAL-ED          PERU           Q3                   NA                0.1250000    0.0484753   0.2015247
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0986547    0.0923874   0.1049221
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1057692    0.0639730   0.1475654
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1309524    0.0986884   0.1632163
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1108138    0.1016268   0.1200009
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0875995    0.0743828   0.1008163
Birth       ki1135781-COHORTS          INDIA          Q1                   NA                0.1429385    0.1265663   0.1593107
Birth       ki1135781-COHORTS          INDIA          Q2                   NA                0.1228669    0.1011626   0.1445712
Birth       ki1135781-COHORTS          INDIA          Q3                   NA                0.1263670    0.1036646   0.1490693
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0439443    0.0307899   0.0570987
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0815047    0.0602704   0.1027390
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0687023    0.0380687   0.0993359
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0624486    0.0488520   0.0760453
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1775568    0.1429388   0.2121748
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3432949    0.3319585   0.3546313
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3499892    0.3351389   0.3648395
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2951438    0.2825656   0.3077220
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                0.1525424    0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                0.1515152    0.0288877   0.2741426
6 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                0.2400000    0.1213352   0.3586648
6 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                0.1515152    0.0648045   0.2382259
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.2592593    0.1636487   0.3548698
6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.1864407    0.0868802   0.2860011
6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.2419355    0.1351395   0.3487315
6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.1857143    0.0944481   0.2769805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1714286    0.0829655   0.2598917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.1851852    0.0813749   0.2889955
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2328767    0.1357276   0.3300258
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.1929825    0.0903304   0.2956345
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.3636364    0.1623509   0.5649218
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.3428571    0.2519435   0.4337708
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.2803738    0.1951487   0.3655990
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.2740741    0.1987297   0.3494184
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.1764706    0.0107629   0.3421782
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3570300    0.3243478   0.3897122
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.2760291    0.2271716   0.3248865
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.1328125    0.0774764   0.1881486
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.2352941    0.1343802   0.3362081
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.3303167    0.2682503   0.3923832
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.2732919    0.2043897   0.3421942
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1264368    0.0565368   0.1963368
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1541667    0.1084490   0.1998843
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2285714    0.1663139   0.2908289
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2962963    0.1744217   0.4181709
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.2317073    0.1789458   0.2844689
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3076923    0.2239108   0.3914739
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.4444444    0.2989992   0.5898897
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.2716049    0.1745666   0.3686433
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.2352941    0.0924551   0.3781331
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1492537    0.0638530   0.2346544
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2330827    0.1915606   0.2746048
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1190476    0.0210201   0.2170752
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.2115385    0.1004371   0.3226398
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0414001    0.0280035   0.0547966
6 months    ki1119695-PROBIT           BELARUS        Q1                   NA                0.1666667    0.0954191   0.2379142
6 months    ki1119695-PROBIT           BELARUS        Q2                   NA                0.1172414    0.0743774   0.1601053
6 months    ki1119695-PROBIT           BELARUS        Q3                   NA                0.0644309    0.0500701   0.0787918
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1553045    0.1454803   0.1651287
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2076923    0.1379559   0.2774287
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1747967    0.1273339   0.2222596
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1855440    0.1708364   0.2002515
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1029567    0.0892690   0.1166445
6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2886888    0.2676176   0.3097600
6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.2150056    0.1880580   0.2419532
6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1613663    0.1366191   0.1861136
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1433915    0.1191313   0.1676517
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.2676768    0.2320651   0.3032884
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2456897    0.1902842   0.3010951
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2231481    0.1983121   0.2479842
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1031308    0.0828935   0.1233680
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2906439    0.2773761   0.3039117
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.2819917    0.2657479   0.2982356
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2228663    0.2112695   0.2344632
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.5000000    0.2088809   0.7911191
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2523610    0.2291839   0.2755380
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.3061224    0.1762257   0.4360192
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3076923    0.1995951   0.4157895
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4313725    0.2950472   0.5676979
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.5555556    0.3927599   0.7183513
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.3043478    0.1157490   0.4929466
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.4426230    0.3176119   0.5676340
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4000000    0.2702025   0.5297975
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3548387    0.1859849   0.5236925
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4081633    0.2702005   0.5461260
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4375000    0.3156565   0.5593435
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.2881356    0.1722825   0.4039887
24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.4222222    0.2775513   0.5668931
24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3877551    0.2509886   0.5245216
24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4042553    0.2636034   0.5449072
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2537313    0.1493171   0.3581456
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4150943    0.2821589   0.5480298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3731343    0.2570844   0.4891842
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.3921569    0.2578794   0.5264343
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.4090909    0.2033638   0.6148180
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.8285714    0.7563868   0.9007560
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7064220    0.6208142   0.7920298
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6838235    0.6055707   0.7620763
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3220339    0.2026671   0.4414007
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.6571429    0.5867348   0.7275509
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5725806    0.4854062   0.6597551
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.4647887    0.3486396   0.5809379
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1465969    0.0963865   0.1968073
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3392857    0.2515146   0.4270568
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3235294    0.1661265   0.4809324
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3107345    0.2424892   0.3789797
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2758621    0.1607213   0.3910028
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4714286    0.4190791   0.5237780
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.3947368    0.2391688   0.5503049
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5400000    0.4017143   0.6782857
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0572289    0.0305812   0.0838766
24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.1121495   -0.1798803   0.4041794
24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.0900735    0.0583653   0.1217817
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2561930    0.2343455   0.2780404
24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.7017268    0.6766018   0.7268519
24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.5815603    0.5451420   0.6179785
24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.4738372    0.4365225   0.5111519
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4356164    0.3996403   0.4715926
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7471910    0.7103206   0.7840615
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6857143    0.6229141   0.7485145
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6663234    0.6366592   0.6959876
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2091503    0.1682480   0.2500527
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.5692410    0.5493287   0.5891533
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.5215881    0.4964349   0.5467412
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4371619    0.4165831   0.4577408
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.5000000    0.0825202   0.9174798
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.3952866    0.3686383   0.4219348
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.4363636    0.2698530   0.6028743
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.4428571    0.3185309   0.5671834


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          PERU           NA                   NA                0.1188811   0.0813061   0.1564562
Birth       ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1036930   0.0986082   0.1087777
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1182899   0.1095248   0.1270550
Birth       ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3232756   0.3156176   0.3309337
6 months    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1730769   0.1215404   0.2246134
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2125000   0.1785885   0.2464115
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1665057   0.1584820   0.1745293
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2514589   0.2433251   0.2595926
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2573674   0.2348896   0.2798452
24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4444444   0.3697487   0.5191402
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4070352   0.3386053   0.4754651
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3700000   0.3029201   0.4370799
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4495968   0.4057742   0.4934193
24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4815520   0.4664409   0.4966632
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4907783   0.4776560   0.5039007
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3988036   0.3729992   0.4246080


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          PERU           Q1                   Q4                1.1600000   0.4854531    2.7718435
Birth       ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9089552   0.3646239    2.2658951
Birth       ki0047075b-MAL-ED          PERU           Q3                   Q4                1.0875000   0.4666067    2.5345888
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0721154   0.7184895    1.5997886
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3273809   1.0291878    1.7119714
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1232492   1.0118486    1.2469146
Birth       ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA          Q1                   Q4                1.6317265   1.3501420    1.9720379
Birth       ki1135781-COHORTS          INDIA          Q2                   Q4                1.4025974   1.1118380    1.7693940
Birth       ki1135781-COHORTS          INDIA          Q3                   Q4                1.4425526   1.1408908    1.8239765
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8547289   1.2471976    2.7581991
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5633960   0.9137570    2.6748980
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4210874   0.9814470    2.0576652
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.9334370   1.5871306    2.3553062
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.9711391   1.6145377    2.4065028
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.6622499   1.3613265    2.0296928
6 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.9932660   0.3620531    2.7249518
6 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.5733333   0.7214408    3.4311587
6 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                0.9932660   0.4325701    2.2807339
6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.7191283   0.3758043    1.3761032
6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9331797   0.5249994    1.6587150
6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.7163265   0.3875014    1.3241855
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.0802469   0.5042213    2.3143280
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.3584475   0.6996147    2.6377085
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1257310   0.5365092    2.3620663
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                0.9428571   0.5103746    1.7418178
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                0.7710280   0.4100257    1.4498707
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                0.7537037   0.4062461    1.3983378
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                2.0231701   0.7533303    5.4334957
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.5641646   0.6894290    3.5487500
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                0.7526042   0.2538089    2.2316520
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.4038462   0.8789533    2.2421942
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.1614907   0.7062433    1.9101923
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                0.5373563   0.2669234    1.0817778
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.4826255   0.9912008    2.2176923
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.9219219   1.1574809    3.1912266
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.5029664   1.0341237    2.1843691
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.4444444   0.9436565    2.2109950
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.8827160   0.5632898    1.3832802
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.7647059   0.3931363    1.4874614
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.5616541   0.8576757    2.8434565
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                0.7976190   0.2926325    2.1740448
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4173077   0.6518607    3.0815803
6 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                4.0257572   2.4356576    6.6539406
6 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                2.8319120   1.8101051    4.4305303
6 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                1.5562996   1.1859707    2.0422667
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.3373233   0.9502741    1.8820187
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1255100   0.8516611    1.4874141
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1947110   1.0794915    1.3222283
6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.8039825   2.4093951    3.2631915
6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                2.0883108   1.7395801    2.5069509
6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.5673220   1.2794171    1.9200137
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8667545   1.5052675    2.3150518
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.7134183   1.2924883    2.2714342
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5562158   1.2709222    1.9055514
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.8182078   2.3120998    3.4351005
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.7343128   2.2337816    3.3469997
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                2.1610076   1.7704380    2.6377393
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.5047219   0.2809053    0.9068687
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                0.6122449   0.2961104    1.2658919
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.6153846   0.3104066    1.2200068
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.2878788   0.8369589    1.9817362
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.7055336   0.3518977    1.4145521
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.0260805   0.6715984    1.5676647
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8870968   0.4986905    1.5780142
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0204082   0.6386780    1.6302937
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0937500   0.7131903    1.6773770
24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.4653595   0.8640104    2.4852461
24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.3457383   0.7882688    2.2974542
24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.4030038   0.8243997    2.3877006
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.6359600   0.9712056    2.7557143
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.4705882   0.8779539    2.4632612
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.5455594   0.9048803    2.6398562
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                2.0253968   1.2157811    3.3741537
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.7268094   1.0294159    2.8966628
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.6715686   0.9980203    2.7996842
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                2.0406015   1.3873629    3.0014169
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.7780136   1.1909864    2.6543815
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.4432913   0.9230149    2.2568322
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.3144133   1.5067155    3.5550897
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                2.2069328   1.2172760    4.0011896
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                2.1196529   1.4111128    3.1839613
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.7089286   1.1095588    2.6320704
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.4309211   0.8059541    2.5405107
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.9575000   1.1995961    3.1942469
24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                1.9596655   0.1487183   25.8225656
24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                1.5739164   1.0520857    2.3545733
24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.7390559   2.4970860    3.0044730
24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                2.2700088   2.0421098    2.5233414
24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.8495325   1.6468366    2.0771767
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7152498   1.5579222    1.8884653
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5741240   1.3914935    1.7807244
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5296103   1.3926259    1.6800689
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.7216836   2.2291087    3.3231047
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.4938431   2.0352589    3.0557553
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                2.0901806   1.7109639    2.5534465
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.7905731   0.3432412    1.8208939
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                0.8727273   0.3482461    2.1871110
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.8857143   0.3657266    2.1450173


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0039386   -0.0524273   0.0603045
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0050383    0.0010809   0.0089956
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.0306903    0.0191249   0.0422558
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0173672    0.0055484   0.0291860
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1457188    0.1115059   0.1799317
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0205346   -0.0589358   0.1000049
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0386710   -0.1169908   0.0396488
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0254218   -0.0514734   0.1023170
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0628234   -0.2574517   0.1318050
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1079605   -0.0535355   0.2694566
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0328623   -0.0620641   0.1277887
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0556235    0.0158885   0.0953586
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0027770   -0.0610137   0.0665677
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0632463   -0.0185956   0.1450881
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0212863    0.0100963   0.0324763
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0112012    0.0049415   0.0174609
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0886191    0.0757282   0.1015100
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0678345    0.0460084   0.0896605
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1483281    0.1286325   0.1680237
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2426326   -0.5316716   0.0464063
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0130719   -0.1012894   0.1274332
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0070352   -0.1034972   0.1175676
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0818644   -0.0181492   0.1818780
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0992098    0.0072007   0.1912190
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.3059629    0.1073997   0.5045260
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2327447    0.1207348   0.3447545
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1102125    0.0646424   0.1557825
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1737347    0.0638380   0.2836314
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0280251    0.0043685   0.0516818
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.2253591    0.2064626   0.2442555
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1811525    0.1512704   0.2110345
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.2816280    0.2406341   0.3226219
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.1011964   -0.5156017   0.3132089


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0331305   -0.5787026    0.4078450
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0485883    0.0097086    0.0859416
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.2594502    0.1566703    0.3497039
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2832620    0.0668796    0.4494672
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.4507572    0.3341482    0.5469448
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1186441   -0.4824626    0.4760149
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.1753086   -0.5888389    0.1305913
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1291429   -0.3626165    0.4434295
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.2088452   -1.0645673    0.2921971
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.3795666   -0.5614954    0.7534814
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1225490   -0.3132884    0.4137463
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2651389    0.0520681    0.4303168
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0089445   -0.2193701    0.1945096
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2976295   -0.2122170    0.5930396
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.3395682    0.1584203    0.4817245
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0672721    0.0290010    0.1040349
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.4625799    0.3950182    0.5225966
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3211464    0.2115109    0.4155377
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.5898703    0.5039636    0.6608991
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.9427481   -2.4606147   -0.0906358
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0294118   -0.2652686    0.2554613
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0172840   -0.2955062    0.2545533
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.2212552   -0.1015387    0.4494578
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.2810945   -0.0317381    0.4990734
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.4278879    0.0663135    0.6494409
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.4195271    0.1760826    0.5910406
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.4291607    0.2304597    0.5765556
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3864234    0.0861266    0.5880433
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.3287248    0.0425351    0.5293714
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.4679849    0.4272953    0.5057835
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2937121    0.2423889    0.3415584
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.5738395    0.4829744    0.6487355
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2537500   -1.8688007    0.4520745
