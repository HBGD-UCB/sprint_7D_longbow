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

**Outcome Variable:** sstunted

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
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    sstunted   n_cell      n
----------  -------------------------  -------------  --------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          PERU           0                 0        1      2
Birth       ki0047075b-MAL-ED          PERU           0                 1        0      2
Birth       ki0047075b-MAL-ED          PERU           1                 0        1      2
Birth       ki0047075b-MAL-ED          PERU           1                 1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 0       50     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 1        2     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 0       37     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 1        1     90
Birth       ki1000108-IRC              INDIA          0                 0      154    378
Birth       ki1000108-IRC              INDIA          0                 1        6    378
Birth       ki1000108-IRC              INDIA          1                 0      209    378
Birth       ki1000108-IRC              INDIA          1                 1        9    378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 0        7     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 1        1     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 0       12     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 1        0     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 0      178    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 1       28    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 0      149    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 1       14    369
6 months    ki1000108-IRC              INDIA          0                 0      154    398
6 months    ki1000108-IRC              INDIA          0                 1       14    398
6 months    ki1000108-IRC              INDIA          1                 0      216    398
6 months    ki1000108-IRC              INDIA          1                 1       14    398
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 0       94    583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 0      475    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 1        7    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 0      211    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 1        5    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 0      318    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 1       11    545
6 months    ki1113344-GMS-Nepal        NEPAL          0                 0      956   1008
6 months    ki1113344-GMS-Nepal        NEPAL          0                 1       36   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                 0       16   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                 1        0   1008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 0      121    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 1       88    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 0      128    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 1       35    372
24 months   ki1000108-IRC              INDIA          0                 0      150    400
24 months   ki1000108-IRC              INDIA          0                 1       19    400
24 months   ki1000108-IRC              INDIA          1                 0      210    400
24 months   ki1000108-IRC              INDIA          1                 1       21    400
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 0       76    577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 1       22    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 0      452    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 1       27    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 0      200    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 1       11    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 0      190    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 1        9    410
24 months   ki1113344-GMS-Nepal        NEPAL          0                 0      784    892
24 months   ki1113344-GMS-Nepal        NEPAL          0                 1       94    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                 0       14    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                 1        0    892


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/046ff9a6-80b4-48d2-9481-cf2465be16ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/046ff9a6-80b4-48d2-9481-cf2465be16ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/046ff9a6-80b4-48d2-9481-cf2465be16ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/046ff9a6-80b4-48d2-9481-cf2465be16ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.0375000   0.0080233   0.0669767
Birth       ki1000108-IRC              INDIA        1                    NA                0.0412844   0.0148400   0.0677288
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1359212   0.0890586   0.1827837
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0858906   0.0428169   0.1289642
6 months    ki1000108-IRC              INDIA        0                    NA                0.0906642   0.0490122   0.1323161
6 months    ki1000108-IRC              INDIA        1                    NA                0.0640090   0.0331755   0.0948426
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0693069   0.0197332   0.1188807
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0145228   0.0038336   0.0252120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0334347   0.0139917   0.0528776
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4312733   0.3682390   0.4943076
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2183041   0.1601763   0.2764319
24 months   ki1000108-IRC              INDIA        0                    NA                0.1153596   0.0677873   0.1629320
24 months   ki1000108-IRC              INDIA        1                    NA                0.0905788   0.0536662   0.1274915
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2426135   0.1636606   0.3215664
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0567875   0.0361185   0.0774566
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0521327   0.0221020   0.0821634
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0452261   0.0163195   0.0741327


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0396825   0.0199772   0.0593879
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0703518   0.0451953   0.0955082
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293578   0.0151725   0.0435431
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1000000   0.0705637   0.1294363
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0487805   0.0279044   0.0696566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 1.1009174   0.3993811   3.0347432
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6319146   0.3438399   1.1613431
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.7060016   0.3634613   1.3713656
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.2095436   0.0750832   0.5847978
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4443769   0.5084549   4.1030675
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.5061850   0.3740230   0.6850469
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7851867   0.4399490   1.4013401
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.2340659   0.1436230   0.3814628
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8675194   0.3669417   2.0509796


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0021825   -0.0206565    0.0250216
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0221000   -0.0503311    0.0061311
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0203124   -0.0503982    0.0097734
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0452932   -0.0872545   -0.0033319
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0062097   -0.0106651    0.0230844
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1006281   -0.1403405   -0.0609158
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0153596   -0.0503235    0.0196043
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1576915   -0.2252501   -0.0901329
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0033522   -0.0235863    0.0168818


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0550000   -0.7364417    0.4857155
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1941644   -0.4645248    0.0262858
6 months    ki1000108-IRC              INDIA        0                    NA                -0.2887263   -0.7945268    0.0745107
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.8861386   -3.8445706   -0.7194086
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2115162   -0.6165433    0.6154098
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3043388   -0.4374950   -0.1835169
24 months   ki1000108-IRC              INDIA        0                    NA                -0.1535963   -0.5607829    0.1473609
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.8568978   -2.7332997   -1.1862336
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0687204   -0.5741547    0.2744276
