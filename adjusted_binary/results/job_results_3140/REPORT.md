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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       16     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      180     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       36     234
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0      155     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1       17     174
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        9     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        1     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      152     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       29     191
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       91     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        7     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       56     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1       10     164
Birth       ki0047075b-MAL-ED          PERU                           0                 0      182     259
Birth       ki0047075b-MAL-ED          PERU                           0                 1       21     259
Birth       ki0047075b-MAL-ED          PERU                           1                 0       46     259
Birth       ki0047075b-MAL-ED          PERU                           1                 1       10     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      176     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       21     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       94     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       15     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        7     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       58      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13      71
Birth       ki1000108-IRC              INDIA                          0                 0        0     287
Birth       ki1000108-IRC              INDIA                          0                 1        0     287
Birth       ki1000108-IRC              INDIA                          1                 0      255     287
Birth       ki1000108-IRC              INDIA                          1                 1       32     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        3      27
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    24858   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1    12116   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1616   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      536   39126
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1058    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1      444    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       92    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       50    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      178     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1       43     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      201     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        6     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       11     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      179     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       41     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      121     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229
6 months    ki0047075b-MAL-ED          PERU                           0                 0      172     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1       40     270
6 months    ki0047075b-MAL-ED          PERU                           1                 0       38     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1       20     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       16     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      184     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       45     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      175     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       56     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      170     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       87     257
6 months    ki1000108-IRC              INDIA                          0                 0        0     303
6 months    ki1000108-IRC              INDIA                          0                 1        0     303
6 months    ki1000108-IRC              INDIA                          1                 0      235     303
6 months    ki1000108-IRC              INDIA                          1                 1       68     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       31     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       27     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      361     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1      116     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       15     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      460     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       79     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       36     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      423     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      114     715
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      570     882
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1      156     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      136     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       20     882
6 months    ki1114097-CONTENT          PERU                           0                 0       12     215
6 months    ki1114097-CONTENT          PERU                           0                 1        2     215
6 months    ki1114097-CONTENT          PERU                           1                 0      184     215
6 months    ki1114097-CONTENT          PERU                           1                 1       17     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    22549   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1     8030   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2528   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      394   33501
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     6089    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     2193    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      967    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      191    9440
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      106     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       89     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      124     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       88     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       91     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       32     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       82     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       16     221
24 months   ki0047075b-MAL-ED          PERU                           0                 0       95     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1       57     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       32     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1       17     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      142     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       78     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       58     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1      142     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        3     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       80     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      180     260
24 months   ki1000108-IRC              INDIA                          0                 0        0     305
24 months   ki1000108-IRC              INDIA                          0                 1        0     305
24 months   ki1000108-IRC              INDIA                          1                 0      190     305
24 months   ki1000108-IRC              INDIA                          1                 1      115     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       12     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       38     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      177     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      200     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       23     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      364     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      168     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       46     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       86     514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      352     770
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      274     770
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       96     770
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       48     770
24 months   ki1114097-CONTENT          PERU                           0                 0        7     164
24 months   ki1114097-CONTENT          PERU                           0                 1        3     164
24 months   ki1114097-CONTENT          PERU                           1                 0      136     164
24 months   ki1114097-CONTENT          PERU                           1                 1       18     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     7789   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     8047   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      962   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      382   17180
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4798    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     3360    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      827    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      284    9269


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a26e5c04-b136-4f3d-bfbf-0cb44a30577c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a26e5c04-b136-4f3d-bfbf-0cb44a30577c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a26e5c04-b136-4f3d-bfbf-0cb44a30577c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a26e5c04-b136-4f3d-bfbf-0cb44a30577c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                0.0714286   0.0202831   0.1225740
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                0.1515152   0.0647482   0.2382821
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.1067175   0.0635630   0.1498721
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.1657687   0.0701700   0.2613674
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3240892   0.3163017   0.3318767
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2716265   0.2448951   0.2983580
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2923347   0.2558290   0.3288404
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2034117   0.1300179   0.2768055
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1743596   0.1246916   0.2240276
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.2067650   0.1275357   0.2859943
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.2947723   0.2209504   0.3685941
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2433005   0.2053747   0.2812263
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3109072   0.1742749   0.4475395
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1479953   0.1181350   0.1778556
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2539405   0.1997802   0.3081008
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2177403   0.1836409   0.2518396
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2161912   0.1746280   0.2577545
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1700787   0.1077267   0.2324308
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2562319   0.2479679   0.2644960
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1614455   0.1430591   0.1798319
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2629800   0.2476327   0.2783273
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1677120   0.1268581   0.2085659
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4564103   0.3863340   0.5264865
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.4666667   0.2136414   0.7196920
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4150943   0.3486198   0.4815689
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2610689   0.1843273   0.3378106
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1614333   0.0886417   0.2342249
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3697044   0.2936430   0.4457657
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.3623377   0.2426648   0.4820105
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7337491   0.6351222   0.8323760
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5357814   0.4856481   0.5859147
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.5384944   0.4203847   0.6566040
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3164776   0.2769838   0.3559713
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2924709   0.2352007   0.3497411
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2490881   0.2056750   0.2925012
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4302528   0.3769153   0.4835902
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.2846110   0.2114543   0.3577676
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.4992285   0.4860276   0.5124295
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.3911641   0.3530976   0.4292306
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4085996   0.3908552   0.4263440
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3118929   0.2545068   0.3692789


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1036585   0.0568642   0.1504529
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                0.1196911   0.0800828   0.1592995
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3233655   0.3156750   0.3310561
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1995465   0.1622033   0.2368897
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514552   0.2433078   0.2596026
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2525424   0.2384154   0.2666693
24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2171946   0.1627082   0.2716810
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5573770   0.5102104   0.6045437
24 months   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4181818   0.3688464   0.4675172
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4906286   0.4775270   0.5037303
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3931384   0.3759466   0.4103302


### Parameter: RR


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL          1                    0                 2.1212121   0.8479942   5.3060989
Birth       ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU           1                    0                 1.5533406   0.7686075   3.1392705
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.8381228   0.7581619   0.9265170
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6958179   0.4753702   1.0184957
6 months    ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          1                    0                 1.4679612   0.4599809   4.6847810
6 months    ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           1                    0                 1.1858539   0.7358409   1.9110781
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.8253845   0.6169469   1.1042435
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.4760111   0.2940217   0.7706457
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.8574461   0.6595037   1.1147985
6 months    ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          1                    0                 0.7867050   0.5201961   1.1897530
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.6300757   0.5608949   0.7077893
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6377367   0.4962203   0.8196119
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    0                 0.8621083   0.5362669   1.3859341
24 months   ki0047075b-MAL-ED       INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          1                    0                 0.8894879   0.5053713   1.5655592
24 months   ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          1                    0                 0.6183552   0.3611453   1.0587516
24 months   ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           1                    0                 0.9800740   0.6698022   1.4340728
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 1.0636364   0.5395896   2.0966346
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.7301970   0.6225670   0.8564341
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.5877082   0.4566529   0.7563753
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.8516680   0.6599552   1.0990722
24 months   ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          1                    0                 0.6614970   0.4973093   0.8798917
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.7835370   0.7092061   0.8656585
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.7633216   0.6333475   0.9199686


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0322300   -0.0087493    0.0732093
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.0129736   -0.0117228    0.0376700
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0007236   -0.0024768    0.0010295
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0081519   -0.0042212    0.0205251
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0083524   -0.0172062    0.0339110
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.0478626    0.0189178    0.0768075
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.0274826   -0.0965660    0.0416009
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1496722   -0.2786955   -0.0206488
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0441503   -0.0910338    0.0027332
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0166447   -0.0320313   -0.0012582
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0047767   -0.0065642   -0.0029893
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0104377   -0.0156304   -0.0052449
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.0671476   -0.2952210    0.1609257
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -0.0481645   -0.2924947    0.1961658
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0438743   -0.0910816    0.0033329
24 months   ki0047075b-MAL-ED       PERU           0                    NA                -0.0015452   -0.0366446    0.0335542
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                 0.0196078   -0.1904476    0.2296633
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1763721   -0.2715313   -0.0812128
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.2092049   -0.3230458   -0.0953641
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0356615   -0.0815228    0.0101997
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0120710   -0.0343183    0.0101763
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0085999   -0.0117644   -0.0054354
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0154612   -0.0214948   -0.0094276


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.3109244   -0.1853733    0.5994298
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.1083921   -0.1203708    0.2904451
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0022378   -0.0076774    0.0031724
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0271291   -0.0147363    0.0672672
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.1738817   -0.5565077    0.5615367
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.2153818    0.0798776    0.3309307
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1028194   -0.3971502    0.1295062
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.9282859   -1.9099459   -0.2777855
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.2104497   -0.4602892   -0.0033550
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0834129   -0.1636231   -0.0087317
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0189964   -0.0261834   -0.0118597
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0413303   -0.0620844   -0.0209818
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.1452581   -0.7626498    0.2558839
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -0.1150877   -0.8825801    0.3395125
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.2020048   -0.4391546   -0.0039335
24 months   ki0047075b-MAL-ED       PERU           0                    NA                -0.0041971   -0.1041951    0.0867450
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                 0.0555556   -0.7735984    0.4970816
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.3164322   -0.5062616   -0.1505264
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.6353224   -1.0349541   -0.3141718
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.1388639   -0.3352986    0.0286734
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0288654   -0.0837164    0.0232095
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0175283   -0.0240577   -0.0110407
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0393276   -0.0550285   -0.0238603
