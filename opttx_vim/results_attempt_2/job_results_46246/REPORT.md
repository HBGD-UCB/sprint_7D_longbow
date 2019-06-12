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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            124   126
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   126
Birth       ki0047075b-MAL-ED          BRAZIL                         1             11    81
Birth       ki0047075b-MAL-ED          BRAZIL                         0             70    81
Birth       ki0047075b-MAL-ED          INDIA                          1              2     6
Birth       ki0047075b-MAL-ED          INDIA                          0              4     6
Birth       ki0047075b-MAL-ED          NEPAL                          1             49    61
Birth       ki0047075b-MAL-ED          NEPAL                          0             12    61
Birth       ki0047075b-MAL-ED          PERU                           1             36    45
Birth       ki0047075b-MAL-ED          PERU                           0              9    45
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    20
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25
Birth       ki1000108-IRC              INDIA                          1            105   105
Birth       ki1000108-IRC              INDIA                          0              0   105
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             12    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             11    23
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            569   582
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            564   578
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
![](/tmp/6a443ecd-c648-4c5d-80bd-64dc4d53607c/e942edb5-34b4-4774-9900-6030b90f7556/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed           1.1171033    0.4326699    1.8015366
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1131225   -1.4175974   -0.8086477
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0669583   -0.3191136    0.4530302
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.2307974   -0.7071981    0.2456032
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.9471853    0.6808234    1.2135472
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.3870774   -0.8113862    0.0372315
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0227864    0.6570313    1.3885416
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2441717    0.8383249    1.6500185
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.8199598    0.3110810    1.3288386
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0448859   -0.0657374    0.1555092
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.7197611    0.0989543    1.3405678
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0237883   -0.5350898    0.4875133
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2517664   -0.6060199    0.1024871
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1276803   -0.8811536    0.6257931
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.3339523   -0.7520020    0.0840973
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4619850   -0.6022348   -0.3217352


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.4682716    0.1940109    0.7425323
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9847541   -1.2066471   -0.7628611
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.1360000   -0.4160147    0.1440147
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
6 months    ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.9728964    0.7346428    1.2111501
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1409639   -0.1073951    0.3893228
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           0.9037755    0.5863704    1.2211806
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.6854365    0.3724525    0.9984205
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
24 months   ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.5139320    0.2565665    0.7712976
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.2262651   -0.4277663   -0.0247638
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1145918   -0.1849945    0.4141781
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1037209   -0.1942394    0.4016813
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.6488317   -1.2951126   -0.0025507
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1283684   -0.1986928    0.4554297
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2029583   -0.6230488    0.2171322
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5200721   -1.0396092   -0.0005350
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.0257111   -0.1318807    0.1833030
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.5280412    0.1254969    0.9305855
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1190109   -0.2722990    0.0342772
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5587352   -1.0401464   -0.0773240
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.0283303   -1.5327711   -0.5238896
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0151237   -0.0924872    0.0622398
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.2058290   -0.7487612    0.3371032
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2024768   -0.6705313    0.2655777
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.3663582    0.1007323    0.6319842
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2314012   -0.4849087    0.9477111
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.5539888   -0.9703216   -0.1376561
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1483652   -0.2396660   -0.0570644
