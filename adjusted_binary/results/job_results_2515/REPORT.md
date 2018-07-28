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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

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




# Results Detail

## Results Plots
![](/tmp/0f8d0e8b-6bcd-4f43-af95-dbaeb8c96a85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f8d0e8b-6bcd-4f43-af95-dbaeb8c96a85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f8d0e8b-6bcd-4f43-af95-dbaeb8c96a85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f8d0e8b-6bcd-4f43-af95-dbaeb8c96a85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                0.1171745    0.0800576   0.1542914
Birth       ki0047075b-MAL-ED          PERU           Q1                   NA                0.1189660    0.0813831   0.1565488
Birth       ki0047075b-MAL-ED          PERU           Q2                   NA                0.1190664    0.0815357   0.1565972
Birth       ki0047075b-MAL-ED          PERU           Q3                   NA                0.1199733    0.0824020   0.1575445
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1036784    0.0985944   0.1087624
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1038244    0.0987451   0.1089037
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1036670    0.0985854   0.1087486
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1036876    0.0986033   0.1087720
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.1181725    0.1094166   0.1269284
Birth       ki1135781-COHORTS          INDIA          Q1                   NA                0.1182436    0.1094825   0.1270047
Birth       ki1135781-COHORTS          INDIA          Q2                   NA                0.1182352    0.1094751   0.1269954
Birth       ki1135781-COHORTS          INDIA          Q3                   NA                0.1182338    0.1094741   0.1269936
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0605142    0.0521083   0.0689202
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0607102    0.0522745   0.0691460
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0601983    0.0518292   0.0685675
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0610170    0.0525404   0.0694936
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3231203    0.3154666   0.3307740
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3232756    0.3156180   0.3309332
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3232700    0.3156124   0.3309276
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.3232635    0.3156057   0.3309212
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                0.1558362    0.0758560   0.2358165
6 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                0.1589997    0.0531713   0.2648282
6 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                0.2389878    0.1373367   0.3406389
6 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                0.1452351    0.0680462   0.2224239
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.2479264    0.1555220   0.3403308
6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.1987038    0.1112710   0.2861366
6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.2399298    0.1465909   0.3332686
6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.1892657    0.1071662   0.2713651
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3115998    0.2408303   0.3823694
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4591402    0.3879997   0.5302807
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.4499112    0.3744128   0.5254096
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.3945189    0.3165175   0.4725204
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.1650616    0.0976950   0.2324282
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.2851118    0.2186672   0.3515565
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.2356127    0.1713256   0.2998999
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.2461294    0.1857185   0.3065403
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2078484    0.1635987   0.2520981
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3338378    0.3070974   0.3605782
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3068486    0.2781828   0.3355145
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.1695550    0.1358052   0.2033048
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3089034    0.2403162   0.3774906
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.3445631    0.2907928   0.3983334
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.2913784    0.2329310   0.3498257
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1417625    0.0872877   0.1962374
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1575375    0.1175670   0.1975081
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1674061    0.1149423   0.2198698
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1213434    0.0457561   0.1969307
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1883184    0.1413782   0.2352586
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3042586    0.2250932   0.3834240
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.4487907    0.3259389   0.5716426
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.2684746    0.1784054   0.3585438
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.1960621    0.0834353   0.3086890
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1235381    0.0535076   0.1935686
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2294211    0.1884654   0.2703767
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1136492    0.0235451   0.2037533
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.1990380    0.0982369   0.2998392
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0471560    0.0339136   0.0603984
6 months    ki1119695-PROBIT           BELARUS        Q1                   NA                0.0211612    0.0177005   0.0246218
6 months    ki1119695-PROBIT           BELARUS        Q2                   NA                0.0985136    0.0698295   0.1271976
6 months    ki1119695-PROBIT           BELARUS        Q3                   NA                0.0638690    0.0499918   0.0777463
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1632339    0.1540241   0.1724436
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3175200    0.2872524   0.3477876
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1914280    0.1642750   0.2185810
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1820702    0.1691894   0.1949511
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1293368    0.1164486   0.1422250
6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2532187    0.2362185   0.2702189
6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.2179063    0.1950948   0.2407178
6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1616466    0.1418117   0.1814815
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1548979    0.1353891   0.1744067
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.2222635    0.1962192   0.2483077
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2187379    0.1845528   0.2529229
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2099409    0.1896072   0.2302746
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1789737    0.1632095   0.1947379
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2586570    0.2472236   0.2700905
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.2616143    0.2484759   0.2747527
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2485158    0.2378203   0.2592112
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.4555369    0.2030081   0.7080656
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2534000    0.2304234   0.2763766
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.2838693    0.1709951   0.3967434
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3014868    0.2163797   0.3865938
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.5844335    0.5073755   0.6614915
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.7043178    0.6292413   0.7793944
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.5959199    0.5256346   0.6662053
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.5203769    0.4411827   0.5995710
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4063447    0.2888852   0.5238043
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3575207    0.2074233   0.5076181
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4054687    0.2825118   0.5284256
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4315534    0.3212505   0.5418563
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.3104256    0.2117423   0.4091089
24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.3927595    0.2692421   0.5162769
24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3781406    0.2623855   0.4938957
24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4084491    0.2974768   0.5194215
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2313945    0.1560446   0.3067444
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4578572    0.3750798   0.5406347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3972430    0.3199379   0.4745482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.4269980    0.3440755   0.5099204
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.0328601   -0.0323457   0.0980659
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7543643    0.6968519   0.8118768
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.5958663    0.5290956   0.6626369
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6119132    0.5470838   0.6767426
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3359429    0.2546473   0.4172386
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.6689627    0.6100273   0.7278981
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5774099    0.5065580   0.6482618
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.5144044    0.4363831   0.5924257
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1880143    0.1424341   0.2335945
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3555975    0.2800428   0.4311521
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.6052552    0.4905986   0.7199118
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3196308    0.2579408   0.3813208
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3546410    0.2544765   0.4548054
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4782295    0.4261879   0.5302710
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4074369    0.2704904   0.5443833
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5490675    0.4202288   0.6779062
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0437137    0.0255032   0.0619242
24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.0345873    0.0049882   0.0641865
24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.0893543    0.0577403   0.1209682
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2799473    0.2607622   0.2991324
24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.6709062    0.6493751   0.6924374
24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.5681715    0.5384552   0.5978879
24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.4598624    0.4302095   0.4895153
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4712504    0.4430499   0.4994510
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7091243    0.6804515   0.7377971
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6271787    0.5888528   0.6655046
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6555371    0.6303313   0.6807429
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2375012    0.2178737   0.2571286
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.5356742    0.5179452   0.5534033
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.4910040    0.4700819   0.5119262
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4655898    0.4482487   0.4829310
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.4879437    0.0561400   0.9197475
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.3955474    0.3691361   0.4219587
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.4298299    0.2806449   0.5790149
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.4383353    0.3286503   0.5480202


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
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0626864   0.0488489   0.0765238
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


agecat      studyid                    country        intervention_level   baseline_level      estimate    ci_lower      ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  ----------  ------------
Birth       ki0047075b-MAL-ED          PERU           Q4                   Q4                 1.0000000   1.0000000     1.0000000
Birth       ki0047075b-MAL-ED          PERU           Q1                   Q4                 1.0152890   0.9964471     1.0344871
Birth       ki0047075b-MAL-ED          PERU           Q2                   Q4                 1.0161463   0.9954850     1.0372364
Birth       ki0047075b-MAL-ED          PERU           Q3                   Q4                 1.0238854   0.9998822     1.0484647
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 1.0000000   1.0000000     1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 1.0014082   1.0007597     1.0020571
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.9998901   0.9996959     1.0000844
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                 1.0000888   0.9999768     1.0002008
Birth       ki1135781-COHORTS          INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
Birth       ki1135781-COHORTS          INDIA          Q1                   Q4                 1.0006018   1.0002749     1.0009288
Birth       ki1135781-COHORTS          INDIA          Q2                   Q4                 1.0005311   1.0001741     1.0008882
Birth       ki1135781-COHORTS          INDIA          Q3                   Q4                 1.0005193   1.0001717     1.0008671
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 1.0000000   1.0000000     1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                 1.0032388   0.9991365     1.0073580
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                 0.9947798   0.9890681     1.0005244
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                 1.0083084   1.0050893     1.0115378
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                 1.0004807   1.0004380     1.0005235
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                 1.0004634   1.0004194     1.0005073
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                 1.0004431   1.0003995     1.0004867
6 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                 1.0203003   0.4570202     2.2778263
6 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                 1.5335829   0.8161040     2.8818345
6 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                 0.9319725   0.4664184     1.8622179
6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.8014629   0.4578317     1.4030109
6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                 0.9677460   0.5733448     1.6334541
6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                 0.7633948   0.4373577     1.3324826
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                 1.4734932   1.1309586     1.9197715
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 1.4438749   1.0956098     1.9028442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 1.2661077   0.9386394     1.7078215
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                 1.7273057   1.0907491     2.7353539
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                 1.4274231   0.8834464     2.3063502
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                 1.4911366   0.9361441     2.3751562
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                 1.6061602   1.2850487     2.0075119
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                 1.4763098   1.1892231     1.8327010
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.8157628   0.6096234     1.0916065
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                 1.1154395   0.8513208     1.4615001
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 0.9432668   0.7008242     1.2695798
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 0.4589218   0.2947295     0.7145848
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 1.0626424   0.7209639     1.5662490
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.7702507   0.3976234     1.4920807
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                 1.1953876   0.8500124     1.6810948
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                 1.4750304   1.0138055     2.1460869
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                 0.8823894   0.5788602     1.3450759
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                 0.6443930   0.3435378     1.2087238
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                 1.8570880   1.0244169     3.3665747
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                 0.9199527   0.3476884     2.4341134
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 1.6111470   0.7538574     3.4433500
6 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                 0.4487483   0.3435505     0.5861584
6 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                 2.0890998   1.4119937     3.0909048
6 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                 1.3544207   1.0699526     1.7145204
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 1.9451846   1.7453009     2.1679604
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 1.1727222   1.0089367     1.3630958
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                 1.1153951   1.0232253     1.2158672
6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                 1.9578236   1.7457077     2.1957130
6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                 1.6847970   1.4643496     1.9384311
6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                 1.2498112   1.0729426     1.4558355
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                 1.4349031   1.2147173     1.6950009
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                 1.4121424   1.1613231     1.7171330
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                 1.3553503   1.1640363     1.5781075
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                 1.4452236   1.3175313     1.5852915
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                 1.4617471   1.3266097     1.6106505
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                 1.3885604   1.2670877     1.5216784
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                 0.5562668   0.3191281     0.9696193
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                 0.6231533   0.3138537     1.2372645
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                 0.6618274   0.3555592     1.2319059
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                 1.2051291   1.0518866     1.3806964
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 1.0196540   0.8941087     1.1628276
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.8903953   0.7626681     1.0395136
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                 0.8798457   0.5362619     1.4435642
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.9978442   0.6677540     1.4911074
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                 1.0620377   0.7342397     1.5361796
24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                 1.2652292   0.8261356     1.9377024
24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                 1.2181359   0.8091520     1.8338396
24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                 1.3157714   0.8961609     1.9318567
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                 1.9786869   1.3629463     2.8726018
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 1.7167351   1.1754991     2.5071729
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 1.8453248   1.2635263     2.6950159
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                22.9568443   3.1524793   167.1753082
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                18.1334259   2.4877879   132.1741040
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                18.6217665   2.5571042   135.6105014
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                 1.9912986   1.5441747     2.5678895
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 1.7187738   1.3147904     2.2468855
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 1.5312255   1.1558567     2.0284967
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 1.8913318   1.3931348     2.5676884
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 3.2191974   2.3887307     4.3383844
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                 1.7000343   1.2705674     2.2746661
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                 1.3484890   0.9964184     1.8249589
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                 1.1488714   0.7418170     1.7792873
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 1.5482348   1.0724225     2.2351555
24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.7912248   0.3609100     1.7346061
24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                 2.0440803   1.4517677     2.8780528
24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                 2.3965449   2.2257482     2.5804480
24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                 2.0295662   1.8656046     2.2079378
24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                 1.6426749   1.4984267     1.8008094
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                 1.5047717   1.4029461     1.6139879
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                 1.3308820   1.2246012     1.4463868
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                 1.3910588   1.2988979     1.4897589
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                 2.2554596   2.0678262     2.4601187
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                 2.0673754   1.8839424     2.2686688
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                 1.9603687   1.7948904     2.1411030
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 1.0000000   1.0000000     1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                 0.8106415   0.3348152     1.9626932
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                 0.8809005   0.3405781     2.2784368
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                 0.8983316   0.3574781     2.2574799


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0017066   -0.0005562    0.0039694
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0000146    0.0000094    0.0000197
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.0001174    0.0000878    0.0001470
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0007972    0.0006133    0.0009812
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0001554    0.0001417    0.0001690
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0172407   -0.0481812    0.0826625
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0273381   -0.0998651    0.0451888
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.1147494   -0.1759409   -0.0535579
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1357514    0.0655835    0.2059193
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0765827    0.0298732    0.1232923
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0407470   -0.1064738    0.0249798
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0522527    0.0185918    0.0859136
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0062107   -0.0537013    0.0661226
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0889619    0.0202359    0.1576879
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0155304    0.0043701    0.0266907
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0032718   -0.0023022    0.0088458
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0622390    0.0505866    0.0738914
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0563281    0.0389084    0.0737478
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0724852    0.0572985    0.0876718
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.1981695   -0.4482110    0.0518720
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.1399890   -0.1930746   -0.0869035
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0006905   -0.0950825    0.0964634
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0595744   -0.0198328    0.1389816
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1215467    0.0508838    0.1922096
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.6821937    0.6115035    0.7528839
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2188356    0.1417297    0.2959415
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0687950    0.0297506    0.1078394
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0949558   -0.0016980    0.1916096
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0415404    0.0208507    0.0622300
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.2016047    0.1850366    0.2181729
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1455185    0.1225429    0.1684941
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.2532772    0.2318100    0.2747444
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.0891401   -0.5177322    0.3394520


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0143556   -0.0043378    0.0327010
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0001405    0.0000913    0.0001898
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.0009924    0.0007549    0.0012299
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0130032    0.0106042    0.0153964
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0004806    0.0004406    0.0005206
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0996129   -0.3682565    0.4074964
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.1239329   -0.5030614    0.1595652
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.5829271   -0.9961127   -0.2552689
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.4512817    0.1871953    0.6295645
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2692488    0.0909463    0.4125788
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.1519523   -0.4316233    0.0730842
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2490711    0.0747113    0.3905749
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0200042   -0.1931194    0.1950582
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.4186443   -0.0017705    0.6626229
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.2477475    0.0686163    0.3924267
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0196498   -0.0143020    0.0524653
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.3248792    0.2648143    0.3800369
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2666723    0.1833656    0.3414806
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.2882585    0.2264383    0.3451383
6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.7699867   -2.0607579   -0.0235546
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.3149754   -0.4681402   -0.1777896
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0016963   -0.2636381    0.2113167
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1610119   -0.0823362    0.3496466
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.3443823    0.1269271    0.5076762
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.9540453    0.6702409    0.9935958
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3944558    0.2421991    0.5161212
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2678836    0.1071639    0.3996721
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2112022   -0.0332867    0.3978418
24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.4872538    0.3157747    0.6157572
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.4186562    0.3843184    0.4510789
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2359368    0.1979064    0.2721640
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.5160725    0.4747441    0.5541490
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2235189   -1.9418919    0.4911443
