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

agecat      studyid               country                        predfeed3    n_cell      n
----------  --------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               193    227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                34    227
Birth       ki0047075b-MAL-ED     BRAZIL                         1                97    177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                80    177
Birth       ki0047075b-MAL-ED     INDIA                          1               150    193
Birth       ki0047075b-MAL-ED     INDIA                          0                43    193
Birth       ki0047075b-MAL-ED     NEPAL                          1                97    166
Birth       ki0047075b-MAL-ED     NEPAL                          0                69    166
Birth       ki0047075b-MAL-ED     PERU                           1               177    265
Birth       ki0047075b-MAL-ED     PERU                           0                88    265
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87    231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               144    231
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                49    114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                65    114
Birth       ki1000109-EE          PAKISTAN                       1                 1      1
Birth       ki1000109-EE          PAKISTAN                       0                 0      1
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1              6710   7406
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0               696   7406
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 9      9
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 0      9
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               203    237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                34    237
6 months    ki0047075b-MAL-ED     BRAZIL                         1               116    209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                93    209
6 months    ki0047075b-MAL-ED     INDIA                          1               178    233
6 months    ki0047075b-MAL-ED     INDIA                          0                55    233
6 months    ki0047075b-MAL-ED     NEPAL                          1               132    233
6 months    ki0047075b-MAL-ED     NEPAL                          0               101    233
6 months    ki0047075b-MAL-ED     PERU                           1               183    270
6 months    ki0047075b-MAL-ED     PERU                           0                87    270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                86    248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               162    248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                91    240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               149    240
6 months    ki1000109-EE          PAKISTAN                       1               349    375
6 months    ki1000109-EE          PAKISTAN                       0                26    375
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379    458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79    458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              7350   8075
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               725   8075
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                20     22
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 2     22
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               178    208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                30    208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                98    169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                71    169
24 months   ki0047075b-MAL-ED     INDIA                          1               170    225
24 months   ki0047075b-MAL-ED     INDIA                          0                55    225
24 months   ki0047075b-MAL-ED     NEPAL                          1               128    225
24 months   ki0047075b-MAL-ED     NEPAL                          0                97    225
24 months   ki0047075b-MAL-ED     PERU                           1               137    199
24 months   ki0047075b-MAL-ED     PERU                           0                62    199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                81    232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               151    232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79    210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               131    210
24 months   ki1113344-GMS-Nepal   NEPAL                          1               336    404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                68    404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              3734   4145
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               411   4145
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                36     38
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 2     38


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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1128f6c3-6e3a-477d-bfff-d48227d3ee54/cc8b004c-0d4b-4a16-9e14-d084731d058d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9024110   -1.1180976   -0.6867244
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.4721693    0.2400386    0.7043000
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.9319014   -1.1022586   -0.7615442
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.7771511   -0.9505528   -0.6037494
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1933209   -0.3389122   -0.0477296
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.0233132   -0.1883016    0.2349280
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8602317    0.6084738    1.1119896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7667828   -0.8278111   -0.7057544
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.2267291   -0.4591957    0.0057375
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.9904588    0.7728375    1.2080800
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.6453387   -0.7815965   -0.5090810
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1741608   -0.0093831    0.3577046
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           1.1308410    0.9060039    1.3556780
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.6319981    0.3965181    0.8674781
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7144907    0.5221413    0.9068401
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -0.6572810   -0.7715263   -0.5430357
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.6267969   -0.8346625   -0.4189314
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5819510   -0.6110203   -0.5528818
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.7293151   -0.9946151   -0.4640151
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.6668366    0.3153103    1.0183629
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0615286   -1.2731651   -0.8498920
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3096142   -0.4844613   -0.1347672
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2556847    0.0229034    0.4884660
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.4720685    0.2717968    0.6723402
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0785264   -0.0959576    0.2530104
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0385320   -1.2769192   -0.8001448
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.1732499   -1.2733144   -1.0731853


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.9701762   -1.1093516   -0.8310008
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -1.0824352   -1.2259825   -0.9388879
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.9184337   -1.0582074   -0.7786600
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.0558491   -0.1687562    0.0570581
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.0290476   -0.1772448    0.1191495
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7865789    0.5832028    0.9899551
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7675034   -0.7946123   -0.7403944
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1245816   -0.2544517    0.0052886
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7105222   -0.8368775   -0.5841669
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1010587   -0.0308005    0.2329178
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0571296    0.9346064    1.1796528
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.5435551    0.3895443    0.6975659
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5063403    0.3745918    0.6380888
6 months    ki1000109-EE          PAKISTAN                       observed             observed          -0.7218667   -0.8355727   -0.6081607
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6194068   -0.7173394   -0.5214742
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.5895220   -0.6174288   -0.5616152
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8080769   -0.9302432   -0.6859106
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9551111   -1.0714034   -0.8388188
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3795556   -0.4938120   -0.2652991
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1242714    0.0054301    0.2431126
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.4157543    0.2953789    0.5361297
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0434286   -0.0830724    0.1699295
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1267450   -1.2257791   -1.0277110
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.2937057   -1.3268339   -1.2605775


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0677652   -0.2570950    0.1215646
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0884405   -0.2366775    0.0597965
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.1505338   -0.2641075   -0.0369602
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.1412826   -0.2491581   -0.0334072
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.1374718    0.0268517    0.2480920
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0523608   -0.2270985    0.1223768
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0736528   -0.3004548    0.1531493
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0007206   -0.0573649    0.0559237
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1021475   -0.1158844    0.3201795
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0187363   -0.1702563    0.1327837
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0651834   -0.1453674    0.0150005
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0731021   -0.1986358    0.0524316
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0737113   -0.2526707    0.1052480
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0884430   -0.2680303    0.0911444
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2081504   -0.3600608   -0.0562400
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -0.0645857   -0.1061235   -0.0230478
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0073901   -0.1739277    0.1887079
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0075710   -0.0155557    0.0004138
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0787618   -0.3282456    0.1707219
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.2202094   -0.4694118    0.0289931
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed           0.1064175   -0.0799702    0.2928051
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0699413   -0.1875795    0.0476969
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1314133   -0.3131439    0.0503173
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0563142   -0.2071320    0.0945037
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0350978   -0.1294770    0.0592813
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0882131   -0.3111259    0.1346998
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.1204558   -0.2133556   -0.0275559
