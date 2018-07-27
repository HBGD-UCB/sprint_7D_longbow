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
      W: []
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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
6 months    ki1000108-IRC              INDIA                          1                 0       67     407
6 months    ki1000108-IRC              INDIA                          1                 1       22     407
6 months    ki1000108-IRC              INDIA                          2                 0       90     407
6 months    ki1000108-IRC              INDIA                          2                 1       29     407
6 months    ki1000108-IRC              INDIA                          3+                0      150     407
6 months    ki1000108-IRC              INDIA                          3+                1       49     407
24 months   ki1000108-IRC              INDIA                          1                 0       58     409
24 months   ki1000108-IRC              INDIA                          1                 1       31     409
24 months   ki1000108-IRC              INDIA                          2                 0       73     409
24 months   ki1000108-IRC              INDIA                          2                 1       46     409
24 months   ki1000108-IRC              INDIA                          3+                0      108     409
24 months   ki1000108-IRC              INDIA                          3+                1       93     409
Birth       ki1000108-IRC              INDIA                          1                 0       72     388
Birth       ki1000108-IRC              INDIA                          1                 1       12     388
Birth       ki1000108-IRC              INDIA                          2                 0      100     388
Birth       ki1000108-IRC              INDIA                          2                 1       14     388
Birth       ki1000108-IRC              INDIA                          3+                0      171     388
Birth       ki1000108-IRC              INDIA                          3+                1       19     388
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      357     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      124     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1       24     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0        8     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        1     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      298     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       83     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1       63     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0        6     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        2     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                 0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        0     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      103     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1       50     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        1     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      503    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       64    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0       55    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1        7    2020
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     811
6 months    ki1148112-LCNI-5           MALAWI                         2                 0      216     811
6 months    ki1148112-LCNI-5           MALAWI                         2                 1      142     811
6 months    ki1148112-LCNI-5           MALAWI                         3+                0       37     811
6 months    ki1148112-LCNI-5           MALAWI                         3+                1       26     811
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      163     571
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      120     571
24 months   ki1148112-LCNI-5           MALAWI                         2                 0      137     571
24 months   ki1148112-LCNI-5           MALAWI                         2                 1      107     571
24 months   ki1148112-LCNI-5           MALAWI                         3+                0       21     571
24 months   ki1148112-LCNI-5           MALAWI                         3+                1       23     571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7865   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4239   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5048   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1972   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                0      345   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                1      122   19591
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4212   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1336   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0      272   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1       93   16800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2892    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2562    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     1401    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1548    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0       98    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      121    8622


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b37344a6-d80f-43bf-9f97-7bd54800b5ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b37344a6-d80f-43bf-9f97-7bd54800b5ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b37344a6-d80f-43bf-9f97-7bd54800b5ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b37344a6-d80f-43bf-9f97-7bd54800b5ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1428571   0.0679288   0.2177855
Birth       ki1000108-IRC              INDIA                          2                    NA                0.1228070   0.0624795   0.1831345
Birth       ki1000108-IRC              INDIA                          3+                   NA                0.1000000   0.0572877   0.1427123
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3502148   0.3403302   0.3600994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2809117   0.2702721   0.2915513
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2612420   0.2204350   0.3020490
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2471910   0.1574593   0.3369227
6 months    ki1000108-IRC              INDIA                          2                    NA                0.2436975   0.1664682   0.3209268
6 months    ki1000108-IRC              INDIA                          3+                   NA                0.2462312   0.1863009   0.3061614
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741661   0.1041229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1128748   0.0868219   0.1389276
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1129032   0.0341083   0.1916982
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3256410   0.2791040   0.3721781
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3966480   0.3459417   0.4473544
6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4126984   0.2910538   0.5343430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2566364   0.2466681   0.2666046
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2408075   0.2281365   0.2534785
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2547945   0.2111767   0.2984124
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3483146   0.2492110   0.4474182
24 months   ki1000108-IRC              INDIA                          2                    NA                0.3865546   0.2989555   0.4741537
24 months   ki1000108-IRC              INDIA                          3+                   NA                0.4626866   0.3936723   0.5317008
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4240283   0.3664003   0.4816563
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4385246   0.3762091   0.5008401
24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5227273   0.3750127   0.6704418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4697470   0.4537388   0.4857552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5249237   0.5050510   0.5447964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5525114   0.4854338   0.6195890


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232607   0.3156042   0.3309171
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4378284   0.3971000   0.4785567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907214   0.4775947   0.5038481


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                 0.8596491   0.4190143   1.7636551
Birth       ki1000108-IRC              INDIA                          3+                   1                 0.7000000   0.3559067   1.3767655
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8021125   0.7671027   0.8387202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7459478   0.6367353   0.8738924
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 0.9858671   0.6088959   1.5962234
6 months    ki1000108-IRC              INDIA                          3+                   1                 0.9961169   0.6434315   1.5421206
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2662001   0.9517318   1.6845742
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2665193   0.6178144   2.5963641
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.2180531   1.0055260   1.4754996
6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2673416   0.9133374   1.7585557
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9383218   0.8817736   0.9984965
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9928232   0.8352742   1.1800890
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.1097858   0.7713798   1.5966514
24 months   ki1000108-IRC              INDIA                          3+                   1                 1.3283582   0.9633801   1.8316088
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0341872   0.8495785   1.2589102
24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2327652   0.9009483   1.6867893
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1174605   1.0651215   1.1723715
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1761894   1.0399286   1.3303044


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0268778   -0.0916934    0.0379379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0269541   -0.0320902   -0.0218181
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0014908   -0.0807619    0.0777804
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0073902   -0.0016270    0.0164074
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0381074    0.0037508    0.0724640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0052673   -0.0104675   -0.0000671
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0673333   -0.0211764    0.1558430
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0138001   -0.0272837    0.0548839
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0209744    0.0124722    0.0294767


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2317460   -0.9350634    0.2159439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0833820   -0.0991870   -0.0678043
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0060674   -0.3864361    0.2699471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0765544   -0.0212450    0.1649881
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1047631    0.0051365    0.1944131
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0209545   -0.0418128   -0.0005138
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1619960   -0.0806502    0.3501592
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0315194   -0.0670380    0.1209735
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0427420    0.0251592    0.0600077
