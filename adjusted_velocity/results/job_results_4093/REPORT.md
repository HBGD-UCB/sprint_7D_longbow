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

**Outcome Variable:** y_rate_len

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

agecat         studyid                    country                        trth2o    n_cell     n
-------------  -------------------------  -----------------------------  -------  -------  ----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             72    84
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             12    84
0-3 months     ki0047075b-MAL-ED          INDIA                          0              4     6
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     6
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             12    63
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             51    63
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    46
0-3 months     ki0047075b-MAL-ED          PERU                           1             37    46
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
0-3 months     ki1000108-IRC              INDIA                          0              0   118
0-3 months     ki1000108-IRC              INDIA                          1            118   118
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            620   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            401   720
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
3-6 months     ki1000108-IRC              INDIA                          0              0   119
3-6 months     ki1000108-IRC              INDIA                          1            119   119
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            561   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             13   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              6     8
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              2     8
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6-12 months    ki0047075b-MAL-ED          INDIA                          0              5     8
6-12 months    ki0047075b-MAL-ED          INDIA                          1              3     8
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6-12 months    ki0047075b-MAL-ED          PERU                           0             10    49
6-12 months    ki0047075b-MAL-ED          PERU                           1             39    49
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   107
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            107   107
6-12 months    ki1000108-IRC              INDIA                          0              0   119
6-12 months    ki1000108-IRC              INDIA                          1            119   119
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            532   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            365   676
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              6     8
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              2     8
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
12-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
12-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
12-24 months   ki0047075b-MAL-ED          PERU                           0             10    48
12-24 months   ki0047075b-MAL-ED          PERU                           1             38    48
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   100
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            100   100
12-24 months   ki1000108-IRC              INDIA                          0              0   118
12-24 months   ki1000108-IRC              INDIA                          1            118   118
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            447   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            267   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            228   495
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              6     8
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              2     8


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1d75b8cd-2ef7-41e6-8975-c8380dcaf677/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1d75b8cd-2ef7-41e6-8975-c8380dcaf677/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                4.0315373   3.8866194   4.1764552
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                4.3116371   4.0953860   4.5278881
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.3146111   3.0218971   3.6073250
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.7330528   3.6163475   3.8497581
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.5110628   3.2812212   3.7409044
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.3018257   3.1177732   3.4858781
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1945125   2.9985906   3.3904344
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6820549   3.3277337   4.0363762
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.4827705   3.4430661   3.5224749
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.4584464   3.2755986   3.6412942
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.2991351   3.2568559   3.3414143
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.4159157   3.3682507   3.4635808
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                2.2495836   2.1411219   2.3580453
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                2.0370264   1.6269103   2.4471426
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9220906   1.7157681   2.1284131
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9373583   1.8289559   2.0457607
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                2.0034011   1.8105150   2.1962872
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.9870567   1.8134152   2.1606981
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8739708   1.7296439   2.0182977
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4680425   1.1592662   1.7768187
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.9706065   1.9352328   2.0059802
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.7355309   1.5685206   1.9025411
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1815152   2.1362969   2.2267335
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                2.0377174   1.9955581   2.0798767
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.4143807   1.3421119   1.4866494
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.4007940   1.2799162   1.5216717
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.1038985   1.0394960   1.1683011
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.2062377   1.1592174   1.2532580
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.0357923   0.9453673   1.1262172
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.2056015   1.1198844   1.2913186
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0300848   0.9545728   1.1055968
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1257413   0.9455595   1.3059231
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.1728648   1.1553677   1.1903619
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.1859209   1.0698499   1.3019919
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1684597   1.1494337   1.1874858
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.2290599   1.2084953   1.2496245
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.9948817   0.9531846   1.0365789
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.8593701   0.8028259   0.9159143
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8801439   0.8503632   0.9099246
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8770852   0.8498312   0.9043392
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.7852438   0.7236186   0.8468691
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8610914   0.8128257   0.9093572
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7555402   0.7065698   0.8045106
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6796135   0.5299671   0.8292599
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8577753   0.8455342   0.8700164
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8484451   0.8080753   0.8888150
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8660231   0.8522148   0.8798314
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8604826   0.8461803   0.8747849


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                4.0715516   3.9418270   4.2012761
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6902242   3.5713067   3.8091418
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.3427634   3.1861528   3.4993739
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2714929   3.0881028   3.4548830
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                2.2227563   2.1133297   2.3321829
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9950101   1.8904604   2.0995599
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.9903923   1.8466790   2.1341055
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8159811   1.6776334   1.9543288
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
6-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.4128372   1.3473294   1.4783450
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.1905799   1.1461403   1.2350196
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.1709466   1.0976676   1.2442255
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0440833   0.9736537   1.1145130
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
12-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.9771443   0.9389322   1.0153564
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8842512   0.8598045   0.9086979
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8452899   0.8040289   0.8865508
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7446935   0.6968915   0.7924955
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.2800998    0.0197813    0.5404183
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.4184417    0.1040008    0.7328827
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.2092371   -0.5036900    0.0852157
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4875424    0.0826610    0.8924238
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0243242   -0.2109826    0.1623343
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.1167806    0.0526097    0.1809515
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.2125571   -0.6355883    0.2104740
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0152677   -0.2177144    0.2482497
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0163444   -0.2758756    0.2431867
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4059284   -0.7467700   -0.0650868
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.2350756   -0.4055740   -0.0645773
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.1437978   -0.2059337   -0.0816619
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.0135867   -0.1535787    0.1264053
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.1023392    0.0264796    0.1781987
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.1698092    0.0452141    0.2944044
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0956564   -0.0997087    0.2910216
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0130561   -0.1042925    0.1304047
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0606001    0.0345691    0.0866312
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.1355116   -0.2056958   -0.0653275
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.0030587   -0.0435719    0.0374546
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0758476   -0.0024273    0.1541225
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0759267   -0.2333819    0.0815286
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0093302   -0.0514403    0.0327799
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0055405   -0.0255010    0.0144200
