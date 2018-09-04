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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predexfd6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
Birth       ki1000108-IRC              INDIA                          1                  0        0      14
Birth       ki1000108-IRC              INDIA                          1                  1        0      14
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                  1        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1101329-Keneba           GAMBIA                         0                  0      864    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  1       25    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4950   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     3022   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21130   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     9062   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      182    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      114    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      878    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      360    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                  0      174     744
6 months    ki1000109-EE               PAKISTAN                       0                  1      134     744
6 months    ki1000109-EE               PAKISTAN                       1                  0      184     744
6 months    ki1000109-EE               PAKISTAN                       1                  1      252     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      371     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       76     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      118     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     583
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      208    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       76    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      654    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1      154    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4686   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2232   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20310   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6136   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1270    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      584    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5080    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1584    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      294     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       51     577
24 months   ki1101329-Keneba           GAMBIA                         0                  0      640    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      358    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  0      367    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      148    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      122     960
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      118     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      404     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      316     960
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1848   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1882   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6852   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6502   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      992    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      778    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     4024    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     2554    8348


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3d5c5114-108e-4321-b709-be5a19562cee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d5c5114-108e-4321-b709-be5a19562cee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d5c5114-108e-4321-b709-be5a19562cee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d5c5114-108e-4321-b709-be5a19562cee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1875000   0.1150575   0.2599425
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1512605   0.0867446   0.2157764
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                0.1485714   0.0957370   0.2014058
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                0.3333333   0.0941438   0.5725228
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1200000   0.0678944   0.1721056
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.1037736   0.0456038   0.1619434
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0577972   0.0426879   0.0729065
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0516529   0.0319281   0.0713776
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3790768   0.3628748   0.3952788
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3001457   0.2917133   0.3085782
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3851351   0.2953625   0.4749077
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2907916   0.2512106   0.3303726
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2142857   0.1381315   0.2904399
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1544715   0.0904671   0.2184760
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1869159   0.1345715   0.2392603
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.2777778   0.0704135   0.4851421
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2692308   0.1994964   0.3389652
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1415929   0.0771930   0.2059928
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4350649   0.3566591   0.5134708
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5779817   0.5123328   0.6436305
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1700224   0.1351683   0.2048764
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1323529   0.0753510   0.1893549
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1497731   0.1305319   0.1690142
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1433447   0.1149651   0.1717244
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2676056   0.1947233   0.3404879
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1905941   0.1522592   0.2289289
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3226366   0.3056195   0.3396537
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2320200   0.2230149   0.2410250
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3149946   0.2808100   0.3491792
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2376951   0.2213000   0.2540901
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4536082   0.3542975   0.5529190
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4732143   0.3805257   0.5659029
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4057971   0.3387537   0.4728406
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2160804   0.1587713   0.2733895
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2142857   0.0619658   0.3666056
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3859649   0.2963737   0.4755562
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3214286   0.2213023   0.4215548
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3210162   0.2770039   0.3650285
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3541667   0.2759845   0.4323488
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3587174   0.3289510   0.3884839
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2873786   0.2482815   0.3264758
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4916667   0.4021261   0.5812073
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4388889   0.3875731   0.4902047
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5045576   0.4794392   0.5296761
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4868953   0.4724405   0.5013501
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4395480   0.4000622   0.4790338
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3882639   0.3685856   0.4079422


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                0.1132813   0.0743812   0.1521813
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3585859   0.2916158   0.4255559
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3344349   0.3106543   0.3582155
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8067227   0.4537220   1.4343618
Birth       ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA        1                    0                 2.2435897   1.0072492   4.9974675
Birth       ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU         1                    0                 0.8647799   0.4255681   1.7572845
Birth       ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       1                    0                 0.8936925   0.5626071   1.4196164
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7917809   0.7529206   0.8326468
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7550378   0.5777689   0.9866959
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7208672   0.4176229   1.2443033
6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.4861111   0.6695514   3.2985161
6 months    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU         1                    0                 0.5259166   0.3116053   0.8876235
6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     1                    0                 1.3284951   1.0736062   1.6438983
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7784443   0.4831451   1.2542308
6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       1                    0                 0.9570793   0.7558748   1.2118420
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7122199   0.5076630   0.9992007
6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       1                    0                 1.0172872   0.6688622   1.5472145
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7191372   0.6750464   0.7661076
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7546005   0.6647947   0.8565379
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0432224   0.7776720   1.3994498
24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.4495798   0.9415618   2.2316981
24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.9916944   0.4643883   2.1177486
24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.8327922   0.5647061   1.2281483
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1032674   0.8507945   1.4306615
24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8011282   0.6831156   0.9395282
24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8926554   0.7189426   1.1083411
24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0333333   0.7106383   1.5025615
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9649944   0.9136673   1.0192049
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8833253   0.8015108   0.9734911


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0186688   -0.0686965    0.0313589
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0145865   -0.0060153    0.0351882
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0067187   -0.0390695    0.0256320
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0021226   -0.0107077    0.0064624
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0624433   -0.0767083   -0.0481783
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0761390   -0.1547638    0.0024857
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0313070   -0.0835151    0.0209011
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0070496   -0.0098371    0.0239364
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0536174   -0.0941988   -0.0130359
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0837523    0.0233987    0.1441058
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0087874   -0.0244270    0.0068522
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0019743   -0.0125058    0.0085571
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0569829   -0.1179813    0.0040154
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0010621   -0.0250685    0.0271927
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0718273   -0.0866795   -0.0569752
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0604748   -0.0898774   -0.0310721
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0105066   -0.0623027    0.0833159
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0138458   -0.0057185    0.0334100
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0002214   -0.0202957    0.0198530
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0273791   -0.0845528    0.0297947
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0082733   -0.0141483    0.0306948
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0242825   -0.0410951   -0.0074699
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0395833   -0.1170125    0.0378459
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029015   -0.0305815    0.0363845
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0138061   -0.0352066    0.0075945
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0404105   -0.0734510   -0.0073700


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1105769   -0.4489721    0.1487889
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0894009   -0.0435793    0.2054358
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0593103   -0.3863958    0.1906075
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0381260   -0.2041448    0.1050033
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1972100   -0.2433536   -0.1527789
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2464078   -0.5274925   -0.0170475
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1710963   -0.4918946    0.0807215
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0363448   -0.0544615    0.1193312
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.2486737   -0.4486711   -0.0762872
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.1614292    0.0356493    0.2708037
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0545005   -0.1557574    0.0378853
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0133582   -0.0871685    0.0554409
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2705450   -0.5944671   -0.0124289
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029782   -0.0730552    0.0736242
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2863824   -0.3476596   -0.2278913
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2376033   -0.3582622   -0.1276630
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0226379   -0.1475602    0.1675934
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0329941   -0.0148853    0.0786148
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0010255   -0.0984795    0.0877826
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0763529   -0.2483603    0.0719542
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0251246   -0.0453975    0.0908893
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0726077   -0.1240977   -0.0234762
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0875576   -0.2732548    0.0710567
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0059607   -0.0652660    0.0724250
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0281325   -0.0726850    0.0145696
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1012446   -0.1868441   -0.0218188
