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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             159     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              97     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1              83     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0             108     191
Birth       ki0047075b-MAL-ED         INDIA                          1             124     205
Birth       ki0047075b-MAL-ED         INDIA                          0              81     205
Birth       ki0047075b-MAL-ED         NEPAL                          1              79     173
Birth       ki0047075b-MAL-ED         NEPAL                          0              94     173
Birth       ki0047075b-MAL-ED         PERU                           1             214     287
Birth       ki0047075b-MAL-ED         PERU                           0              73     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     123
Birth       ki1000109-EE              PAKISTAN                       1               1       2
Birth       ki1000109-EE              PAKISTAN                       0               1       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              14     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             163     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              23      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6533   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5786   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             212   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           19329   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             566     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             256     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              68     372
6 months    ki1000109-EE              PAKISTAN                       0             304     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3968    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3397    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0             319     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             214     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             185     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0c118773-5511-4115-8a1e-de1f7061907b/ac4e785e-eff9-405e-8676-e98a43ab38dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9919039   -1.1469771   -0.8368306
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.7158477   -0.9237876   -0.5079079
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9802581   -1.1630632   -0.7974530
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.7515518   -1.0057764   -0.4973272
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.8881152   -1.0404161   -0.7358144
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6073969   -0.7770858   -0.4377079
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8426236   -1.3070515   -0.3781958
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.2723471   -1.6970931   -0.8476011
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4659482   -0.4967582   -0.4351381
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.1974859   -1.2688853   -1.1260865
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.4740363   -1.5699302   -1.3781424
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.1760675   -1.3240905   -1.0280446
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0062831   -0.1893516    0.2019178
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.4406272   -1.6284718   -1.2527827
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4564098   -0.6073709   -0.3054487
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4294759   -1.5869003   -1.2720515
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.0292063   -1.2034083   -0.8550042
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3157520   -1.4428998   -1.1886043
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.0040909   -2.3438420   -1.6643399
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4227421   -1.5568059   -1.2886783
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0722709   -1.2674272   -0.8771145
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1432043   -1.2953690   -0.9910396
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.8660901   -0.9026027   -0.8295775
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.3526195    0.2422152    0.4630238
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.3539047   -1.4017509   -1.3060585
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.9738916   -2.1665301   -1.7812532
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0331082   -0.1967380    0.2629544
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.7733016   -1.9592022   -1.5874011
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.1685258   -1.3399830   -0.9970685
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.5753312   -1.8040761   -1.3465864
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.6643527   -1.8757154   -1.4529900
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5716590   -2.7163774   -2.4269405
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.2407341   -1.4082901   -1.0731780
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.5764430   -1.7219290   -1.4309571
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -2.2992124   -2.4802079   -2.1182169
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7315259   -1.7842896   -1.6787622


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.0876172   -1.2136298   -0.9616045
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0138537   -1.1537563   -0.8739510
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.6902024   -0.8168430   -0.5635618
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.3661582   -1.6025814   -1.1297350
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.4898628   -0.5117273   -0.4679983
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5752894   -1.5950861   -1.5554927
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2063264   -1.3242819   -1.0883709
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0599367   -1.1887637   -0.9311096
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.2991993   -1.3810668   -1.2173319
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.8848717   -0.9125215   -0.8572218
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9381280   -2.0644004   -1.8118555
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6144681   -1.7508611   -1.4780751
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8698242   -1.9591140   -1.7805343
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -2.3716792   -2.4955680   -2.2477904
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0957133   -0.1989788    0.0075522
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0450947   -0.1840167    0.0938273
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0335956   -0.1623842    0.0951931
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.0426501   -0.1290597    0.2143599
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0441147   -0.1566374    0.0684079
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0828056   -0.2034462    0.0378350
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0911975   -0.5118972    0.3295022
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.0938111   -0.4184141    0.2307919
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0239146   -0.0454715   -0.0023577
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.3778035   -0.4465657   -0.3090413
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0236279   -0.0716136    0.0243578
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0302589   -0.1239551    0.0634373
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0447377   -0.0897251    0.1792004
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed           0.2202600    0.0922799    0.3482401
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1046495   -0.2000129   -0.0092861
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.1026749   -0.0221139    0.2274637
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0307304   -0.1691915    0.1077307
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0443694   -0.1088704    0.0201316
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.1963795   -0.5027253    0.1099664
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0208858   -0.0845836    0.1263552
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1264075   -0.3061511    0.0533362
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1559951   -0.2844400   -0.0275501
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0187816   -0.0427620    0.0051989
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.6657127   -1.7776420   -1.5537834
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0091107   -0.0186135    0.0368348
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0357637   -0.0941134    0.1656407
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0087261   -0.1564219    0.1738742
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0725133   -0.2157317    0.0707050
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1066935   -0.2113333   -0.0020538
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1747683   -0.3759784    0.0264419
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0498846   -0.1201778    0.2199470
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0342289   -0.0967394    0.0282817
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1887990   -0.3507457   -0.0268523
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.2933811   -0.4236868   -0.1630755
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0724668   -0.1984833    0.0535497
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0267422   -0.0684998    0.0150153
