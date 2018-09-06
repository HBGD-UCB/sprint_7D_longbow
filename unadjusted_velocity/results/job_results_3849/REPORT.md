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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/abf0b4b0-4e64-40dc-9081-9964075ca5d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/abf0b4b0-4e64-40dc-9081-9964075ca5d0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.6121032   3.5017656   3.7224409
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.5333552   3.4577162   3.6089942
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                4.0910918   3.9513520   4.2308316
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                3.9985062   3.8519573   4.1450552
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.5831942   3.4579893   3.7083991
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.5718997   3.4706586   3.6731407
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.8872096   3.7856234   3.9887958
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.7375261   3.6254686   3.8495837
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.3908515   3.2603439   3.5213592
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.2907403   3.2188863   3.3625944
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.4623463   3.3206338   3.6040588
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.4378906   3.3224673   3.5533139
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.3325440   3.0960290   3.5690590
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.5059172   3.4253286   3.5865058
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                2.6412584   2.5440159   2.7385009
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                2.7309418   2.5920373   2.8698463
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.6053707   3.5769708   3.6337707
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.5604854   3.4710867   3.6498841
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                3.2873297   3.1785757   3.3960837
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                3.3053134   3.2645602   3.3460665
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                3.2822252   3.2490795   3.3153709
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                3.4452016   3.4153178   3.4750855
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.7197263   3.7093631   3.7300896
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.2524854   3.0707437   3.4342271
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                3.6247887   3.5687796   3.6807978
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.6433861   3.6056524   3.6811197
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9172031   1.8440211   1.9903851
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9369597   1.8707527   2.0031668
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1011152   1.9924372   2.2097932
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.2033645   2.0888522   2.3178768
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.8690067   1.7596062   1.9784073
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.8937921   1.8227580   1.9648261
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.9901699   1.9142951   2.0660448
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.9360392   1.8542500   2.0178285
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0944476   1.9775389   2.2113564
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.9923082   1.9140108   2.0706057
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                2.0629822   1.9418851   2.1840792
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.9270336   1.8204567   2.0336105
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9204828   1.7563158   2.0846498
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8113725   1.7371330   1.8856120
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                2.0314703   1.9647410   2.0981997
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                1.9922299   1.8496818   2.1347779
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.9483749   1.9069932   1.9897567
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.8484674   1.7078244   1.9891104
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                2.1829205   2.0752819   2.2905591
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.9784344   1.9402819   2.0165868
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.6930443   1.6470219   1.7390667
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7520638   1.6747125   1.8294150
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.9928824   1.9613539   2.0244110
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.9693983   1.9410467   1.9977498
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9205159   1.9100622   1.9309695
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.7545917   1.4643772   2.0448063
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.8933936   1.8423579   1.9444293
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.9003534   1.8637251   1.9369818
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.1384663   1.1039114   1.1730212
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.0998784   1.0657757   1.1339811
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.3760740   1.3096725   1.4424756
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3984655   1.3348108   1.4621202
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.1510297   1.1035516   1.1985079
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                1.1009240   1.0661212   1.1357268
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.2262038   1.1889630   1.2634446
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.2171046   1.1839647   1.2502444
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.1911966   1.1252286   1.2571646
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.2169753   1.1793855   1.2545651
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.1924801   1.1184418   1.2665185
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.1846893   1.1356498   1.2337288
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9973446   0.9041567   1.0905325
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0028689   0.9624426   1.0432953
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0989934   1.0865915   1.1113953
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.0896784   1.0377231   1.1416337
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.2244209   1.1739731   1.2748687
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.2287305   1.2101771   1.2472840
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1650407   1.1408273   1.1892541
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.1676080   1.1298261   1.2053899
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.1982598   1.1810294   1.2154901
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.1940552   1.1782241   1.2098863
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.2085963   1.1915457   1.2256470
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.2004731   1.1875899   1.2133563
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8553460   0.8299395   0.8807524
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8416242   0.8212009   0.8620475
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9633023   0.9242074   1.0023971
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0025641   0.9545665   1.0505617
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8761487   0.8496900   0.9026075
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8832951   0.8604269   0.9061634
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8576315   0.8367048   0.8785583
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8674331   0.8451309   0.8897353
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8857690   0.8464831   0.9250549
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8323652   0.8084542   0.8562763
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8740609   0.8387921   0.9093297
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8693937   0.8399604   0.8988270
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7361236   0.6766021   0.7956450
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7720363   0.7466177   0.7974550
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.9038280   0.8751179   0.9325381
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8708415   0.8580031   0.8836800
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8261223   0.8057960   0.8464486
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8709373   0.8455893   0.8962854
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.7303422   0.6879803   0.7727040
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6869230   0.6507511   0.7230950
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8550973   0.8461613   0.8640333
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8461400   0.8396853   0.8525947


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0787480   -0.2125227    0.0550266
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0925856   -0.2950795    0.1099084
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0112945   -0.1723101    0.1497211
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.1496834   -0.3009337    0.0015669
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.1001112   -0.2490919    0.0488695
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0244557   -0.2072260    0.1583145
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1733732   -0.0764945    0.4232409
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0896834   -0.0798765    0.2592433
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0448853   -0.1327148    0.0429441
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0179837   -0.0981553    0.1341227
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.1629764    0.1183481    0.2076047
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.4672409   -0.6498092   -0.2846727
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0185974   -0.0496377    0.0868325
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0197566   -0.0789296    0.1184429
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.1022493   -0.0556240    0.2601226
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0247853   -0.1056537    0.1552243
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0541307   -0.1656945    0.0574331
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.1021394   -0.2428453    0.0385665
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.1359485   -0.2972654    0.0253683
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1091103   -0.2892833    0.0710627
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0392405   -0.1966341    0.1181532
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0999075   -0.2403749    0.0405598
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.2044861   -0.3186863   -0.0902860
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0590195   -0.0309876    0.1490266
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0234842   -0.0658853    0.0189169
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.1659241   -0.4561483    0.1243001
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0069599   -0.0558935    0.0698132
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0385879   -0.0871372    0.0099614
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0223915   -0.0695926    0.1143757
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0501057   -0.1089735    0.0087620
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0090992   -0.0589503    0.0407518
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.0257787   -0.0501474    0.1017048
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0077908   -0.0965971    0.0810154
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0055243   -0.0960546    0.1071033
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0093150   -0.0634612    0.0448312
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0043096   -0.0494418    0.0580610
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0025673   -0.0423077    0.0474423
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0042046   -0.0276034    0.0191943
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0081233   -0.0292586    0.0130120
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0137218   -0.0463193    0.0188757
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0392619   -0.0226427    0.1011665
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                  0.0071464   -0.0278253    0.0421181
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0098016   -0.0207814    0.0403845
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0534037   -0.0993942   -0.0074133
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0046672   -0.0506042    0.0412698
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0359128   -0.0288090    0.1006346
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0329864   -0.0644363   -0.0015365
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0448151    0.0123238    0.0773063
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0434191   -0.0991231    0.0122848
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0089573   -0.0194707    0.0015561
