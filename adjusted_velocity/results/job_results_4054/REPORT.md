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

**Outcome Variable:** y_rate_haz

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
![](/tmp/61961496-9453-422e-a68b-ea7ee0ae86b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/61961496-9453-422e-a68b-ea7ee0ae86b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1792561    0.1027959    0.2557163
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.3304245    0.2129626    0.4478863
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0734245   -0.2286747    0.0818257
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0470986   -0.0103056    0.1045027
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.0758361   -0.1816493    0.0299771
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.1741065   -0.2690571   -0.0791560
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1809516   -0.2923482   -0.0695550
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0426731   -0.1094170    0.1947631
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0405022   -0.0588493   -0.0221550
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1045552   -0.1526358   -0.0564747
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.1212765   -0.1401694   -0.1023835
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0888241   -0.1100641   -0.0675841
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1070668    0.0571647    0.1569690
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0084511   -0.1798343    0.1967364
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0882119   -0.0530070    0.2294307
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0205001   -0.0733176    0.0323174
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.0236214   -0.1262168    0.0789739
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0036520   -0.0765420    0.0838459
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410643   -0.1081175    0.0259890
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2457527   -0.3985192   -0.0929862
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0246427   -0.0412695   -0.0080158
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1374267   -0.2312516   -0.0436018
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0957985    0.0767864    0.1148106
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0321681    0.0139130    0.0504233
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0151480   -0.0147880    0.0450839
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0204435   -0.0361579    0.0770449
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0841540   -0.1141676   -0.0541405
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0570234   -0.0765441   -0.0375027
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.1079343   -0.1383391   -0.0775294
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0368494   -0.0723352   -0.0013636
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1091758   -0.1404418   -0.0779099
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0701895   -0.1547940    0.0144151
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0629761   -0.0700005   -0.0559517
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0644491   -0.0888250   -0.0400733
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0638193   -0.0724619   -0.0551767
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0298552   -0.0388816   -0.0208287
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0007187   -0.0140945    0.0155319
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0340767   -0.0557665   -0.0123869
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0041314   -0.0122351    0.0039724
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0263372   -0.0346103   -0.0180641
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0240189   -0.0482529    0.0002151
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0017660   -0.0186883    0.0151562
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0415527   -0.0566565   -0.0264488
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0732993   -0.1193519   -0.0272467
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0082029   -0.0121192   -0.0042866
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0069492   -0.0223723    0.0084738
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0072190   -0.0118970   -0.0025410
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0111446   -0.0159222   -0.0063671


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.2008516    0.1322496    0.2694535
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0196732   -0.0373357    0.0766822
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1548797   -0.2348247   -0.0749347
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1456424   -0.2459764   -0.0453085
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0946202    0.0445560    0.1446843
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0043331   -0.0540186    0.0453524
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0112021   -0.0568449    0.0792490
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0703055   -0.1355760   -0.0050350
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
6-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0158164   -0.0114385    0.0430713
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0620266   -0.0799254   -0.0441279
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0517264   -0.0824460   -0.0210068
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1034705   -0.1332011   -0.0737399
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
12-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                -0.0036730   -0.0170893    0.0097433
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0223791   -0.0299168   -0.0148415
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0064000   -0.0210549    0.0082548
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0460879   -0.0610026   -0.0311732
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.1511684    0.0110132    0.2913235
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.1205231   -0.0446737    0.2857199
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0982704   -0.2404395    0.0438986
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2236247    0.0351026    0.4121468
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0640531   -0.1154531   -0.0126531
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0324523    0.0063657    0.0585390
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.0986158   -0.2934018    0.0961703
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.1087120   -0.2597336    0.0423097
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0272734   -0.1115103    0.1660571
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2046884   -0.3715229   -0.0378539
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.1127841   -0.2081257   -0.0174424
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0636304   -0.0881940   -0.0390667
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.0052955   -0.0581821    0.0687731
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0271307   -0.0086053    0.0628667
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.0710849    0.0249525    0.1172173
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0389864   -0.0512106    0.1291833
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0014730   -0.0268799    0.0239338
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0339641    0.0213679    0.0465604
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.0347954   -0.0610610   -0.0085299
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.0222058   -0.0337715   -0.0106402
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0222529   -0.0069987    0.0515044
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0317467   -0.0802128    0.0167195
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0012537   -0.0146482    0.0171555
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0039257   -0.0105709    0.0027196
