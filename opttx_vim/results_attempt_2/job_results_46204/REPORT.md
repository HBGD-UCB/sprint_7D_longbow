---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            131   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   133
Birth       ki0047075b-MAL-ED          BRAZIL                         1             12    84
Birth       ki0047075b-MAL-ED          BRAZIL                         0             72    84
Birth       ki0047075b-MAL-ED          INDIA                          1              2     7
Birth       ki0047075b-MAL-ED          INDIA                          0              5     7
Birth       ki0047075b-MAL-ED          NEPAL                          1             50    62
Birth       ki0047075b-MAL-ED          NEPAL                          0             12    62
Birth       ki0047075b-MAL-ED          PERU                           1             36    45
Birth       ki0047075b-MAL-ED          PERU                           0              9    45
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    20
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             26    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    26
Birth       ki1000108-IRC              INDIA                          1            120   120
Birth       ki1000108-IRC              INDIA                          0              0   120
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             14    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             13    27
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            570   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            563   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d88ee766-5550-4c00-a629-9669fa1f47d4/5411ae8b-9eaf-4e1c-8ee8-abe1b4a42891/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.6422160   -0.8869831   -0.3974489
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.5584803   -0.8332939   -0.2836667
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -1.0238868   -1.4466475   -0.6011261
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3851254   -2.0544098   -0.7158410
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.1985047   -0.0181583    0.4151678
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4850067   -0.7057167   -0.2642968
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.7540875   -2.1749497   -1.3332253
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.9530516   -2.6686914   -1.2374118
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1614453   -1.4306822   -0.8922085
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.0627034   -1.1625256   -0.9628812
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.2296860    0.0148711    0.4445010
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1684586   -1.4047869   -0.9321304
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.7963108   -2.0723283   -1.5202932
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.4587455   -3.8071158   -3.1103753
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.7649334   -2.1004178   -1.4294491
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3965758   -1.5166364   -1.2765152


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         observed             observed          -0.7136905   -0.9354323   -0.4919487
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.6070968   -0.8602389   -0.3539547
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9480000   -1.2000951   -0.6959049
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
6 months    ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.1586084   -0.0412881    0.3585049
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5388554   -0.7304990   -0.3472118
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.4338776   -1.6970254   -1.1707297
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.1231553   -0.0799188    0.3262295
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2331325   -1.4472780   -1.0189870
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.9016327   -2.1455122   -1.6577531
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.8155814   -3.1234373   -2.5077255
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.0714745   -0.1663862    0.0234372
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0486165   -0.1908630    0.0936301
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0758868   -0.3292864    0.4810601
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.2751254   -0.2154177    0.7656686
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.0398963   -0.1141647    0.0343721
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0538487   -0.1396852    0.0319879
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.3202099   -0.0799159    0.7203358
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4061071   -0.2627155    1.0749297
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0743413   -0.1790563    0.3277389
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1359749   -0.2147827   -0.0571672
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.1065307   -0.1895841   -0.0234773
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0646739   -0.1636683    0.0343205
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1053219   -0.2306473    0.0200036
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6431642    0.2433624    1.0429659
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.1788156   -0.1423427    0.4999739
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0329573   -0.1185143    0.0525998
