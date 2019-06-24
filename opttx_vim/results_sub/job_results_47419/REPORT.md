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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                120     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                110     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                149     177
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     195
Birth       ki0047075b-MAL-ED          INDIA                          0                179     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                 25     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                142     167
Birth       ki0047075b-MAL-ED          PERU                           1                116     266
Birth       ki0047075b-MAL-ED          PERU                           0                150     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                231     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                115     116
Birth       ki1000109-EE               PAKISTAN                       1                  0       1
Birth       ki1000109-EE               PAKISTAN                       0                  1       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9192   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2127   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                493     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                109     602
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
6 months    ki1000109-EE               PAKISTAN                       1                224     371
6 months    ki1000109-EE               PAKISTAN                       0                147     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10674   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2679   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3255    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                917    4172
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1                368     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     455
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5276    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1396    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3140    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                869    4009


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
![](/tmp/2cacbdcf-a8cf-40ae-b69d-ace17db7a764/881b2186-d693-49a3-a57c-7d480665ab1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9653920   -1.1373687   -0.7934153
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0477386   -0.2686243    0.1731470
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6734089   -1.1636727   -0.1831450
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5741769   -0.9357116   -0.2126422
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.1088658   -0.0592821    0.2770137
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7353874   -0.7600035   -0.7107713
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3249538   -0.4431309   -0.2067766
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.2281066   -0.4345502   -0.0216629
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4273087    1.0362187    1.8183987
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4847377   -0.9130717   -0.0564037
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.4221552   -0.0016697    0.8459801
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.2044482    1.0485125    1.3603839
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.5192758   -0.6638876   -0.3746641
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.5654142   -0.6647660   -0.4660625
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.1864795   -0.0299044    0.4028635
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.5509577   -0.5747187   -0.5271968
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3406899   -0.3879458   -0.2934340
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.6760822   -0.8581289   -0.4940356
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.4538982    0.0066385    0.9011579
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.8882518   -1.1629689   -0.6135347
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4126631   -0.7456453   -0.0796810
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.1870428    0.0267484    0.3473373
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.9994814   -1.1152975   -0.8836653
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1137861   -0.3258003    0.0982281
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3208585   -1.3704054   -1.2713116
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.2303950   -1.2787054   -1.1820845


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9773043   -1.1153078   -0.8393008
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0816410   -1.2241126   -0.9391694
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0602256   -0.1729666    0.0525155
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7445605   -0.7677110   -0.7214100
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3861794   -0.4712311   -0.3011277
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1400243   -0.2696346   -0.0104140
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0562362    0.9338834    1.1785889
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.7256065   -0.8395859   -0.6116270
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6007161   -0.6897580   -0.5116742
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5834618   -0.6054534   -0.5614701
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3973178   -0.4385298   -0.3561058
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8227962   -0.9454140   -0.7001785
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1302000    0.0113848    0.2490152
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1186923   -1.2105469   -1.0268377
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3246418   -1.3519597   -1.2973238
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2418558   -1.2769820   -1.2067296


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0119123   -0.1494954    0.1256708
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.4314674    0.2409257    0.6220092
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4082322   -0.8820424    0.0655780
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3385177   -0.6741234   -0.0029119
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.1690913   -0.2884527   -0.0497300
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0091731   -0.0186681    0.0003219
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0612256   -0.1670017    0.0445504
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0880823   -0.0438249    0.2199895
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4555862   -0.8130360   -0.0981364
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2186592   -0.6359303    0.1986119
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3111100   -0.7011224    0.0789025
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1482120   -0.2762171   -0.0202069
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2063306   -0.3078520   -0.1048093
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0353019   -0.0794710    0.0088673
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.2062778    0.0320877    0.3804680
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0325040   -0.0427141   -0.0222940
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0566280   -0.0772772   -0.0359787
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1467140   -0.2860003   -0.0074277
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0072710   -0.3944608    0.3799188
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0640390   -0.3345026    0.2064247
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0362158   -0.2712820    0.3437135
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.0568428   -0.1766284    0.0629427
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.1192109   -0.2007367   -0.0376851
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0366665   -0.1148262    0.1881593
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0037833   -0.0475098    0.0399432
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0114608   -0.0444160    0.0214943
