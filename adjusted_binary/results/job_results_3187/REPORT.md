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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0       64     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        3     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      169     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     240
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      112     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       65     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2     185
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       71     196
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2     196
Birth       ki0047075b-MAL-ED          INDIA                          1                   0      118     196
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        5     196
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      106     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       59     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2     171
Birth       ki0047075b-MAL-ED          PERU                           0                   0      203     272
Birth       ki0047075b-MAL-ED          PERU                           0                   1        2     272
Birth       ki0047075b-MAL-ED          PERU                           1                   0       63     272
Birth       ki0047075b-MAL-ED          PERU                           1                   1        4     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      200     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       76     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       37     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       4
Birth       ki1000108-IRC              INDIA                          0                   0       10      10
Birth       ki1000108-IRC              INDIA                          0                   1        0      10
Birth       ki1000108-IRC              INDIA                          1                   0        0      10
Birth       ki1000108-IRC              INDIA                          1                   1        0      10
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        4       4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0       47      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1        1      50
Birth       ki1101329-Keneba           GAMBIA                         0                   0      156    1354
Birth       ki1101329-Keneba           GAMBIA                         0                   1        2    1354
Birth       ki1101329-Keneba           GAMBIA                         1                   0     1169    1354
Birth       ki1101329-Keneba           GAMBIA                         1                   1       27    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3212   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      560   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    30616   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3032   37420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0        6      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0       66      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1        8      80
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       60     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      169     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     237
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      128     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0       88     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        4     233
6 months    ki0047075b-MAL-ED          INDIA                          1                   0      136     233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        5     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      148     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       84     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     233
6 months    ki0047075b-MAL-ED          PERU                           0                   0      196     270
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     270
6 months    ki0047075b-MAL-ED          PERU                           1                   0       63     270
6 months    ki0047075b-MAL-ED          PERU                           1                   1        4     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      211     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      163     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       63     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        5     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      10
6 months    ki1000108-IRC              INDIA                          0                   0        9      10
6 months    ki1000108-IRC              INDIA                          0                   1        1      10
6 months    ki1000108-IRC              INDIA                          1                   0        0      10
6 months    ki1000108-IRC              INDIA                          1                   1        0      10
6 months    ki1000109-EE               PAKISTAN                       0                   0       40     742
6 months    ki1000109-EE               PAKISTAN                       0                   1       10     742
6 months    ki1000109-EE               PAKISTAN                       1                   0      514     742
6 months    ki1000109-EE               PAKISTAN                       1                   1      178     742
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      163     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        8     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      406     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        6     583
6 months    ki1101329-Keneba           GAMBIA                         0                   0      191    1742
6 months    ki1101329-Keneba           GAMBIA                         0                   1       10    1742
6 months    ki1101329-Keneba           GAMBIA                         1                   0     1495    1742
6 months    ki1101329-Keneba           GAMBIA                         1                   1       46    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      148     916
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       10     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      738     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       20     916
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2594   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      384   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    28056   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1528   32562
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0       22     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1        2     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      154     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0     178
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       53     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      130     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       20     208
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0       98     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       70     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0       86     225
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        6     225
24 months   ki0047075b-MAL-ED          INDIA                          1                   0      111     225
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       22     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      140     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        3     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       79     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3     225
24 months   ki0047075b-MAL-ED          PERU                           0                   0      144     199
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     199
24 months   ki0047075b-MAL-ED          PERU                           1                   0       41     199
24 months   ki0047075b-MAL-ED          PERU                           1                   1        5     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      181     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       26     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      103     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       50     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       38     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       19     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      10
24 months   ki1000108-IRC              INDIA                          0                   0       10      10
24 months   ki1000108-IRC              INDIA                          0                   1        0      10
24 months   ki1000108-IRC              INDIA                          1                   0        0      10
24 months   ki1000108-IRC              INDIA                          1                   1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      154     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      374     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       33     577
24 months   ki1101329-Keneba           GAMBIA                         0                   0      129    1420
24 months   ki1101329-Keneba           GAMBIA                         0                   1       17    1420
24 months   ki1101329-Keneba           GAMBIA                         1                   0     1173    1420
24 months   ki1101329-Keneba           GAMBIA                         1                   1      101    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      120     808
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       16     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      604     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       68     808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1350   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      298   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    12752   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2282   16682
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0       28     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1        2     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      264     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       10     304


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/045b00e5-ada6-4b15-adbf-b9be94a53747/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/045b00e5-ada6-4b15-adbf-b9be94a53747/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/045b00e5-ada6-4b15-adbf-b9be94a53747/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/045b00e5-ada6-4b15-adbf-b9be94a53747/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0959551   0.0913802   0.1005300
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0959816   0.0914067   0.1005566
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0523256   0.0189770   0.0856741
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0735294   0.0113643   0.1356945
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.1826140   0.0578357   0.3073923
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.2574455   0.2113916   0.3034995
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0467836   0.0151051   0.0784622
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0145631   0.0029856   0.0261406
6 months    ki1101329-Keneba      GAMBIA                         0                    NA                0.0405366   0.0125699   0.0685032
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                0.0297835   0.0212945   0.0382725
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0644759   0.0118728   0.1170790
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0263468   0.0102134   0.0424801
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0947099   0.0828459   0.1065739
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0540610   0.0504525   0.0576694
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.0862069   0.0138007   0.1586131
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1333333   0.0788022   0.1878644
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.0652174   0.0146514   0.1157834
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1654135   0.1021271   0.2287000
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.0588235   0.0214463   0.0962008
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1086957   0.0185215   0.1988698
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3193743   0.2471848   0.3915638
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2902454   0.1860729   0.3944178
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0941437   0.0502252   0.1380621
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0810784   0.0545390   0.1076178
24 months   ki1101329-Keneba      GAMBIA                         0                    NA                0.1176083   0.0678144   0.1674022
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                0.0803666   0.0654367   0.0952965
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0869700   0.0129398   0.1610002
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1001573   0.0678926   0.1324219
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1533864   0.1330518   0.1737210
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1540595   0.1450580   0.1630610


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0959914   0.0914158   0.1005671
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0583333   0.0286197   0.0880470
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.2533693   0.2090516   0.2976870
6 months    ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1101329-Keneba      GAMBIA                         NA                   NA                0.0321470   0.0238614   0.0404325
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0327511   0.0164329   0.0490693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0587188   0.0549206   0.0625169
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1201923   0.0758932   0.1644914
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1244444   0.0812176   0.1676713
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0703518   0.0347303   0.1059733
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3285714   0.2648934   0.3922495
24 months   ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba      GAMBIA                         NA                   NA                0.0830986   0.0687366   0.0974606
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1039604   0.0741620   0.1337588
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1546577   0.1455620   0.1637534


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0002767   1.0001265   1.0004268
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4052288   0.4874555   4.0509706
6 months    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       1                    0                 1.4097796   0.6958027   2.8563826
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    0                 0.3112864   0.1095564   0.8844686
6 months    ki1101329-Keneba      GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA                         1                    0                 0.7347324   0.3486920   1.5481620
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.4086293   0.1480750   1.1276578
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.5708059   0.5001710   0.6514160
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 1.5466667   0.6076890   3.9365166
24 months   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 2.5363409   1.0683538   6.0214368
24 months   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           1                    0                 1.8478261   0.6498761   5.2540189
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9087938   0.5985435   1.3798599
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    0                 0.8612201   0.4871043   1.5226719
24 months   ki1101329-Keneba      GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA                         1                    0                 0.6833410   0.4307671   1.0840080
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.1516303   0.4630227   2.8643350
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0043884   0.8818737   1.1439235


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0000364    0.0000239    0.0000489
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0060078   -0.0140167    0.0260322
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.0707553   -0.0517057    0.1932162
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                -0.0227699   -0.0466348    0.0010950
6 months    ki1101329-Keneba      GAMBIA                         0                    NA                -0.0083896   -0.0340511    0.0172719
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0317248   -0.0770381    0.0135885
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0359912   -0.0464960   -0.0254863
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0339854   -0.0314461    0.0994169
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0592271    0.0109105    0.1075436
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0115282   -0.0112250    0.0342815
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0091971   -0.0279569    0.0463512
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                -0.0092216   -0.0454176    0.0269743
24 months   ki1101329-Keneba      GAMBIA                         0                    NA                -0.0345097   -0.0810065    0.0119870
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0169904   -0.0503045    0.0842852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0012713   -0.0163578    0.0189005


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0003789    0.0002484    0.0005093
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1029900   -0.3099759    0.3857697
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.2792574   -0.4019229    0.6294590
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                -0.9482038   -2.0562755   -0.2418704
6 months    ki1101329-Keneba      GAMBIA                         0                    NA                -0.2609766   -1.3637914    0.3273256
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.9686648   -2.8496696   -0.0067464
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.6129416   -0.7981443   -0.4468142
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.2827586   -0.5149709    0.6604323
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.4759317   -0.0357988    0.7348446
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1638655   -0.2172044    0.4256340
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0279913   -0.0917839    0.1346264
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                -0.1085895   -0.6271991    0.2447324
24 months   ki1101329-Keneba      GAMBIA                         0                    NA                -0.4152866   -1.0995285    0.0459591
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.1634313   -0.8189096    0.6152381
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0082203   -0.1126119    0.1159298
