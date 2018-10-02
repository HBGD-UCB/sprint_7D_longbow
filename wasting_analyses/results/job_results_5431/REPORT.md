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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    swasted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       83     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        3     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2     88
Birth       ki1000108-IRC              INDIA                          0               0      285    343
Birth       ki1000108-IRC              INDIA                          0               1       52    343
Birth       ki1000108-IRC              INDIA                          1               0        4    343
Birth       ki1000108-IRC              INDIA                          1               1        2    343
Birth       ki1000109-EE               PAKISTAN                       0               0        2      2
Birth       ki1000109-EE               PAKISTAN                       0               1        0      2
Birth       ki1000109-EE               PAKISTAN                       1               0        0      2
Birth       ki1000109-EE               PAKISTAN                       1               1        0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0        6    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        0    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      149    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        5    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       18     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     23
Birth       ki1135781-COHORTS          INDIA                          0               0     2642   4389
Birth       ki1135781-COHORTS          INDIA                          0               1      121   4389
Birth       ki1135781-COHORTS          INDIA                          1               0     1539   4389
Birth       ki1135781-COHORTS          INDIA                          1               1       87   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       16    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      506    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1        4    526
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       84   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        2   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1268   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        8   1362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      345    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       12    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    365
6 months    ki1000108-IRC              INDIA                          0               0      379    408
6 months    ki1000108-IRC              INDIA                          0               1       21    408
6 months    ki1000108-IRC              INDIA                          1               0        7    408
6 months    ki1000108-IRC              INDIA                          1               1        1    408
6 months    ki1000109-EE               PAKISTAN                       0               0      490    748
6 months    ki1000109-EE               PAKISTAN                       0               1       14    748
6 months    ki1000109-EE               PAKISTAN                       1               0      240    748
6 months    ki1000109-EE               PAKISTAN                       1               1        4    748
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      144   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1        3   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      907   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       34   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        2    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      287    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       17    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      429    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        4    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      148    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        1    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      161    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1876   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       12   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       32   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      254   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        4   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      788   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        8   1054
6 months    ki1135781-COHORTS          INDIA                          0               0     2823   4694
6 months    ki1135781-COHORTS          INDIA                          0               1       73   4694
6 months    ki1135781-COHORTS          INDIA                          1               0     1722   4694
6 months    ki1135781-COHORTS          INDIA                          1               1       76   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       77    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      578    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       12    667
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     2149   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       12   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     5869   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       44   8074
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      359    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    369
24 months   ki1000108-IRC              INDIA                          0               0      396    409
24 months   ki1000108-IRC              INDIA                          0               1        5    409
24 months   ki1000108-IRC              INDIA                          1               0        8    409
24 months   ki1000108-IRC              INDIA                          1               1        0    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      426    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        6    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      143    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        3    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      388    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        3    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      122    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      232    932
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        8    932
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      672    932
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       20    932
24 months   ki1135781-COHORTS          INDIA                          0               0     2199   3533
24 months   ki1135781-COHORTS          INDIA                          0               1       15   3533
24 months   ki1135781-COHORTS          INDIA                          1               0     1297   3533
24 months   ki1135781-COHORTS          INDIA                          1               1       22   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       67    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      492    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       18    577
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2011   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1       50   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     5743   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      172   7976


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/81ab00c5-0e36-47d2-abec-69cff6b0187d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81ab00c5-0e36-47d2-abec-69cff6b0187d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81ab00c5-0e36-47d2-abec-69cff6b0187d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81ab00c5-0e36-47d2-abec-69cff6b0187d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS     INDIA        0                    NA                0.0437930   0.0361619   0.0514240
Birth       ki1135781-COHORTS     INDIA        1                    NA                0.0535055   0.0425661   0.0644450
6 months    ki1135781-COHORTS     INDIA        0                    NA                0.0252072   0.0194975   0.0309169
6 months    ki1135781-COHORTS     INDIA        1                    NA                0.0422692   0.0329681   0.0515703
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0055530   0.0008177   0.0102883
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0074412   0.0015514   0.0133311
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0333333   0.0011818   0.0654849
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0289017   0.0112304   0.0465731
24 months   ki1135781-COHORTS     INDIA        0                    NA                0.0067751   0.0033576   0.0101925
24 months   ki1135781-COHORTS     INDIA        1                    NA                0.0166793   0.0097670   0.0235916
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0242601   0.0146173   0.0339028
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0290786   0.0222443   0.0359130


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS     INDIA        NA                   NA                0.0473912   0.0411045   0.0536779
6 months    ki1135781-COHORTS     INDIA        NA                   NA                0.0317427   0.0267269   0.0367584
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0069358   0.0024501   0.0114216
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0300429   0.0145273   0.0455585
24 months   ki1135781-COHORTS     INDIA        NA                   NA                0.0104727   0.0071155   0.0138299
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0278335   0.0219675   0.0336995


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1135781-COHORTS     INDIA        0                    0                 1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS     INDIA        1                    0                 1.221783   0.9339564   1.598313
6 months    ki1135781-COHORTS     INDIA        0                    0                 1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS     INDIA        1                    0                 1.676871   1.2227891   2.299575
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.340042   0.4163711   4.312768
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.867052   0.2767420   2.716535
24 months   ki1135781-COHORTS     INDIA        0                    0                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS     INDIA        1                    0                 2.461865   1.2815790   4.729150
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.198621   0.7709012   1.863651


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS     INDIA        0                    NA                 0.0035982   -0.0013451   0.0085416
6 months    ki1135781-COHORTS     INDIA        0                    NA                 0.0065355    0.0023483   0.0107226
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0013829   -0.0041771   0.0069429
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0032904   -0.0305313   0.0239505
24 months   ki1135781-COHORTS     INDIA        0                    NA                 0.0036976    0.0008145   0.0065807
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0035734   -0.0047703   0.0119171


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS     INDIA        0                    NA                 0.0759260   -0.0340030   0.1741680
6 months    ki1135781-COHORTS     INDIA        0                    NA                 0.2058892    0.0669367   0.3241488
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1993786   -1.0057917   0.6804281
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1095238   -1.5084772   0.5092468
24 months   ki1135781-COHORTS     INDIA        0                    NA                 0.3530726    0.0459709   0.5613183
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1283860   -0.2268026   0.3807391
