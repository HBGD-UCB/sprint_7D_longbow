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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               193     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                34     227
Birth       ki0047075b-MAL-ED     BRAZIL                         1                97     177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                80     177
Birth       ki0047075b-MAL-ED     INDIA                          1               150     193
Birth       ki0047075b-MAL-ED     INDIA                          0                43     193
Birth       ki0047075b-MAL-ED     NEPAL                          1                97     166
Birth       ki0047075b-MAL-ED     NEPAL                          0                69     166
Birth       ki0047075b-MAL-ED     PERU                           1               177     265
Birth       ki0047075b-MAL-ED     PERU                           0                88     265
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               144     231
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                49     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                65     114
Birth       ki1000109-EE          PAKISTAN                       1                 1       1
Birth       ki1000109-EE          PAKISTAN                       0                 0       1
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             13739   15136
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1397   15136
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                28      31
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      31
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
6 months    ki1000109-EE          PAKISTAN                       1               349     375
6 months    ki1000109-EE          PAKISTAN                       0                26     375
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14763   16253
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1490   16253
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
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7495    8313
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               818    8313
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     151


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
![](/tmp/54dd6946-53d7-4820-8ca9-3af035a1b55c/f1b36aeb-c0f7-4290-ac5d-a48aa9c78245/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9442525   -1.1140072   -0.7744978
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.4736050    0.2440380    0.7031721
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.9934201   -1.1760436   -0.8107965
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.7679798   -0.9429164   -0.5930432
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0252730   -0.2027431    0.1521972
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.1076913   -0.1077568    0.3231394
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8589626    0.6037879    1.1141374
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7354141   -0.7684117   -0.7024166
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.1577985   -0.4069550    0.0913580
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           1.1105840    0.8779741    1.3431940
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.6457024   -0.7811053   -0.5102995
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1083815   -0.0857799    0.3025429
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           1.1772438    0.9596936    1.3947940
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.6645436    0.4362690    0.8928182
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6931124    0.4855441    0.9006807
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -0.6548737   -0.7693118   -0.5404356
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.5885007   -0.7959396   -0.3810619
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5845105   -0.6127181   -0.5563029
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.4245965   -0.6250995   -0.2240936
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.6788164   -0.9449274   -0.4127055
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.6385977    0.2933278    0.9838677
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.1506009   -1.3411589   -0.9600428
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.2734212   -0.4381239   -0.1087185
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2878800    0.0610219    0.5147381
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.4975546    0.3161601    0.6789491
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0563158   -0.1209684    0.2335999
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0903922   -1.3002836   -0.8805007
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2241447   -1.2997732   -1.1485162
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.5097913   -1.7387839   -1.2807987


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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7222456   -0.7423351   -0.7021562
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1245816   -0.2544517    0.0052886
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7105222   -0.8368775   -0.5841669
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1010587   -0.0308005    0.2329178
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0571296    0.9346064    1.1796528
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.5435551    0.3895443    0.6975659
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5063403    0.3745918    0.6380888
6 months    ki1000109-EE          PAKISTAN                       observed             observed          -0.7218667   -0.8355727   -0.6081607
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6194068   -0.7173394   -0.5214742
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.5929896   -0.6128338   -0.5731455
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.3657303   -0.5647992   -0.1666615
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8080769   -0.9302432   -0.6859106
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9551111   -1.0714034   -0.8388188
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3795556   -0.4938120   -0.2652991
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1242714    0.0054301    0.2431126
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.4157543    0.2953789    0.5361297
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0434286   -0.0830724    0.1699295
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1267450   -1.2257791   -1.0277110
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3031012   -1.3269655   -1.2792368
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.0137086   -1.1659964   -0.8614208


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0259237   -0.1604912    0.1086437
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0898762   -0.2326910    0.0529385
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0890152   -0.1936470    0.0156167
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.1504539   -0.2625450   -0.0383628
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0305761   -0.1593408    0.0981886
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1367389   -0.3108004    0.0373226
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0723837   -0.3013790    0.1566116
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0131685   -0.0120347    0.0383717
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0332169   -0.2087686    0.2752024
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1388616   -0.3030086    0.0252854
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0648198   -0.1443300    0.0146904
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0073228   -0.1366087    0.1219630
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1201142   -0.2867061    0.0464778
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1209885   -0.3007503    0.0587733
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1867722   -0.3465911   -0.0269532
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -0.0669929   -0.1087458   -0.0252401
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0309061   -0.2110087    0.1491965
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0084791   -0.0282818    0.0113236
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0588662   -0.1918546    0.3095870
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.1292605   -0.3809770    0.1224561
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1919705   -0.4352132    0.0512722
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed           0.1954898    0.0269983    0.3639812
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.1061343   -0.2219000    0.0096313
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1636086   -0.3413518    0.0141345
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0818003   -0.2188343    0.0552336
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0128872   -0.1148264    0.0890520
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0363529   -0.2330028    0.1602971
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0789565   -0.1507740   -0.0071389
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.4960827    0.2954425    0.6967230
