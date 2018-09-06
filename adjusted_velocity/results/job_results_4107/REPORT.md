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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
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
* brthmon
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
* delta_brthmon
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

agecat         studyid                   country                        earlybf    n_cell       n
-------------  ------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              92     243
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             151     243
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0             102     180
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              78     180
0-3 months     ki0047075b-MAL-ED         INDIA                          0              81     201
0-3 months     ki0047075b-MAL-ED         INDIA                          1             120     201
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              97     175
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              78     175
0-3 months     ki0047075b-MAL-ED         PERU                           0              68     271
0-3 months     ki0047075b-MAL-ED         PERU                           1             203     271
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              80     226
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             146     226
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     229
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             197     229
0-3 months     ki1000109-EE              PAKISTAN                       0             486     594
0-3 months     ki1000109-EE              PAKISTAN                       1             108     594
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1080    1168
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              88    1168
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98     720
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             622     720
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3255    6970
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3715    6970
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           39980   40090
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1             110   40090
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1024    3614
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2590    3614
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90     230
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140     230
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     229
3-6 months     ki0047075b-MAL-ED         INDIA                          1             136     229
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     238
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             148     238
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239
3-6 months     ki1000109-EE              PAKISTAN                       0             538     662
3-6 months     ki1000109-EE              PAKISTAN                       1             124     662
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1037    1124
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              87    1124
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     695
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602     695
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             592     850
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             258     850
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2406    5217
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2811    5217
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           25110   25160
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              50   25160
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1050    3680
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2630    3680
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     219
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             132     219
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194
6-12 months    ki0047075b-MAL-ED         INDIA                          0              90     224
6-12 months    ki0047075b-MAL-ED         INDIA                          1             134     224
6-12 months    ki0047075b-MAL-ED         NEPAL                          0             135     230
6-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     230
6-12 months    ki0047075b-MAL-ED         PERU                           0              62     237
6-12 months    ki0047075b-MAL-ED         PERU                           1             175     237
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     229
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     229
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     223
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             186     223
6-12 months    ki1000109-EE              PAKISTAN                       0               8       8
6-12 months    ki1000109-EE              PAKISTAN                       1               0       8
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1053    1137
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              84    1137
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94     676
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             582     676
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0             596     858
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1             262     858
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            1840    4055
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2215    4055
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0           19665   19665
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0   19665
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            2101    6224
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            4123    6224
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              81     205
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             124     205
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165
12-24 months   ki0047075b-MAL-ED         INDIA                          0              92     225
12-24 months   ki0047075b-MAL-ED         INDIA                          1             133     225
12-24 months   ki0047075b-MAL-ED         NEPAL                          0             132     226
12-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     226
12-24 months   ki0047075b-MAL-ED         PERU                           0              50     191
12-24 months   ki0047075b-MAL-ED         PERU                           1             141     191
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     227
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             137     227
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     207
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             174     207
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     495
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             424     495
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0             468     676
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1             208     676
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             122     263
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             141     263
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            9295    9295
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0    9295
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            2479    7128
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            4649    7128


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c0902801-65dc-4b23-b39f-93d00440539f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c0902801-65dc-4b23-b39f-93d00440539f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.6783298   3.5814486   3.7752109
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.5635914   3.4917566   3.6354261
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                4.0869474   3.9589002   4.2149945
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                4.0025803   3.8722295   4.1329312
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.5831942   3.4579893   3.7083991
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.5718997   3.4706586   3.6731407
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.8701991   3.7828348   3.9575633
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.7564129   3.6631046   3.8497213
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.3902705   3.2599387   3.5206023
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.2909367   3.2190980   3.3627754
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.4928278   3.3622509   3.6234048
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.4486302   3.3361630   3.5610974
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.0470461   2.8804292   3.2136631
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4985713   3.4186395   3.5785031
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                2.6745516   2.5793724   2.7697307
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                3.3573310   3.2590563   3.4556057
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.6033550   3.5745099   3.6322001
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.6366140   3.5849427   3.6882852
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                3.3616961   3.2568359   3.4665564
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                3.3071999   3.2664877   3.3479121
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                3.3456227   3.3154916   3.3757537
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                3.4671997   3.4390164   3.4953829
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.7197702   3.7094087   3.7301317
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.0673286   3.0346912   3.0999661
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                3.6381959   3.5871090   3.6892828
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.6382381   3.6023500   3.6741262
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                2.0213550   1.9620288   2.0806812
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9839248   1.9227373   2.0451122
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1011152   1.9924372   2.2097932
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.2033645   2.0888522   2.3178768
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.4763293   1.3613913   1.5912673
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.7116593   1.6354324   1.7878862
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.9901707   1.9142990   2.0660425
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.9360381   1.8542545   2.0178218
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.3122760   2.1979180   2.4266340
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                2.0192688   1.9410345   2.0975031
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.8126490   1.6973381   1.9279600
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.8312500   1.7261805   1.9363195
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9155355   1.7504053   2.0806658
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8123944   1.7383052   1.8864837
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                2.0163230   1.9510194   2.0816266
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                1.7121233   1.6084324   1.8158142
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.9455190   1.9032980   1.9877401
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.7292860   1.6616789   1.7968931
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                2.1659722   2.0889200   2.2430244
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.9801872   1.9429805   2.0173938
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.7031264   1.6586313   1.7476214
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.8118124   1.7455037   1.8781211
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.9710982   1.9419833   2.0002130
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.9586826   1.9325078   1.9848574
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9205746   1.9101166   1.9310325
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.8256505   1.8115180   1.8397831
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.8424799   1.8007802   1.8841796
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.8918672   1.8567423   1.9269920
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.0744955   1.0425118   1.1064791
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.0725971   1.0398638   1.1053304
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.3755120   1.3191509   1.4318731
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3978592   1.3430015   1.4527169
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.1411102   1.1022229   1.1799975
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                1.1074510   1.0765627   1.1383393
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.3016105   1.2639618   1.3392592
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.3627603   1.3290221   1.3964984
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.9472350   0.8903644   1.0041057
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.1800386   1.1427010   1.2173761
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.1437819   1.0920273   1.1955366
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.1734990   1.1306993   1.2162987
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9951174   0.9330232   1.0572115
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9995945   0.9607417   1.0384473
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0977229   1.0858341   1.1096117
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.8852000   0.8541344   0.9162656
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.2282084   1.1784650   1.2779519
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.2281190   1.2095922   1.2466459
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1610602   1.1372501   1.1848703
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.1472828   1.1127363   1.1818293
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.1833768   1.1676797   1.1990740
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.1865382   1.1721272   1.2009491
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.1990523   1.1834968   1.2146079
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.1979087   1.1854505   1.2103669
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7931391   0.7709709   0.8153072
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8160200   0.7969349   0.8351051
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9662121   0.9326949   0.9997293
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0034292   0.9635419   1.0433164
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8769517   0.8521538   0.9017496
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8828102   0.8607671   0.9048532
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8577928   0.8380120   0.8775736
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8672600   0.8466155   0.8879045
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8841961   0.8457320   0.9226603
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8329187   0.8091342   0.8567031
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8406602   0.8143282   0.8669922
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8534409   0.8275334   0.8793485
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7230546   0.6865617   0.7595474
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7704039   0.7460550   0.7947527
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.7941054   0.7726805   0.8155302
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8672570   0.8545233   0.8799908
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8317132   0.8125282   0.8508981
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8971805   0.8768155   0.9175454
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.7894214   0.7560042   0.8228386
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.7393592   0.7082215   0.7704969
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8524647   0.8440148   0.8609147
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8456994   0.8393941   0.8520047


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.5631693   3.5001026   3.6262360
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                3.4465475   3.3566656   3.5364293
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                3.3690914   3.3467990   3.3913838
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9292289   1.8797750   1.9786828
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.9784427   1.8974503   2.0594352
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.7109584   1.6711424   1.7507745
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.9802288   1.9591364   2.0013212
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9201861   1.9097195   1.9306528
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.1152078   1.0903637   1.1400520
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.1877172   1.1461593   1.2292750
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.1658247   1.1454282   1.1862212
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.1959631   1.1843049   1.2076212
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.2032152   1.1928290   1.2136015
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8470460   0.8311013   0.8629906
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8712442   0.8486351   0.8938532
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8399115   0.8236717   0.8561513
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.7070642   0.6793316   0.7347968
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8492552   0.8437966   0.8547138


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.1147384   -0.2319746    0.0024978
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0843670   -0.2475977    0.0788637
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0112945   -0.1723101    0.1497211
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.1137861   -0.2185786   -0.0089936
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0993338   -0.2480792    0.0494115
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0441976   -0.2157236    0.1273283
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4515252    0.2666362    0.6364141
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.6827795    0.5432515    0.8223075
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.0332590   -0.0198863    0.0864043
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0544963   -0.1669943    0.0580017
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.1215770    0.0810742    0.1620798
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.6524415   -0.6869261   -0.6179570
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0000422   -0.0588922    0.0589766
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0374302   -0.1230513    0.0481909
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.1022493   -0.0556240    0.2601226
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.2353300    0.0886312    0.3820288
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0541326   -0.1656842    0.0574190
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.2930071   -0.4316570   -0.1543573
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0186009   -0.1400029    0.1772048
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1031411   -0.2840210    0.0777388
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.3041997   -0.4271907   -0.1812087
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.2162330   -0.2882290   -0.1442371
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.1857850   -0.2671445   -0.1044256
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.1086860    0.0286881    0.1886839
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0124156   -0.0505185    0.0256874
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0949240   -0.1114347   -0.0784133
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0493873   -0.0029856    0.1017602
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0018984   -0.0469069    0.0431101
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0223471   -0.0439276    0.0886219
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0336592   -0.0746953    0.0073770
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0611497    0.0069000    0.1153994
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.2328035    0.1626427    0.3029643
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0297170   -0.0252589    0.0846929
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0044771   -0.0646597    0.0736139
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.2125229   -0.2376467   -0.1873992
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0000894   -0.0530054    0.0528266
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0137774   -0.0557515    0.0281968
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0031613   -0.0175777    0.0239004
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0011436   -0.0203401    0.0180528
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0228810   -0.0054598    0.0512217
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0372171   -0.0070691    0.0815032
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                  0.0058585   -0.0257433    0.0374602
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0094672   -0.0173218    0.0362562
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0512775   -0.0960592   -0.0064957
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0127808   -0.0242341    0.0497956
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0473493    0.0072253    0.0874733
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0731517    0.0480797    0.0982236
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0654673    0.0374437    0.0934909
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0500622   -0.0891820   -0.0109424
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0067653   -0.0166483    0.0031177
