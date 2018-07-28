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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    stunted   n_cell     n
----------  -------------------------  -------------  --------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           0                0        1     2
Birth       ki0047075b-MAL-ED          PERU           1                0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                0        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      135   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       71   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      123   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1       40   369
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0       39   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1      170   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0       67   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       96   372
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       40    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1       12    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       34    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        4    90
6 months    ki1000108-IRC              INDIA          0                0      119   398
6 months    ki1000108-IRC              INDIA          0                1       49   398
6 months    ki1000108-IRC              INDIA          1                0      181   398
6 months    ki1000108-IRC              INDIA          1                1       49   398
24 months   ki1000108-IRC              INDIA          0                0       89   400
24 months   ki1000108-IRC              INDIA          0                1       80   400
24 months   ki1000108-IRC              INDIA          1                0      144   400
24 months   ki1000108-IRC              INDIA          1                1       87   400
Birth       ki1000108-IRC              INDIA          0                0      138   378
Birth       ki1000108-IRC              INDIA          0                1       22   378
Birth       ki1000108-IRC              INDIA          1                0      197   378
Birth       ki1000108-IRC              INDIA          1                1       21   378
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0       76   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1       25   583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      413   583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       69   583
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       49   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       49   577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      338   577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1      141   577
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0        6    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1        2    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0       11    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1        1    20
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      179   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1       37   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      264   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1       65   545
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      167   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       44   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      156   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       43   410
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      389   504
6 months    ki1113344-GMS-Nepal        NEPAL          0                1      107   504
6 months    ki1113344-GMS-Nepal        NEPAL          1                0        8   504
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   504
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      237   446
24 months   ki1113344-GMS-Nepal        NEPAL          0                1      202   446
24 months   ki1113344-GMS-Nepal        NEPAL          1                0        7   446
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   446


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/66607da1-1f44-4028-8b00-d8f1403783ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66607da1-1f44-4028-8b00-d8f1403783ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66607da1-1f44-4028-8b00-d8f1403783ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66607da1-1f44-4028-8b00-d8f1403783ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.1440710   0.0946000   0.1935420
Birth       ki1000108-IRC              INDIA        1                    NA                0.0936886   0.0569744   0.1304029
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2759567   0.2175097   0.3344036
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1528089   0.1019694   0.2036483
6 months    ki1000108-IRC              INDIA        0                    NA                0.3352670   0.2765874   0.3939467
6 months    ki1000108-IRC              INDIA        1                    NA                0.2308404   0.1826516   0.2790291
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.3169801   0.2423592   0.3916011
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1452781   0.1141696   0.1763865
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2051670   0.1629747   0.2473593
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2123508   0.1741392   0.2505625
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8168011   0.7720113   0.8615909
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5617075   0.4968996   0.6265155
24 months   ki1000108-IRC              INDIA        0                    NA                0.4601966   0.3950099   0.5253834
24 months   ki1000108-IRC              INDIA        1                    NA                0.3702049   0.3123744   0.4280355
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6791677   0.5935355   0.7647999
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3065095   0.2660487   0.3469704
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2431818   0.1950594   0.2913041
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2433313   0.1959820   0.2906805


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4175000   0.3691120   0.4658880
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.6502950   0.3873127   1.0918403
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.5537422   0.3705458   0.8275103
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.6885270   0.5260468   0.9011924
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.4583192   0.3337562   0.6293711
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0350146   0.7879587   1.3595322
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6876919   0.6056599   0.7808346
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.8044495   0.6527662   0.9913794
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.4513017   0.3766237   0.5407871
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0006149   0.7605011   1.3165401


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0303144   -0.0654712    0.0048425
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0248564   -0.0140773    0.0637900
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0890359   -0.1317953   -0.0462764
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1557451   -0.2213308   -0.0901594
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0180110   -0.0533708    0.0173487
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1017474   -0.1398133   -0.0636814
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0426966   -0.0917424    0.0063491
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.3498783   -0.4277684   -0.2719881
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0309866   -0.0662447    0.0042714


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2664845   -0.6203080    0.0100753
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0826306   -0.0559094    0.2029935
6 months    ki1000108-IRC              INDIA        0                    NA                -0.3615946   -0.5624725   -0.1865425
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.9659512   -1.4447142   -0.5809473
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0962355   -0.3079646    0.0812196
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1422933   -0.2016603   -0.0858593
24 months   ki1000108-IRC              INDIA        0                    NA                -0.1022674   -0.2282640    0.0108043
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.0625250   -1.3518697   -0.8087777
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1460290   -0.3328925    0.0146373
