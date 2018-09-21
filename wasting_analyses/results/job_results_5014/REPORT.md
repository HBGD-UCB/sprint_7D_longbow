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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       54     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      135     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       29     227
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      108     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        4     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       63     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        2     177
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       57     193
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       15     193
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      103     193
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       18     193
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       91     166
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       15     166
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       55     166
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        5     166
Birth       ki0047075b-MAL-ED          PERU                           0                 0      195     265
Birth       ki0047075b-MAL-ED          PERU                           0                 1        6     265
Birth       ki0047075b-MAL-ED          PERU                           1                 0       64     265
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      185     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       32     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       74     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       4
Birth       ki1000108-IRC              INDIA                          0                 0        6       9
Birth       ki1000108-IRC              INDIA                          0                 1        3       9
Birth       ki1000108-IRC              INDIA                          1                 0        0       9
Birth       ki1000108-IRC              INDIA                          1                 1        0       9
Birth       ki1000109-EE               PAKISTAN                       0                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 0        2       2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       43      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1        2      47
Birth       ki1101329-Keneba           GAMBIA                         0                 0      148    1305
Birth       ki1101329-Keneba           GAMBIA                         0                 1        7    1305
Birth       ki1101329-Keneba           GAMBIA                         1                 0     1129    1305
Birth       ki1101329-Keneba           GAMBIA                         1                 1       21    1305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2506   30272
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      304   30272
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    24874   30272
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2588   30272
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        6      62
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0      62
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       56      62
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0      62
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       63     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      166     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        6     237
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      128     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       80     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       79     233
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       13     233
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      136     233
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        5     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      145     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        3     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       84     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     233
6 months    ki0047075b-MAL-ED          PERU                           0                 0      203     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED          PERU                           1                 0       67     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      211     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       30     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      171     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
6 months    ki1000108-IRC              INDIA                          0                 0        8      10
6 months    ki1000108-IRC              INDIA                          0                 1        2      10
6 months    ki1000108-IRC              INDIA                          1                 0        0      10
6 months    ki1000108-IRC              INDIA                          1                 1        0      10
6 months    ki1000109-EE               PAKISTAN                       0                 0       34     750
6 months    ki1000109-EE               PAKISTAN                       0                 1       18     750
6 months    ki1000109-EE               PAKISTAN                       1                 0      618     750
6 months    ki1000109-EE               PAKISTAN                       1                 1       80     750
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       13     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      401     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       11     582
6 months    ki1101329-Keneba           GAMBIA                         0                 0      177    1742
6 months    ki1101329-Keneba           GAMBIA                         0                 1       24    1742
6 months    ki1101329-Keneba           GAMBIA                         1                 0     1459    1742
6 months    ki1101329-Keneba           GAMBIA                         1                 1       82    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      144     916
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      684     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       74     916
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2658   32506
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      332   32506
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    27090   32506
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2426   32506
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0       24     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      148     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        6     178
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       54     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      135     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     208
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       97     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       69     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       79     225
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       13     225
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      119     225
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       14     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      139     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       81     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     225
24 months   ki0047075b-MAL-ED          PERU                           0                 0      151     199
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     199
24 months   ki0047075b-MAL-ED          PERU                           1                 0       45     199
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      204     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      149     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
24 months   ki1000108-IRC              INDIA                          0                 0       10      10
24 months   ki1000108-IRC              INDIA                          0                 1        0      10
24 months   ki1000108-IRC              INDIA                          1                 0        0      10
24 months   ki1000108-IRC              INDIA                          1                 1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      149     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      364     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       43     578
24 months   ki1101329-Keneba           GAMBIA                         0                 0      128    1421
24 months   ki1101329-Keneba           GAMBIA                         0                 1       19    1421
24 months   ki1101329-Keneba           GAMBIA                         1                 0     1146    1421
24 months   ki1101329-Keneba           GAMBIA                         1                 1      128    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118     808
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      540     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1      132     808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1272   16626
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      370   16626
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    11694   16626
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     3290   16626
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0       22     302
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1        8     302
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      228     302
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       44     302


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/3f38cd8e-16ba-4df2-876a-0efcc5f59e3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f38cd8e-16ba-4df2-876a-0efcc5f59e3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f38cd8e-16ba-4df2-876a-0efcc5f59e3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f38cd8e-16ba-4df2-876a-0efcc5f59e3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1428571   0.0562579   0.2294564
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1768293   0.1183089   0.2353496
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.2083333   0.1142830   0.3023837
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.1487603   0.0851902   0.2123304
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                0.1415094   0.0749564   0.2080624
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                0.0833333   0.0131879   0.1534788
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0451613   0.0124576   0.0778650
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0182609   0.0105194   0.0260024
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1081851   0.0899523   0.1264179
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0942393   0.0889244   0.0995542
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1413043   0.0699722   0.2126365
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0354610   0.0048690   0.0660530
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.3461538   0.1630432   0.5292645
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1146132   0.0811475   0.1480788
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0764706   0.0364881   0.1164531
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0266990   0.0111199   0.0422782
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1194030   0.0745624   0.1642435
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0532122   0.0420023   0.0644221
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0886076   0.0258744   0.1513408
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0976253   0.0677111   0.1275396
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1110368   0.0948820   0.1271915
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0821927   0.0770947   0.0872907
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1413043   0.0699667   0.2126420
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1052632   0.0529904   0.1575359
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1286550   0.0784283   0.1788816
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1056511   0.0757617   0.1355405
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1292517   0.0750008   0.1835026
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1004710   0.0839573   0.1169846
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1323529   0.0517093   0.2129966
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1964286   0.1538951   0.2389621
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2253350   0.1935046   0.2571653
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2195675   0.2087936   0.2303415
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2666667   0.0851884   0.4481449
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1617647   0.0961979   0.2273315


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1674009   0.1187276   0.2160742
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1709845   0.1177299   0.2242391
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1204819   0.0708125   0.1701514
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0214559   0.0135914   0.0293205
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955338   0.0902714   0.1007962
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1306667   0.0965090   0.1648243
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0608496   0.0496205   0.0720787
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0960699   0.0690520   0.1230877
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0848459   0.0799494   0.0897424
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1034483   0.0876083   0.1192882
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1856436   0.1476821   0.2236050
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2201371   0.2099559   0.2303184
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1721854   0.1107033   0.2336676


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.2378049   0.6204509   2.4694313
Birth       ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 0.7140496   0.3834969   1.3295201
Birth       ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     NEPAL        1                    0                 0.5888889   0.2245312   1.5445072
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.4043478   0.1747149   0.9357939
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8710936   0.7331844   1.0349432
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.2509547   0.0923637   0.6818509
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.3311047   0.1809487   0.6058643
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.3491412   0.1594910   0.7643034
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.4456522   0.2897291   0.6854880
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1017716   0.5093937   2.3830305
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7402295   0.6329769   0.8656551
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.7449393   0.3669230   1.5124005
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8211972   0.5070632   1.3299424
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.7773279   0.4952673   1.2200254
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.4841270   0.7773902   2.8333685
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9744051   0.8387363   1.1320190
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6066176   0.2741503   1.3422748


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0245437   -0.0509933    0.1000807
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.0373489   -0.1086356    0.0339378
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0210275   -0.0562363    0.0141813
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0237054   -0.0533249    0.0059142
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0126512   -0.0294167    0.0041142
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0640511   -0.1114896   -0.0166127
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.2154872   -0.3888274   -0.0421470
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0352335   -0.0656657   -0.0048013
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0585534   -0.0994528   -0.0176539
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0074623   -0.0500510    0.0649755
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0261909   -0.0414583   -0.0109235
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0213043   -0.0736332    0.0310245
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0161982   -0.0573630    0.0249665
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0258034   -0.0766476    0.0250408
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0532906   -0.0225725    0.1291537
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0051978   -0.0355602    0.0251646
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0944812   -0.2694561    0.0804936


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1466165   -0.4457968    0.4962893
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.2184343   -0.7116697    0.1326701
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.1745283   -0.4985637    0.0794407
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -1.1048387   -2.9509798   -0.1213284
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1324267   -0.3212801    0.0294335
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.8291063   -1.4462197   -0.3676735
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.6491366   -3.3474119   -0.6142765
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.8544118   -1.6629351   -0.2913732
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.9622641   -1.7390152   -0.4057901
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0776755   -0.7645088    0.5178927
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3086881   -0.5020657   -0.1402062
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.1775362   -0.7008402    0.1847608
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1440396   -0.5739721    0.1684563
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.2494331   -0.8500584    0.1561980
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.2870588   -0.2596402    0.5964839
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0236117   -0.1712906    0.1054475
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5487179   -2.0466898    0.2127432
