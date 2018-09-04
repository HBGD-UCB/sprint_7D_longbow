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

unadjusted

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
![](/tmp/e4a25317-069d-40ed-b6c6-5a66815a949a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e4a25317-069d-40ed-b6c6-5a66815a949a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e4a25317-069d-40ed-b6c6-5a66815a949a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e4a25317-069d-40ed-b6c6-5a66815a949a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1791045   0.0870988   0.2711101
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1676301   0.1118517   0.2234084
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1506849   0.0684102   0.2329597
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1626016   0.0972232   0.2279801
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.0926829   0.0529134   0.1324524
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1940299   0.0991652   0.2888945
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                0.0560201   0.0429825   0.0690576
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3944857   0.3695203   0.4194511
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3067641   0.2988731   0.3146552
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2000000   0.1025528   0.2974472
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1802326   0.1226668   0.2377983
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1956522   0.1144154   0.2768889
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1843972   0.1202483   0.2485460
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0405405   0.0086979   0.0723832
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0588235   0.0086951   0.1089519
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2266010   0.1689059   0.2842960
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1940299   0.0991639   0.2888958
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2441860   0.1798494   0.3085227
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2205882   0.1218296   0.3193468
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5200000   0.3238960   0.7161040
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5202312   0.4675191   0.5729433
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1871345   0.1286273   0.2456417
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1504854   0.1159309   0.1850400
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1741294   0.1216889   0.2265698
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1453602   0.1277572   0.1629631
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2531646   0.1571752   0.3491539
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1952507   0.1552995   0.2352018
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3263936   0.2994404   0.3533467
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2411439   0.2326233   0.2496644
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.4166667   0.1460475   0.6872858
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1558442   0.0767551   0.2349333
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4310345   0.3032790   0.5587900
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4733333   0.3932393   0.5534274
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2934783   0.2002233   0.3867333
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5037594   0.4185971   0.5889217
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2237762   0.1553145   0.2922379
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1951220   0.1091560   0.2810879
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.3529412   0.2770276   0.4288547
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4130435   0.2703960   0.5556909
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3658537   0.2997755   0.4319318
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2222222   0.0650681   0.3793763
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7189542   0.6475576   0.7903509
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7017544   0.5827051   0.8208037
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2823529   0.2146275   0.3500784
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3488943   0.3025496   0.3952391
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.4452055   0.3645617   0.5258493
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.3257457   0.3000022   0.3514892
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4705882   0.3518066   0.5893698
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4404762   0.3873282   0.4936242
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4927184   0.4534120   0.5320249
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4902222   0.4761802   0.5042641
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6000000   0.3502268   0.8497732
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3795620   0.2934360   0.4656880


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1708333   0.1231182   0.2185485
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1581633   0.1069482   0.2093783
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1176471   0.0792874   0.1560068
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                0.0561300   0.0438654   0.0683946
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3156066   0.3080361   0.3231771
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1856540   0.1360463   0.2352617
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
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1910112   0.1139351   0.2680874
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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9359345   0.5074989   1.7260596
Birth       ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          1                    0                 1.0790835   0.5477344   2.1258865
Birth       ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           1                    0                 2.0934800   1.0923374   4.0121838
Birth       ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA                         1                    0                 0.9834634   0.5002360   1.9334878
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.7776306   0.7264792   0.8323837
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9011628   0.5032534   1.6136888
6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.9424744   0.5483006   1.6200201
6 months    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.4509804   0.4553431   4.6236432
6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           1                    0                 0.8562622   0.4934045   1.4859713
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9033613   0.5373465   1.5186880
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 1.0004446   0.6770209   1.4783731
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.8041566   0.5455989   1.1852439
6 months    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA                         1                    0                 0.8347826   0.6033982   1.1548957
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7712401   0.5012746   1.1865977
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.7388132   0.6761161   0.8073243
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.3740260   0.1633044   0.8566541
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.0981333   0.7806079   1.5448176
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.7165135   1.1976555   2.4601553
24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 0.8719512   0.5099701   1.4908697
24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.1702899   0.7791063   1.7578838
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.6074074   0.2927464   1.2602845
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9760766   0.8018867   1.1881049
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 1.2356675   0.9393430   1.6254703
24 months   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA                         1                    0                 0.7316749   0.6004675   0.8915523
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9360119   0.7075867   1.2381781
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9949337   0.9153836   1.0813969
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.6326034   0.3951593   1.0127235


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0082711   -0.0858306    0.0692883
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0074783   -0.0584747    0.0734314
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.0249641   -0.0009015    0.0508297
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -0.0008320   -0.0347789    0.0331148
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0788791   -0.1024040   -0.0553541
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0143460   -0.0964930    0.0678010
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0068110   -0.0694545    0.0558326
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0066698   -0.0150246    0.0283641
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0080825   -0.0356863    0.0195213
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0066860   -0.0401087    0.0267366
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0002156   -0.1891656    0.1895969
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0258995   -0.0739377    0.0221387
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0254497   -0.0743850    0.0234857
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0479244   -0.1339852    0.0381365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0774531   -0.1028963   -0.0520098
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.2256554   -0.4758250    0.0245141
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0305040   -0.0782669    0.1392748
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1242995    0.0484306    0.2001685
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0104429   -0.0505346    0.0296488
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0138930   -0.0236257    0.0514117
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0167157   -0.0374262    0.0039947
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046685   -0.0423618    0.0330247
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0469365   -0.0110025    0.1048755
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.1071773   -0.1831501   -0.0312045
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0250437   -0.1332761    0.0831887
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0022497   -0.0392356    0.0347362
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1986842   -0.4379272    0.0405588


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0484165   -0.6164168    0.3199915
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0472824   -0.4755962    0.3848785
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.2121951   -0.0298709    0.3973647
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -0.0148235   -0.8416510    0.4407916
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.2499284   -0.3267664   -0.1775403
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0772727   -0.6240775    0.2854303
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0360672   -0.4269519    0.2477425
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1412776   -0.4550333    0.4932047
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0369876   -0.1711951    0.0818411
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0281518   -0.1789046    0.1033235
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0004145   -0.4387579    0.3055321
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1606321   -0.4992400    0.1015002
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.1711712   -0.5507663    0.1155070
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2335039   -0.7318254    0.1214288
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.3111309   -0.4176736   -0.2125952
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.1813726   -3.0281473   -0.1812841
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0660920   -0.2021363    0.2744714
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.2975254    0.0902289    0.4575883
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0489510   -0.2545598    0.1229607
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0378727   -0.0700683    0.1349254
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0478771   -0.1089858    0.0098642
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0065359   -0.0607269    0.0448865
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.1425387   -0.0526141    0.3015105
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.3170662   -0.5626196   -0.1100996
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0562091   -0.3294044    0.1608439
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0045868   -0.0828991    0.0680622
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.4950820   -1.2461071    0.0048248
