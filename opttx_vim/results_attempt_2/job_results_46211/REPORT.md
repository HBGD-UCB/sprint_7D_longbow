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

**Intervention Variable:** predfeed3

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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               205     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                35     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1               101     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                84     185
Birth       ki0047075b-MAL-ED     INDIA                          1               152     196
Birth       ki0047075b-MAL-ED     INDIA                          0                44     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                99     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                72     171
Birth       ki0047075b-MAL-ED     PERU                           1               183     272
Birth       ki0047075b-MAL-ED     PERU                           0                89     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                50     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                69     119
Birth       ki1000109-EE          PAKISTAN                       1                 2       2
Birth       ki1000109-EE          PAKISTAN                       0                 0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             16832   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1878   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               203     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                34     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1               116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                93     209
6 months    ki0047075b-MAL-ED     INDIA                          1               178     233
6 months    ki0047075b-MAL-ED     INDIA                          0                55     233
6 months    ki0047075b-MAL-ED     NEPAL                          1               132     233
6 months    ki0047075b-MAL-ED     NEPAL                          0               101     233
6 months    ki0047075b-MAL-ED     PERU                           1               183     270
6 months    ki0047075b-MAL-ED     PERU                           0                87     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               162     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               149     240
6 months    ki1000109-EE          PAKISTAN                       1               346     371
6 months    ki1000109-EE          PAKISTAN                       0                25     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14797   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1484   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               178     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                30     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                98     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                71     169
24 months   ki0047075b-MAL-ED     INDIA                          1               170     225
24 months   ki0047075b-MAL-ED     INDIA                          0                55     225
24 months   ki0047075b-MAL-ED     NEPAL                          1               128     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                97     225
24 months   ki0047075b-MAL-ED     PERU                           1               137     199
24 months   ki0047075b-MAL-ED     PERU                           0                62     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                81     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               151     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               131     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7520    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               821    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/19a257b6-8208-4c7f-a844-e4b5c263d4da/4913ec4f-b7c8-4373-aa08-862c00ced0d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.1072815   -1.3433561   -0.8712069
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.5654407   -0.7553234   -0.3755581
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.9488543   -1.2103834   -0.6873253
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.6122356   -0.8156166   -0.4088546
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.9034465   -1.0740493   -0.7328436
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.6523661   -0.8522032   -0.4525291
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6758719   -0.9034238   -0.4483200
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.5403668   -1.5602947   -1.5204389
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.3248151   -1.5801107   -1.0695195
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1466835   -0.0762650    0.3696319
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0414664   -1.2474331   -0.8354997
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.5437803   -0.6981982   -0.3893625
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.4141109   -1.5542590   -1.2739628
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.1369012   -1.3442709   -0.9295315
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3187253   -1.4897243   -1.1477263
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -2.3359062   -2.6361136   -2.0356987
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.2978505   -1.4761373   -1.1195636
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2912771   -1.3146510   -1.2679032
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1498799   -1.3353479   -0.9644118
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.8299828   -2.0855969   -1.5743687
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.3947805    0.1096090    0.6799520
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.4605019   -1.7292263   -1.1917776
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.1880592   -1.3835186   -0.9925999
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.7206263   -1.9077342   -1.5335184
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.5667050   -1.7475372   -1.3858729
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5274593   -2.7484881   -2.3064305
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.8791436   -2.0548756   -1.7034115
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0708419   -2.1350392   -2.0066446
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7195719   -1.8639038   -1.5752400


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9205882   -1.1394357   -0.7017408
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE          PAKISTAN                       observed             observed          -2.2056604   -2.3285064   -2.0828144
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6159762   -2.7525555   -2.4793968
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7671053   -1.9017670   -1.6324435


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0575731   -0.1625687    0.2777150
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1696403   -0.3262879   -0.0129928
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0609926   -0.2657617    0.1437765
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.1005714   -0.2364788    0.0353359
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0226932   -0.1548078    0.1094213
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0584922   -0.2028073    0.0858229
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2447163   -0.4742523   -0.0151803
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0053826   -0.0109914    0.0002263
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1238447   -0.0763082    0.3239976
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0956627   -0.2565799    0.0652545
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.1694849   -0.3397899    0.0008201
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0120137   -0.1334650    0.1094377
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.0911973   -0.0037858    0.1861805
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.0728655   -0.0636824    0.2094135
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0329205   -0.1796126    0.1137716
6 months    ki1000109-EE          PAKISTAN                       optimal              observed           0.1302458   -0.1551271    0.4156187
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0256794   -0.1727423    0.1213835
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0147508   -0.0216757   -0.0078259
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0840527   -0.1711077    0.0030023
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.1091758   -0.3432841    0.1249324
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.3529462   -0.5740948   -0.1317976
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.3828536   -0.6149885   -0.1507187
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0813185   -0.2239831    0.0613461
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0233938   -0.1575372    0.1107496
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0447389   -0.1391396    0.0496618
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0885169   -0.2623220    0.0852883
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0003399   -0.1516098    0.1522897
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0596622    0.0040975    0.1152269
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0475334   -0.0856234   -0.0094434
