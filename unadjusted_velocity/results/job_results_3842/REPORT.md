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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid               country                        predfeed3    n_cell       n
-------------  --------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                35     239
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               204     239
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                80     180
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1               100     180
0-3 months     ki0047075b-MAL-ED     INDIA                          0                46     199
0-3 months     ki0047075b-MAL-ED     INDIA                          1               153     199
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                73     175
0-3 months     ki0047075b-MAL-ED     NEPAL                          1               102     175
0-3 months     ki0047075b-MAL-ED     PERU                           0                89     268
0-3 months     ki0047075b-MAL-ED     PERU                           1               179     268
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               140     226
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     226
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     224
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     224
0-3 months     ki1000109-EE          PAKISTAN                       0                32     592
0-3 months     ki1000109-EE          PAKISTAN                       1               560     592
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              4246   39314
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             35068   39314
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                20     242
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               222     242
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                33     227
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               194     227
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                92     208
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1               116     208
3-6 months     ki0047075b-MAL-ED     INDIA                          0                53     229
3-6 months     ki0047075b-MAL-ED     INDIA                          1               176     229
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               101     232
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               131     232
3-6 months     ki0047075b-MAL-ED     PERU                           0                84     265
3-6 months     ki0047075b-MAL-ED     PERU                           1               181     265
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               150     235
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                85     235
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               144     233
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                89     233
3-6 months     ki1000109-EE          PAKISTAN                       0                44     660
3-6 months     ki1000109-EE          PAKISTAN                       1               616     660
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0               150     878
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               728     878
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0              2360   24630
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1             22270   24630
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 2      46
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                44      46
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                31     216
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               185     216
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                84     194
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1               110     194
6-12 months    ki0047075b-MAL-ED     INDIA                          0                53     223
6-12 months    ki0047075b-MAL-ED     INDIA                          1               170     223
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                99     227
6-12 months    ki0047075b-MAL-ED     NEPAL                          1               128     227
6-12 months    ki0047075b-MAL-ED     PERU                           0                72     236
6-12 months    ki0047075b-MAL-ED     PERU                           1               164     236
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               144     226
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                82     226
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136     217
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                81     217
6-12 months    ki1000109-EE          PAKISTAN                       0                 2       8
6-12 months    ki1000109-EE          PAKISTAN                       1                 6       8
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0               130     786
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1               656     786
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1828   19180
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1             17352   19180
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 2      36
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                34      36
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                29     202
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               173     202
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                69     165
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                96     165
12-24 months   ki0047075b-MAL-ED     INDIA                          0                54     223
12-24 months   ki0047075b-MAL-ED     INDIA                          1               169     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                97     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          1               126     223
12-24 months   ki0047075b-MAL-ED     PERU                           0                59     190
12-24 months   ki0047075b-MAL-ED     PERU                           1               131     190
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     224
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                78     224
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               126     203
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                77     203
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0               102     624
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1               522     624
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               944    9050
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              8106    9050
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                16     212
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               196     212


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
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/463b537e-6bfc-49f6-a3c2-b98b8d1e297b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/463b537e-6bfc-49f6-a3c2-b98b8d1e297b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                3.3966348   3.2429546   3.5503149
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                3.5971925   3.5284943   3.6658907
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                4.0344157   3.8802058   4.1886255
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                4.0642160   3.9289608   4.1994711
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                3.5736379   3.4156791   3.7315966
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                3.5636935   3.4762273   3.6511597
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                3.9069501   3.7874855   4.0264148
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                3.7586177   3.6617791   3.8554564
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                3.2344034   3.1113222   3.3574846
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                3.3580193   3.2855866   3.4304520
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                3.4725503   3.3560286   3.5890719
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                3.3999027   3.2585951   3.5412104
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                3.3915117   3.2924118   3.4906116
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6440889   3.5243959   3.7637819
0-3 months     ki1000109-EE          PAKISTAN                       0                    NA                2.6781737   2.4165257   2.9398218
0-3 months     ki1000109-EE          PAKISTAN                       1                    NA                2.6538213   2.5665982   2.7410444
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                3.6665275   3.6345381   3.6985168
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                3.7256050   3.7147277   3.7364824
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                3.6400973   3.3271866   3.9530079
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                3.8113327   3.7093184   3.9133470
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                2.0452189   1.9240269   2.1664109
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.9141857   1.8607835   1.9675879
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                2.2794845   2.1572151   2.4017540
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                2.0433885   1.9437209   2.1430561
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.8738926   1.7299167   2.0178685
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.8866877   1.8197675   1.9536080
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                2.0684633   1.9815985   2.1553280
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.8863103   1.8158977   1.9567229
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                2.1195192   1.9969145   2.2421238
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.9742886   1.8968022   2.0517751
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.9978800   1.8969163   2.0988438
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.9376178   1.8014237   2.0738120
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8853167   1.7973766   1.9732569
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7317386   1.6215296   1.8419476
3-6 months     ki1000109-EE          PAKISTAN                       0                    NA                1.9408762   1.6912610   2.1904915
3-6 months     ki1000109-EE          PAKISTAN                       1                    NA                2.0312708   1.9688785   2.0936631
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.6467525   1.5453471   1.7481578
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.7174264   1.6723975   1.7624552
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                2.0014754   1.9698377   2.0331132
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.9099954   1.8991922   1.9207987
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.1395704   1.0666940   1.2124467
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.1104070   1.0837626   1.1370514
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.3746013   1.2973039   1.4518986
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.3953155   1.3388625   1.4517684
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                1.1925931   1.1298053   1.2553809
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                1.0986498   1.0674794   1.1298202
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                1.2352913   1.1951739   1.2754088
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                1.2139146   1.1801472   1.2476819
6-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                1.1829568   1.1205519   1.2453617
6-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                1.2216366   1.1832614   1.2600119
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.1933103   1.1400555   1.2465651
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.1966594   1.1292780   1.2640409
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9959031   0.9506143   1.0411920
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0083737   0.9415365   1.0752109
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.1971476   1.1508458   1.2434494
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.1562114   1.1316513   1.1807714
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                1.1027982   1.0812667   1.1243297
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.1063008   1.0992399   1.1133617
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8490741   0.8053636   0.8927847
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8444468   0.8270894   0.8618042
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.9956321   0.9516172   1.0396470
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.9715565   0.9293385   1.0137745
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.9371244   0.9063571   0.9678917
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8632290   0.8432006   0.8832574
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.8745159   0.8506098   0.8984220
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.8523057   0.8326217   0.8719897
12-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.8581038   0.8192651   0.8969425
12-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8418161   0.8173167   0.8663155
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.8808888   0.8520683   0.9097093
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.8528162   0.8175509   0.8880815
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7692616   0.7375017   0.8010214
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7580519   0.7228181   0.7932857
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8190084   0.7840632   0.8539536
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8398709   0.8211137   0.8586281
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.8177532   0.8013823   0.8341240
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.7938546   0.7882408   0.7994684
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.8286459   0.7683653   0.8889265
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.8508647   0.8271438   0.8745856


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                3.5678222   3.5043711   3.6312732
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                3.5659922   3.4894688   3.6425155
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                3.3169678   3.2532502   3.3806854
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                3.4449056   3.3547788   3.5350324
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4805903   3.4021811   3.5589994
0-3 months     ki1000109-EE          PAKISTAN                       NA                   NA                2.6551376   2.5714235   2.7388517
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                3.7192245   3.7088675   3.7295816
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                3.7971810   3.7001091   3.8942529
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.9332346   1.8839439   1.9825252
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.9656096   1.9095163   2.0217030
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                2.0203240   1.9541588   2.0864891
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.9760831   1.8948819   2.0572842
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8266539   1.7572406   1.8960671
3-6 months     ki1000109-EE          PAKISTAN                       NA                   NA                2.0252445   1.9646316   2.0858574
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.7053522   1.6641174   1.7465871
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.9187609   1.9082629   1.9292589
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.1145925   1.0894523   1.1397328
6-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                1.1209771   1.0924290   1.1495253
6-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.2232375   1.1973421   1.2491328
6-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                1.2098360   1.1769906   1.2426814
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.1945255   1.1527026   1.2363484
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0005581   0.9627597   1.0383564
6-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.1629820   1.1410485   1.1849155
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.1059670   1.0990549   1.1128791
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8451111   0.8289738   0.8612484
12-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8811230   0.8637093   0.8985366
12-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8619667   0.8466720   0.8772613
12-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8468739   0.8260907   0.8676570
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.8711135   0.8486025   0.8936245
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7650096   0.7411815   0.7888377
12-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8364607   0.8197402   0.8531812
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.7963475   0.7909428   0.8017521
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.8491878   0.8267526   0.8716231


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                  0.2005577    0.0322217    0.3688938
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0298003   -0.1753207    0.2349213
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0099444   -0.1905027    0.1706139
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.1483324   -0.3021164    0.0054516
0-3 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           1                    0                  0.1236159   -0.0191968    0.2664287
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0726475   -0.2558009    0.1105058
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2525772    0.0971835    0.4079709
0-3 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN                       1                    0                 -0.0243525   -0.3001560    0.2514511
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0590775    0.0255269    0.0926282
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    0                  0.1712354   -0.1573817    0.4998526
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.1310332   -0.2634692    0.0014028
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.2360960   -0.3938409   -0.0783511
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    0                  0.0127951   -0.1459732    0.1715635
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.1821530   -0.2939717   -0.0703342
3-6 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           1                    0                 -0.1452305   -0.2902686   -0.0001925
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0602622   -0.2297984    0.1092740
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1535781   -0.2945728   -0.0125835
3-6 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN                       1                    0                  0.0903946   -0.1669002    0.3476893
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0706739   -0.0402794    0.1816272
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0914800   -0.1240360   -0.0589240
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0291633   -0.1067577    0.0484310
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0207142   -0.0750032    0.1164315
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0939433   -0.1640426   -0.0238441
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0213768   -0.0738138    0.0310603
6-12 months    ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU                           1                    0                  0.0386798   -0.0345802    0.1119399
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                  0.0033491   -0.0825364    0.0892347
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0124706   -0.0682654    0.0932066
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 -0.0409362   -0.0933486    0.0114761
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0035026   -0.0184276    0.0254328
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0046273   -0.0516581    0.0424034
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.0240756   -0.0850647    0.0369135
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0738954   -0.1106073   -0.0371835
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0222102   -0.0531773    0.0087569
12-24 months   ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU                           1                    0                 -0.0162877   -0.0622079    0.0296325
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0280726   -0.0736167    0.0174715
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0112097   -0.0586450    0.0362256
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0208626   -0.0187985    0.0605236
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0238986   -0.0409086   -0.0068886
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                  0.0222188   -0.0424627    0.0869002
