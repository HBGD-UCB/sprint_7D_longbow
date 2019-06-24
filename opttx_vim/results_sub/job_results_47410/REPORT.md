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
![](/tmp/46db191b-9375-4ed6-ac11-4a3f743b0c84/23efde63-31e2-4a84-af00-cc62b2797030/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed           1.1165322    0.4479823    1.7850821
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.7716640   -1.3394776   -0.2038504
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0457772   -0.3435152    0.4350696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1928162   -0.6774767    0.2918442
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.9559819    0.6808896    1.2310742
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0368882   -0.6173533    0.5435768
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0257257    0.6565935    1.3948579
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3542366    0.9960191    1.7124542
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.8128125    0.3109875    1.3146376
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0791609   -0.0389994    0.1973213
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.7653150    0.0996173    1.4310127
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0148636   -0.5208823    0.5506094
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2057531   -0.5988672    0.1873611
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0829883   -1.0385909    1.2045674
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.3674840   -0.7908343    0.0558663
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4767429   -0.6207655   -0.3327202


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
Birth       ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.6482606   -1.2810734   -0.0154478
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2130901   -0.7157850    0.2896047
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1817772   -0.6030779    0.2395235
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5580533   -1.0697878   -0.0463188
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.0169146   -0.1430728    0.1769019
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1778521   -0.3535516    0.7092557
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1219502   -0.2793083    0.0354079
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6688001   -1.1127913   -0.2248089
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.0211831   -1.5184389   -0.5239273
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0493987   -0.1324707    0.0336734
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.2513830   -0.8390762    0.3363103
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2411286   -0.7271557    0.2448985
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.3203449    0.0202372    0.6204526
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0207327   -1.0139590    1.0554243
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.5204572   -0.9422573   -0.0986570
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1336073   -0.2263444   -0.0408703
