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

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* impfloor
* agecat
* studyid
* country

## Data Summary

impfloor   agecat      studyid                     country      tr          stunted   n_cell       n
---------  ----------  --------------------------  -----------  ---------  --------  -------  ------
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       33     154
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        6     154
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       30     154
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        9     154
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       56     154
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       20     154
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       15      78
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        1      78
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       15      78
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        3      78
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       43      78
1          6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        1      78
0          24 months   ki1000111-WASH-Kenya        KENYA        Control           0      493    2141
0          24 months   ki1000111-WASH-Kenya        KENYA        Control           1      224    2141
0          24 months   ki1000111-WASH-Kenya        KENYA        LNS               0      335    2141
0          24 months   ki1000111-WASH-Kenya        KENYA        LNS               1      140    2141
0          24 months   ki1000111-WASH-Kenya        KENYA        Other             0      638    2141
0          24 months   ki1000111-WASH-Kenya        KENYA        Other             1      311    2141
0          6 months    ki1000111-WASH-Kenya        KENYA        Control           0       22      72
0          6 months    ki1000111-WASH-Kenya        KENYA        Control           1        2      72
0          6 months    ki1000111-WASH-Kenya        KENYA        LNS               0       11      72
0          6 months    ki1000111-WASH-Kenya        KENYA        LNS               1        3      72
0          6 months    ki1000111-WASH-Kenya        KENYA        Other             0       28      72
0          6 months    ki1000111-WASH-Kenya        KENYA        Other             1        6      72
1          24 months   ki1000111-WASH-Kenya        KENYA        Control           0       34     122
1          24 months   ki1000111-WASH-Kenya        KENYA        Control           1        8     122
1          24 months   ki1000111-WASH-Kenya        KENYA        LNS               0       19     122
1          24 months   ki1000111-WASH-Kenya        KENYA        LNS               1        6     122
1          24 months   ki1000111-WASH-Kenya        KENYA        Other             0       46     122
1          24 months   ki1000111-WASH-Kenya        KENYA        Other             1        9     122
1          6 months    ki1000111-WASH-Kenya        KENYA        Control           0        1       2
1          6 months    ki1000111-WASH-Kenya        KENYA        LNS               0        1       2
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control           0       51      94
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control           1       18      94
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal          0       20      94
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal          1        5      94
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control           0       73     173
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control           1       37     173
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal          0       48     173
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal          1       15     173
1          24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control           1        1       1
1          Birth       ki1000125-AgaKhanUniv       PAKISTAN     Control           0        1       1
0          Birth       ki1000125-AgaKhanUniv       PAKISTAN     Control           0        1       3
0          Birth       ki1000125-AgaKhanUniv       PAKISTAN     Maternal          0        2       3
0          6 months    ki1000304-VITAMIN-A         INDIA        Control           0       33      94
0          6 months    ki1000304-VITAMIN-A         INDIA        Control           1       18      94
0          6 months    ki1000304-VITAMIN-A         INDIA        VitA              0       25      94
0          6 months    ki1000304-VITAMIN-A         INDIA        VitA              1       18      94
1          6 months    ki1017093b-PROVIDE          BANGLADESH   Control           0        6      41
1          6 months    ki1017093b-PROVIDE          BANGLADESH   Control           1        2      41
1          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0       28      41
1          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        5      41
0          6 months    ki1017093b-PROVIDE          BANGLADESH   Control           0        2       5
0          6 months    ki1017093b-PROVIDE          BANGLADESH   Control           1        0       5
0          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             0        0       5
0          6 months    ki1017093b-PROVIDE          BANGLADESH   Other             1        3       5
1          24 months   ki1017093b-PROVIDE          BANGLADESH   Other             0        2       2
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           0     6013   18487
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           1     3170   18487
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     6416   18487
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          1     2888   18487
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           0     5505   15266
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           1     2077   15266
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     5754   15266
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          1     1930   15266
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           0      601    1460
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           1       91    1460
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          0      661    1460
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      107    1460
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           0      384    1076
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           1      145    1076
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          0      424    1076
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      123    1076
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           0       21      88
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           1       17      88
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          0       20      88
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          1       30      88
1          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           0        3      10
1          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           1        4      10
1          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          0        3      10
1          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          1        0      10
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           0      121     584
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           1       21     584
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               0      143     584
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               1       28     584
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             0      225     584
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             1       46     584
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           0      829    4207
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           1      277    4207
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               0      859    4207
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               1      293    4207
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             0     1401    4207
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             1      548    4207
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           0      142     751
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           1       64     751
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               0      141     751
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               1       65     751
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             0      246     751
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             1       93     751
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           0      141     950
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           1      109     950
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               0      154     950
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               1      104     950
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             0      252     950
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             1      190     950
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           0       23     143
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           1       12     143
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               0       29     143
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               1       15     143
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             0       49     143
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             1       15     143
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           0       13      71
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           1        5      71
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               0       12      71
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               1        9      71
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             0       21      71
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             1       11      71


The following strata were considered:

* impfloor: 0, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impfloor: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* impfloor: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0779b73d-2df4-4460-ba44-015506310cc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0779b73d-2df4-4460-ba44-015506310cc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0779b73d-2df4-4460-ba44-015506310cc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0779b73d-2df4-4460-ba44-015506310cc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


impfloor   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3452031   0.3397106   0.3506956
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.3104041   0.3048441   0.3159641
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3106796   0.2379782   0.3833810
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3155340   0.2429658   0.3881021
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2743363   0.2202431   0.3284295
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.3363636   0.2800613   0.3926660
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2380952   0.1996841   0.2765063
0          6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                0.3529412   0.2210826   0.4847998
0          6 months    ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.4186047   0.2703617   0.5668476
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2739383   0.2677621   0.2801144
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2511713   0.2454276   0.2569150
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2504521   0.2197768   0.2811273
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2543403   0.2260727   0.2826079
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2811698   0.2571778   0.3051618
0          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.3124128   0.2784801   0.3463455
0          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2947368   0.2537263   0.3357474
0          24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3277134   0.2978430   0.3575838
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4473684   0.3762731   0.5184638
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.6000000   0.5249501   0.6750499
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4360000   0.3637388   0.5082612
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4031008   0.3336278   0.4725738
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.4298643   0.3757685   0.4839600
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2741021   0.2525940   0.2956101
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2248629   0.2051641   0.2445617
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2777778   0.0624983   0.4930572
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4285714   0.2100057   0.6471372
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3437500   0.1720942   0.5154058
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.2608696   0.1844087   0.3373305
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2000000   0.1580750   0.2419250
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1315029   0.1180284   0.1449773
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.1393229   0.1222329   0.1564129
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.1478873   0.0819080   0.2138667
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.1637427   0.1047035   0.2227819
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.1697417   0.1175795   0.2219039
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1538462   0.0402409   0.2674514
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2307692   0.0981069   0.3634316
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2631579   0.1638345   0.3624812
1          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.1904762   0.0712296   0.3097227
1          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2400000   0.0718961   0.4081039
1          24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.1636364   0.0654635   0.2618092
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3428571   0.1763733   0.5093410
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3409091   0.1979503   0.4838679
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2343750   0.1285401   0.3402099


### Parameter: E(Y)


impfloor   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3276897   0.3197336   0.3356459
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2956059   0.2582532   0.3329586
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.3005780   0.2320557   0.3691004
0          6 months    ki1000304-VITAMIN-A         INDIA        NA                   NA                0.3829787   0.2841817   0.4817758
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2624787   0.2539903   0.2709671
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2657476   0.2499149   0.2815802
0          24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.3152732   0.2955879   0.3349586
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.5340909   0.4293415   0.6388403
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4242105   0.3874372   0.4609838
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2490706   0.2198560   0.2782852
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3521127   0.2366595   0.4675659
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.2446809   0.1573089   0.3320528
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.1356164   0.1138215   0.1574114
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.1626712   0.1288744   0.1964681
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2272727   0.1608695   0.2936760
1          24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.1885246   0.1188335   0.2582157
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2937063   0.2167970   0.3706156


### Parameter: RR


impfloor   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8991928   0.8778996   0.9210024
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0156250   0.7315379   1.4100351
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.8830199   0.6502338   1.1991442
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.7078507   0.5610215   0.8931078
0          6 months    ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0          6 months    ki1000304-VITAMIN-A         INDIA        VitA                 Control           1.1860465   0.7088261   1.9845579
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9168900   0.8879059   0.9468202
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0155247   0.8606986   1.1982016
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1226492   0.9669807   1.3033778
0          24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9434211   0.7907616   1.1255520
0          24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.0489754   0.9103022   1.2087738
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.3411765   1.0956053   1.6417904
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9245431   0.7278291   1.1744239
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9859272   0.8006822   1.2140302
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8203618   0.7292553   0.9228504
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.5428571   0.6100023   3.9022941
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.2375000   0.4921472   3.1116832
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.7666667   0.5346994   1.0992677
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0594666   0.9030558   1.2429680
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.1072125   0.6238811   1.9649891
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1477772   0.6677211   1.9729682
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           1.5000000   0.5883956   3.8239580
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.7105263   0.7463965   3.9200346
1          24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.2600000   0.4924693   3.2237540
1          24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.8590909   0.3609620   2.0446395
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9943182   0.5234687   1.8886872
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.6835938   0.3522297   1.3266923


### Parameter: PAR


impfloor   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0175134   -0.0232944   -0.0117324
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0150738   -0.0765157    0.0463682
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0357856   -0.0748414    0.0032701
0          6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0300375   -0.0609632    0.1210383
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0114596   -0.0173033   -0.0056158
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0152955   -0.0110891    0.0416801
0          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0028604   -0.0248477    0.0305685
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0867225    0.0097947    0.1636503
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0117895   -0.0737123    0.0501334
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0250314   -0.0449536   -0.0051093
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0743349   -0.1162804    0.2649502
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0161887   -0.0584685    0.0260911
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0041135   -0.0129926    0.0212196
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0147839   -0.0433540    0.0729218
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0734266   -0.0303937    0.1772469
1          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0019516   -0.0983152    0.0944120
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0491508   -0.1908440    0.0925423


### Parameter: PAF


impfloor   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0534450   -0.0722123   -0.0350061
0          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0509927   -0.2807458    0.1375449
0          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.1190559   -0.2762680    0.0187906
0          6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0784314   -0.1927864    0.2879792
0          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0436590   -0.0671751   -0.0206612
0          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0575564   -0.0471855    0.1518218
0          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0090728   -0.0828281    0.0931739
0          24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.1623740    0.0303843    0.2763966
0          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0277916   -0.1846396    0.1082895
1          Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.1004994   -0.1925368   -0.0155653
1          Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.2111111   -0.5653023    0.6024118
1          6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0661626   -0.2686410    0.1039997
1          6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0303322   -0.1000622    0.1452705
1          6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0908821   -0.3464854    0.3861832
1          24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.3230769   -0.3177258    0.6522609
1          24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0103520   -0.6756483    0.3907963
1          24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.1673469   -0.7625073    0.2268407
