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

agecat      studyid                    country                        exclfeed3    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       55     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      144     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       29     240
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      103     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       15     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       63     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        4     185
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       62     196
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       11     196
Birth       ki0047075b-MAL-ED          INDIA                          1                  0      103     196
Birth       ki0047075b-MAL-ED          INDIA                          1                  1       20     196
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       95     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       15     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       58     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        3     171
Birth       ki0047075b-MAL-ED          PERU                           0                  0      186     272
Birth       ki0047075b-MAL-ED          PERU                           0                  1       19     272
Birth       ki0047075b-MAL-ED          PERU                           1                  0       54     272
Birth       ki0047075b-MAL-ED          PERU                           1                  1       13     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      180     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       29     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        3     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       66     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       14     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       35     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       ki1000108-IRC              INDIA                          0                  0       10      10
Birth       ki1000108-IRC              INDIA                          0                  1        0      10
Birth       ki1000108-IRC              INDIA                          1                  0        0      10
Birth       ki1000108-IRC              INDIA                          1                  1        0      10
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                  0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  1        2       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1101329-Keneba           GAMBIA                         0                  0      149    1354
Birth       ki1101329-Keneba           GAMBIA                         0                  1        9    1354
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1129    1354
Birth       ki1101329-Keneba           GAMBIA                         1                  1       67    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2284   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1488   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    23326   37420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1    10322   37420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        4      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        2      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       48      80
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       26      80
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       52     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       13     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      141     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       31     237
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      124     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       79     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       74     233
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     233
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      115     233
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       26     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      142     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       80     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5     233
6 months    ki0047075b-MAL-ED          PERU                           0                  0      157     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1       46     270
6 months    ki0047075b-MAL-ED          PERU                           1                  0       54     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1       13     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      171     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       46     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        3     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      130     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       42     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       53     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       15     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
6 months    ki1000108-IRC              INDIA                          0                  0        8      10
6 months    ki1000108-IRC              INDIA                          0                  1        2      10
6 months    ki1000108-IRC              INDIA                          1                  0        0      10
6 months    ki1000108-IRC              INDIA                          1                  1        0      10
6 months    ki1000109-EE               PAKISTAN                       0                  0       24     742
6 months    ki1000109-EE               PAKISTAN                       0                  1       26     742
6 months    ki1000109-EE               PAKISTAN                       1                  0      332     742
6 months    ki1000109-EE               PAKISTAN                       1                  1      360     742
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      139     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       32     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      350     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       62     583
6 months    ki1101329-Keneba           GAMBIA                         0                  0      166    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  1       35    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1317    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  1      224    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      118     916
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       40     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      610     916
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1      148     916
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2006   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      972   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    22450   32562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     7134   32562
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      130     178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       24     178
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       33     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       25     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       79     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       71     208
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0       94     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       69     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       65     225
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       27     225
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       66     225
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       67     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      111     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       32     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       66     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       16     225
24 months   ki0047075b-MAL-ED          PERU                           0                  0       99     199
24 months   ki0047075b-MAL-ED          PERU                           0                  1       54     199
24 months   ki0047075b-MAL-ED          PERU                           1                  0       27     199
24 months   ki0047075b-MAL-ED          PERU                           1                  1       19     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      130     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       75     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       21     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       43     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      110     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       17     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       40     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      10
24 months   ki1000108-IRC              INDIA                          0                  0        4      10
24 months   ki1000108-IRC              INDIA                          0                  1        6      10
24 months   ki1000108-IRC              INDIA                          1                  0        0      10
24 months   ki1000108-IRC              INDIA                          1                  1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      122     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       48     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      265     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1      142     577
24 months   ki1101329-Keneba           GAMBIA                         0                  0       81    1420
24 months   ki1101329-Keneba           GAMBIA                         0                  1       65    1420
24 months   ki1101329-Keneba           GAMBIA                         1                  0      859    1420
24 months   ki1101329-Keneba           GAMBIA                         1                  1      415    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       72     808
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       64     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      376     808
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      296     808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      836   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      812   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7664   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     7370   16682
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       12     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       18     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      170     304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      104     304


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4b1fe0e7-2141-44c8-9b74-98bbcdcd77e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b1fe0e7-2141-44c8-9b74-98bbcdcd77e5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b1fe0e7-2141-44c8-9b74-98bbcdcd77e5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b1fe0e7-2141-44c8-9b74-98bbcdcd77e5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1457785   0.0670883   0.2244687
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1604201   0.1061875   0.2146528
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1586973   0.0804048   0.2369898
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1583361   0.0942589   0.2224134
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.0928880   0.0531528   0.1326233
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1928664   0.0980203   0.2877125
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                0.0560201   0.0429825   0.0690576
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3155926   0.3080231   0.3231622
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3156005   0.3080301   0.3231709
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2443361   0.1598452   0.3288269
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1827351   0.1265921   0.2388780
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2239956   0.1465725   0.3014186
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1919214   0.1289925   0.2548503
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0405405   0.0086979   0.0723832
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0588235   0.0086951   0.1089519
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2262556   0.1686645   0.2838467
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1949002   0.1016196   0.2881809
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2459961   0.1822474   0.3097448
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2161308   0.1172615   0.3150000
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.6631028   0.5336678   0.7925377
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5230512   0.4705916   0.5755108
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2935337   0.2403279   0.3467396
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1603824   0.1269034   0.1938614
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1715731   0.1239166   0.2192295
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1446998   0.1271649   0.1622346
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2535332   0.1576771   0.3493893
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1951870   0.1552525   0.2351215
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2710966   0.2531141   0.2890792
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2461051   0.2376964   0.2545139
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.4321132   0.1908889   0.6733375
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1496157   0.0714682   0.2277633
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4173584   0.3077395   0.5269773
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4669672   0.3893597   0.5445747
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.3781751   0.2913950   0.4649551
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5306021   0.4489196   0.6122846
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2181501   0.1516511   0.2846491
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2089836   0.1269067   0.2910605
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.3525082   0.2766893   0.4283272
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4149985   0.2825635   0.5474334
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3658537   0.2997755   0.4319318
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2222222   0.0650681   0.3793763
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7198314   0.6489582   0.7907046
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6994057   0.5830180   0.8157935
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2257737   0.1725377   0.2790097
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3267808   0.2833156   0.3702460
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.4187197   0.3457409   0.4916985
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.3269201   0.3013203   0.3525200
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4670453   0.3496901   0.5844004
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4411903   0.3881167   0.4942640
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4579454   0.4302092   0.4856817
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4921877   0.4783096   0.5060658
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.5909576   0.3435117   0.8384035
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3808735   0.2950078   0.4667392


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1708333   0.1231182   0.2185485
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1581633   0.1069482   0.2093783
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1176471   0.0792874   0.1560068
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                0.0561300   0.0438654   0.0683946
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3156066   0.3080361   0.3231771
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1856540   0.1360464   0.2352617
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0472103   0.0199192   0.0745014
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2185185   0.1691358   0.2679013
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2375000   0.1835488   0.2914512
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.5202156   0.4693105   0.5711208
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1486797   0.1319680   0.1653914
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2052402   0.1682114   0.2422689
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2489405   0.2407278   0.2571531
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1910112   0.1139350   0.2680874
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4615385   0.3936268   0.5294501
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4177778   0.3531914   0.4823642
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3668342   0.2997053   0.4339630
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3491379   0.2876648   0.4106110
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7142857   0.6530398   0.7755316
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3380282   0.3134158   0.3626405
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4455446   0.3970186   0.4940706
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4904688   0.4770397   0.5038978
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4013158   0.3195309   0.4831007


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1004378   0.5831271   2.0766711
Birth       ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          1                    0                 0.9977242   0.5321166   1.8707434
Birth       ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           1                    0                 2.0763328   1.0827230   3.9817735
Birth       ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA                         1                    0                 0.9834634   0.5002360   1.9334878
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.0000249   0.9999822   1.0000676
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.7478842   0.4741625   1.1796183
6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.8568088   0.5335209   1.3759937
6 months    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.4509804   0.4553431   4.6236432
6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           1                    0                 0.8614162   0.5024297   1.4768991
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8785945   0.5209331   1.4818185
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 0.7887935   0.6334192   0.9822803
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.5463850   0.4228143   0.7060702
6 months    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA                         1                    0                 0.8433711   0.6244879   1.1389730
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7698677   0.5010049   1.1830148
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9078133   0.8474397   0.9724881
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.3462420   0.1624801   0.7378349
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1188638   0.8327662   1.5032505
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.4030595   1.0741190   1.8327353
24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 0.9579809   0.5825123   1.5754643
24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.1772731   0.8073106   1.7167766
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.6074074   0.2927464   1.2602845
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9716244   0.8025814   1.1762719
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 1.4473820   1.1186427   1.8727291
24 months   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA                         1                    0                 0.7807613   0.6467393   0.9425563
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9446415   0.7156267   1.2469456
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.0747737   1.0091612   1.1446520
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.6445022   0.4031347   1.0303828


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0250549   -0.0420170    0.0921267
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0005340   -0.0629595    0.0618915
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.0247590   -0.0010744    0.0505925
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -0.0008320   -0.0347789    0.0331148
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000140    0.0000021    0.0000259
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0586821   -0.1297339    0.0123698
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0351544   -0.0947745    0.0244658
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0066698   -0.0150246    0.0283641
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0077371   -0.0348046    0.0193304
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0084961   -0.0416494    0.0246572
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.1428872   -0.2705829   -0.0151914
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1322987   -0.1737793   -0.0908181
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0228934   -0.0672021    0.0214153
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0482930   -0.1341951    0.0376090
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0221562   -0.0386875   -0.0056248
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2411020   -0.4648855   -0.0173185
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0441800   -0.0468125    0.1351726
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0396027   -0.0276567    0.1068621
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0048168   -0.0442516    0.0346181
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0143259   -0.0205604    0.0492123
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0167157   -0.0374262    0.0039947
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0055457   -0.0421435    0.0310522
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.1035157    0.0583007    0.1487308
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0806915   -0.1489898   -0.0123932
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0215007   -0.1282763    0.0852749
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0325233    0.0066717    0.0583749
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1896418   -0.4259350    0.0466515


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1466626   -0.3493468    0.4603428
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0033764   -0.4870599    0.3229835
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.2104519   -0.0310929    0.3954122
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -0.0148235   -0.8416510    0.4407916
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000443    0.0000066    0.0000820
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.3160829   -0.7784262    0.0260634
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1861583   -0.5539831    0.0946030
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1412776   -0.4550333    0.4932047
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0354070   -0.1667895    0.0811816
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0357729   -0.1853398    0.0949215
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.2746691   -0.5524546   -0.0465886
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8205335   -1.1315315   -0.5549113
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.1539779   -0.4942296    0.1087949
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2353001   -0.7324028    0.1191619
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0890018   -0.1577431   -0.0243421
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2622399   -2.9271867   -0.3031541
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0957234   -0.1239538    0.2724646
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0947937   -0.0798490    0.2411917
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0225786   -0.2253132    0.1466125
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0390529   -0.0612517    0.1298771
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0478771   -0.1089858    0.0098642
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0077640   -0.0603409    0.0422059
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.3143609    0.1651950    0.4368733
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.2387125   -0.4587156   -0.0518902
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0482572   -0.3175782    0.1660130
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0663107    0.0122734    0.1173917
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.4725500   -1.2129163    0.0201150
