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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                125     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                118     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 29     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                156     185
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     198
Birth       ki0047075b-MAL-ED          INDIA                          0                182     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 26     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                146     172
Birth       ki0047075b-MAL-ED          PERU                           1                118     273
Birth       ki0047075b-MAL-ED          PERU                           0                155     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                233     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11176   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2770   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                582     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                145     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                129     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                111     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                172     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 19     236
6 months    ki0047075b-MAL-ED          INDIA                          0                217     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 32     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                204     236
6 months    ki0047075b-MAL-ED          PERU                           1                126     271
6 months    ki0047075b-MAL-ED          PERU                           0                145     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                251     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                245     247
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10705   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2670   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3256    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                915    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 94     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                139     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 18     227
24 months   ki0047075b-MAL-ED          INDIA                          0                209     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 30     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                198     228
24 months   ki0047075b-MAL-ED          PERU                           1                 94     200
24 months   ki0047075b-MAL-ED          PERU                           0                106     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                235     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5293    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1400    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3153    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                870    4023


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/68fc3d31-16c9-441a-a50f-920dd368035c/eb70a30e-7ecf-4f4f-b315-8a44ec19fdaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9869968   -1.1557169   -0.8182768
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.9988784   -1.3028955   -0.6948613
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0596336   -1.1991355   -0.9201316
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5228567   -0.7743645   -0.2713490
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.9717526   -1.1278756   -0.8156297
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5059783   -1.5345737   -1.4773829
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4905966   -1.5812512   -1.3999419
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1333147   -1.2886974   -0.9779320
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1836142   -0.2019290    0.5691574
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1802182   -1.2992540   -1.0611824
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.6301681   -0.7722349   -0.4881012
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.1367169   -1.2870516   -0.9863821
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.8843637   -2.0746821   -1.6940452
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2208925   -1.3174322   -1.1243528
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5324424   -1.7311577   -1.3337271
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2809555   -1.3085906   -1.2533204
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3172189   -1.3712892   -1.2631486
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.8844373   -2.0571763   -1.7116982
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1101361   -0.3299227    0.1096506
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.7943147   -1.9228093   -1.6658200
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.3867945   -1.5850330   -1.1885560
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.5943329   -1.7433803   -1.4452855
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.9679213   -2.1130038   -1.8228388
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -1.9256356   -2.0823115   -1.7689598
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9901198   -2.0260662   -1.9541735
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7692742   -1.8255141   -1.7130343


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9231136   -1.0355489   -0.8106782
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2009401   -2.3240630   -2.0778171
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7430000   -1.8632412   -1.6227588
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7766542   -1.8163158   -1.7369927


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0544846   -0.1793235    0.0703542
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2637973   -0.0004624    0.5280570
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed           0.0360982   -0.0351778    0.1073742
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1824340   -0.4187854    0.0539175
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0486391   -0.0675670    0.1648451
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0273897   -0.0447890   -0.0099904
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0294722   -0.0673048    0.0083604
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0673658   -0.1776017    0.0428701
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1325935   -0.4704455    0.2052586
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0401490   -0.0912943    0.0109962
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0691087   -0.0266292    0.1648467
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1806509   -0.2960325   -0.0652693
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.3165764   -0.4663048   -0.1668479
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0941138   -0.1665818   -0.0216458
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1071532   -0.2530626    0.0387563
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0312217   -0.0452515   -0.0171919
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0430220   -0.0839793   -0.0020648
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0518897   -0.1932046    0.0894252
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1519704    0.0029305    0.3010103
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0515003   -0.0963138   -0.0066868
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1115752   -0.0384538    0.2616042
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1486671   -0.2754525   -0.0218817
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0893650   -0.0254969    0.2042269
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0349464   -0.1846482    0.1147554
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0044955   -0.0265758    0.0175849
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0073800   -0.0460195    0.0312595
