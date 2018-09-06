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

agecat         studyid                    country                        predfeed36    n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                115     242
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                127     242
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                151     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 29     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                184     200
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 16     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                148     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 27     175
0-3 months     ki0047075b-MAL-ED          PERU                           0                149     269
0-3 months     ki0047075b-MAL-ED          PERU                           1                120     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                226     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     229
0-3 months     ki1000109-EE               PAKISTAN                       0                252     594
0-3 months     ki1000109-EE               PAKISTAN                       1                342     594
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               5998   30184
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              24186   30184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                566    3370
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2804    3370
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                107     230
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                123     230
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                171     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 37     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                210     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 19     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                202     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 31     233
3-6 months     ki0047075b-MAL-ED          PERU                           0                142     266
3-6 months     ki0047075b-MAL-ED          PERU                           1                124     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                238     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                237     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     239
3-6 months     ki1000109-EE               PAKISTAN                       0                264     662
3-6 months     ki1000109-EE               PAKISTAN                       1                398     662
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                184     918
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                734     918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               4080   20626
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              16546   20626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                576    3602
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               3026    3602
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                101     219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                118     219
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                160     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 34     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                206     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                 18     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                201     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 29     230
6-12 months    ki0047075b-MAL-ED          PERU                           0                124     237
6-12 months    ki0047075b-MAL-ED          PERU                           1                113     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                229     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     223
6-12 months    ki1000109-EE               PAKISTAN                       0                  6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                  2       8
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     150
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                184     930
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                746     930
6-12 months    ki1148112-LCNI-5           MALAWI                         0                 27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                 13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0               3100   15508
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              12408   15508
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1172    5612
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               4440    5612
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 92     205
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                113     205
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                135     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                207     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                 18     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                197     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 29     226
12-24 months   ki0047075b-MAL-ED          PERU                           0                103     191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 88     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                227     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                205     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     207
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                124     684
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                560     684
12-24 months   ki1148112-LCNI-5           MALAWI                         0                 21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                  9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1474    7244
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5770    7244
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1366    6222
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               4856    6222


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/05d57f86-4326-455c-b1dd-32252824fd07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/05d57f86-4326-455c-b1dd-32252824fd07/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1024694   -0.1475757   -0.0573631
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0778701   -0.1196576   -0.0360826
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1755195    0.1186953    0.2323437
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2831542    0.1612042    0.4051042
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0260469   -0.0663392    0.0142454
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0225086   -0.1330506    0.0880334
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0775639    0.0380542    0.1170737
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0584843   -0.0107188    0.1276873
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.1793699   -0.2244705   -0.1342693
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1328246   -0.1798206   -0.0858286
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                -0.3725009   -0.4205554   -0.3244465
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                -0.4137773   -0.4672108   -0.3603438
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0345794    0.0249645    0.0441943
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0753683    0.0694706    0.0812660
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0276971   -0.0049639    0.0603580
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0772115    0.0613932    0.0930297
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1392356   -0.1734807   -0.1049905
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1171361   -0.1496672   -0.0846050
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0659951    0.0264483    0.1055419
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0159826   -0.0962865    0.0643214
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0356176   -0.0656377   -0.0055974
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0779807   -0.1447082   -0.0112532
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0172549   -0.0460005    0.0114908
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0488165   -0.1176382    0.0200052
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0269629   -0.0118907    0.0658166
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0647532    0.0253600    0.1041463
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                 0.1508876    0.1121831    0.1895922
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0803893    0.0492834    0.1114953
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1703459   -0.2055007   -0.1351910
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1635852   -0.1833631   -0.1438074
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0003298   -0.0097233    0.0090637
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0116396   -0.0173694   -0.0059098
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0053361   -0.0214259    0.0320981
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0159956   -0.0309397   -0.0010516
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0340441   -0.0479649   -0.0201233
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0578742   -0.0709853   -0.0447632
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0060922   -0.0147716    0.0269560
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0087867   -0.0433425    0.0609159
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0779819   -0.0906724   -0.0652914
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0741303   -0.1177465   -0.0305140
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0462119   -0.0574144   -0.0350094
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0668727   -0.0969916   -0.0367538
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0289592   -0.0494730   -0.0084453
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0464921   -0.0647475   -0.0282367
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0278071   -0.0430588   -0.0125555
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0634247   -0.0723135   -0.0545359
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.0508592   -0.1021109    0.0003926
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0189801   -0.0265436    0.0645037
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0667423   -0.0726113   -0.0608734
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0739748   -0.0771744   -0.0707752
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0516107   -0.0597259   -0.0434955
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0405373   -0.0456600   -0.0354145
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0272870   -0.0356396   -0.0189344
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0270095   -0.0334760   -0.0205430
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0024849   -0.0089389    0.0139088
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0183753   -0.0426367    0.0058860
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0087541   -0.0140860   -0.0034221
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0289895   -0.0449818   -0.0129973
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0304017   -0.0358664   -0.0249370
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0242462   -0.0353832   -0.0131091
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0106140   -0.0209237   -0.0003042
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0118356   -0.0204902   -0.0031810
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0173261   -0.0265860   -0.0080663
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0171642   -0.0226911   -0.0116373
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0175287   -0.0212862   -0.0137712
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0210019   -0.0231513   -0.0188525
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0087902   -0.0120821   -0.0054982
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0166967   -0.0188861   -0.0145073


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0342392   -0.0665521   -0.0019264
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0254448   -0.0636028    0.0127132
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.1586062   -0.1913606   -0.1258518
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0651938    0.0595783    0.0708094
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                 0.0642202    0.0489852    0.0794552
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0212379   -0.0443179    0.0018421
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0280549   -0.0030513    0.0591612
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1671388   -0.1860153   -0.1482623
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0050971   -0.0104963    0.0003021
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0093314   -0.0232659    0.0046030
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0808013   -0.0912137   -0.0703889
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0626340   -0.0709302   -0.0543379
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0720156   -0.0751021   -0.0689290
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0387210   -0.0435056   -0.0339363
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0177078   -0.0231267   -0.0122889
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0170788   -0.0222320   -0.0119257
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0193591   -0.0213957   -0.0173226
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0147196   -0.0167684   -0.0126707


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0245993   -0.0364421    0.0856406
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1076347   -0.0266811    0.2419504
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0035383   -0.1139509    0.1210276
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0190797   -0.0987671    0.0606077
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0465453   -0.0185447    0.1116354
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0412764   -0.1122180    0.0296652
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0407889    0.0305680    0.0510098
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0495144    0.0135932    0.0854355
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0220995   -0.0289252    0.0731242
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0819777   -0.1700788    0.0061235
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0423631   -0.1162986    0.0315724
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0315617   -0.1061291    0.0430058
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0377902   -0.0170467    0.0926272
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0704983   -0.1204436   -0.0205530
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0067606   -0.0310155    0.0445368
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0113097   -0.0217122   -0.0009073
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0213317   -0.0507851    0.0081216
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0238301   -0.0436309   -0.0040294
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0026945   -0.0534549    0.0588439
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                  0.0038517   -0.0415621    0.0492654
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0206608   -0.0524655    0.0111439
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0175330   -0.0445951    0.0095292
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0356176   -0.0532096   -0.0180255
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0698392    0.0021777    0.1375007
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0072325   -0.0134936   -0.0009713
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0110734    0.0018514    0.0202954
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0002775   -0.0100331    0.0105881
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0208603   -0.0472064    0.0054859
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0202355   -0.0371093   -0.0033616
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0061556   -0.0060556    0.0183667
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0012216   -0.0145806    0.0121374
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0001619   -0.0105831    0.0109070
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0034732   -0.0076074    0.0006610
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0079066   -0.0116519   -0.0041613
