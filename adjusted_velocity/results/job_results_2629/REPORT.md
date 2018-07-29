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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

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
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98     720
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             622     720
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           19990   20045
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1              55   20045
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0             512    1807
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1295    1807
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0             102     180
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              78     180
0-3 months     ki0047075b-MAL-ED         INDIA                          0              81     201
0-3 months     ki0047075b-MAL-ED         INDIA                          1             120     201
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1080    1168
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              88    1168
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              97     175
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              78     175
0-3 months     ki1000109-EE              PAKISTAN                       0             243     297
0-3 months     ki1000109-EE              PAKISTAN                       1              54     297
0-3 months     ki0047075b-MAL-ED         PERU                           0              68     271
0-3 months     ki0047075b-MAL-ED         PERU                           1             203     271
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              80     226
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             146     226
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     229
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             197     229
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3255    6970
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3715    6970
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90     230
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140     230
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     695
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602     695
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           12555   12580
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              25   12580
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0             525    1840
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1315    1840
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     229
3-6 months     ki0047075b-MAL-ED         INDIA                          1             136     229
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1037    1124
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              87    1124
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             296     425
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             129     425
3-6 months     ki1000109-EE              PAKISTAN                       0             269     331
3-6 months     ki1000109-EE              PAKISTAN                       1              62     331
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     238
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             148     238
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2406    5217
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2811    5217
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     219
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             132     219
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94     676
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             582     676
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0            9839    9839
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1093    3160
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            2067    3160
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194
6-12 months    ki0047075b-MAL-ED         INDIA                          0              90     224
6-12 months    ki0047075b-MAL-ED         INDIA                          1             134     224
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1053    1137
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              84    1137
6-12 months    ki0047075b-MAL-ED         NEPAL                          0             135     230
6-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     230
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0             298     429
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1             131     429
6-12 months    ki1000109-EE              PAKISTAN                       0               4       4
6-12 months    ki0047075b-MAL-ED         PERU                           0              62     237
6-12 months    ki0047075b-MAL-ED         PERU                           1             175     237
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     229
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     229
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     223
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             186     223
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            1840    4055
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2215    4055
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              81     205
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             124     205
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     495
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             424     495
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            4653    4653
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1304    3637
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2333    3637
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165
12-24 months   ki0047075b-MAL-ED         INDIA                          0              92     225
12-24 months   ki0047075b-MAL-ED         INDIA                          1             133     225
12-24 months   ki0047075b-MAL-ED         NEPAL                          0             132     226
12-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     226
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0             234     338
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1             104     338
12-24 months   ki0047075b-MAL-ED         PERU                           0              50     191
12-24 months   ki0047075b-MAL-ED         PERU                           1             141     191
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     227
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             137     227
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     207
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             174     207
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             122     263
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             141     263


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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##        y_rate_haz
## earlybf -0.385053515235457 -0.314194483516483 -0.306633218918919
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.299221195121951 -0.287591141689373 -0.275000301369863
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.26143279338843 -0.254975571428571 -0.252912339779006
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.231865008196721 -0.224425921621622 -0.21833357260274
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.203892164835165 -0.203052024324324 -0.19770855
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf -0.195236669421488 -0.194831294594595 -0.180033981081081
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.177295203208556 -0.176053182065217 -0.175610229281768
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.171560133514986 -0.170991178378378 -0.170936826446281
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.17000018630137 -0.168888306629834 -0.168704647540984
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.168614315217391 -0.166747198347107 -0.165000180821918
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.163458166204986 -0.162887245901639 -0.161126302702703
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.158842766666667 -0.154968552845528 -0.15463238547486
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.154133142857143 -0.153754747252747 -0.153745614754098
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.153361512605042 -0.151247876373626 -0.150430418478261
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.150403019337017 -0.150033857142857 -0.149617281081081
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.147525138964578 -0.146201817679558 -0.144521337016575
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.143989420168067 -0.143727263736264 -0.143539483146067
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.143381174386921 -0.143333490410959 -0.143236537396122
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.142655142857143 -0.142324131016043 -0.14211081147541
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.141492727019499 -0.140771504132231 -0.139375714285714
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.138413073033708 -0.138333484931507 -0.13818339516129
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.138181130193906 -0.137444446524064 -0.137286186486487
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.136916142857143 -0.13683393495935 -0.136379225543478
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.136206651098901 -0.135743950413223 -0.134995466292135
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.134631295081967 -0.133765319327731 -0.133495516666667
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.133435659400545 -0.133391673184358 -0.13312572299169
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.132864156593407 -0.132650608333333 -0.130833476712329
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.13012048773842 -0.129755451523546 -0.128783799442897
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.128590926829268 -0.128371556451613 -0.128113817934783
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.127982836065574 -0.127850414835165 -0.127634108991826
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.127553903225806 -0.127151778688525 -0.126594645251397
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.125833471232877 -0.125489663934426 -0.125195809392265
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.125046433333333 -0.125000136986301 -0.124807654891304
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.124618285714286 -0.124166802739726 -0.123981114130435
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.123672296703297 -0.123490144414169 -0.123465637096774
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.123356616666667 -0.123333468493151 -0.123175066115702
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.122996491803279 -0.122978571428571 -0.122836673076923
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.122337140495868 -0.121832558583106 -0.1216668
##       0                  1                  1          1
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.121501491847826 -0.121499214876033 -0.120647245810056
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.120503319672131 -0.119976983333333 -0.119672262295082
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.119494178571429 -0.119314127071823 -0.119200581081081
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.118985438016529 -0.118287166666667 -0.118059428571429
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.117959501385042 -0.11792570855615 -0.117875016260163
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.117769395543176 -0.117179090163934 -0.117116933518006
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116987307692308 -0.116859801089918 -0.116793406077348
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116666794520548 -0.116348032786885 -0.116324490084986
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116151684065934 -0.115873142857143 -0.115795479892761
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.115516975409836 -0.115202215258856 -0.115112925414365
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.114480436813187 -0.114373422343324 -0.114268143243243
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.114166791780822 -0.113960142857143 -0.113850217877095
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.113644813186813 -0.113119958677686 -0.11283614516129
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.112715836512262 -0.112592204419889 -0.11253363538874
##       0                  2                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.112409543478261 -0.112061526315789 -0.111838562674095
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.111751964088398 -0.111666789041096 -0.111500571428571
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.111444107438016 -0.111280609756098 -0.110979851351351
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.110911723756906 -0.110833454794521 -0.110680714285714
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.110606181818182 -0.110530631147541 -0.110451703910614
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.109533822714681 -0.108979620320856 -0.108930330578512
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108807707317073 -0.108631071428571 -0.108456329758713
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108391002762431 -0.108037459016393 -0.107550762430939
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.107450298913044 -0.107159105691057 -0.106914286103542
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.106800210674157 -0.106710522099448 -0.106623758152174
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.106416553719008 -0.106294919354839 -0.105544286885246
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104740702479339 -0.104686203252033 -0.104452953296703
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104121857142857 -0.103902776859504 -0.103841959677419
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.103317595108696 -0.103078816666667 -0.103051114754098
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.102781706043956 -0.102737257978723 -0.102500112328767
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.102233908333333 -0.102226925619835 -0.102220057377049
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.102213300813008 -0.101669080110497 -0.101389 -0.101108144044321
##       0                  1                  1         2                  1
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf -0.100837972826087 -0.100577888 -0.100557942622951
##       0                  1            1                  1
##       1                  0            0                  0
##        y_rate_haz
## earlybf -0.100551074380165 -0.100274835164835 -0.100265576177285
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.100033532085561 -0.0995014388297872 -0.0994392115384615
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0994230083102493 -0.0991848913043478 -0.0991667753424657
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0988752231404959 -0.0988752231404958 -0.098854275
##       0                   1                   1            1
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0986263569482289 -0.0983334410958904 -0.0983081187845304
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0980647704918033 -0.0980372975206611 -0.0978266837837838
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0977975640326976 -0.0975318097826087 -0.0975001068493151
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.097500106849315 -0.0974678784530387 -0.0974351114206128
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0972337131147541 -0.0971993719008264 -0.0969323406593407
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0969323406593406 -0.0968953047091413 -0.0966667726027397
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0964830806451613 -0.0964026557377049 -0.0963614462809917
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0962244128686327 -0.0961399782016349 -0.096096717032967
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0960527368421053 -0.095967128342246 -0.0958334383561644
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0957405877437326 -0.0956188943089431 -0.095523520661157
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0954746416666667 -0.0952610934065934 -0.0950521875
##       0                   2                   1             2
##       1                   0                   0             0
##        y_rate_haz
## earlybf -0.095000104109589 -0.0947945934959349 -0.0944823923705722
##       0                  3                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0944254697802198 -0.0943676011080332 -0.0943087625698324
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0942256467391304 -0.0941667698630137 -0.0940301209677419
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0939702926829268 -0.0939094836065574 -0.0936535994550409
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0934637142857143 -0.0933334356164384 -0.0932666767955801
##       0                   4                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0932124677419355 -0.0931459918699187 -0.0930097438016529
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0929399166666666 -0.0928248065395095 -0.0927542225274725
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0926824653739612 -0.0926095055865922 -0.0925725652173913
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.092500101369863 -0.0924264364640884 -0.0923515403899721
##       0                  1                   4                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.092247368852459 -0.0921718181818182 -0.0920950083333333
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0919960136239782 -0.0919185989010989 -0.091824
##       0                   1                   2         1
##       1                   0                   0         0
##        y_rate_haz
## earlybf -0.091759877094972 -0.0916667671232877 -0.0914973902439024
##       0                  1                   2                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0914163114754098 -0.0913338925619835 -0.0913338925619834
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0913316461126005 -0.0912501 -0.0908334328767123
##       0                   1          1                   1
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0907595080645161 -0.090745955801105 -0.0905161849865952
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0904959669421488 -0.0903384277929155 -0.0902473516483517
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0901842857142857 -0.0900929429347826 -0.0899057154696133
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0898487886178862 -0.0897541967213115 -0.0895096348773842
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0894608823529412 -0.089411728021978 -0.0893644285714286
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0893121939058172 -0.0891667643835616 -0.0890654751381215
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.089024487804878 -0.0887838810810811 -0.088715375
##       0                  1                   1            1
##       1                  0                   0            0
##        y_rate_haz
## earlybf -0.0886808419618529 -0.0885761043956044 -0.0885445714285714
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0884398614130435 -0.0883334301369863 -0.0882252348066299
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0881152311977716 -0.0880920819672131 -0.0878520490463215
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.087834320855615 -0.0876133206521739 -0.0872610245901639
##       0                  1                   3                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0872543404825737 -0.0871442644628099 -0.0870255583333333
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0870232561307902 -0.0869048571428571 -0.0867844903047092
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0865515853658537 -0.0865515853658536 -0.0865447541436464
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0864388793565684 -0.0864299672131148 -0.0861944632152589
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.086085 -0.0860692335164835 -0.0859419224376731
##       0         1                   2                   1
##       1         0                   0                   0
##        y_rate_haz
## earlybf -0.0857045138121547 -0.085623418230563 -0.0855989098360656
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0855734456824512 -0.0854684132231405 -0.0852336098901099
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.08516676 -0.0850993545706371 -0.0850000931506849
##       0           1                   1                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0849628491620112 -0.084864273480663 -0.0848079571045576
##       0                   1                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0846304876033058 -0.0843979862637363 -0.0843071576086957
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0839924959785523 -0.0839367950819672 -0.083792561983471
##       0                   1                   3                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0837080844686648 -0.0835813002832861 -0.0835623626373626
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0834806168478261 -0.0834006290322581 -0.0833334246575342
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0831837928176796 -0.0831770348525469 -0.083105737704918
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0830293702702703 -0.082726739010989 -0.0825716509695291
##       0                   1                  3                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0825000904109589 -0.082430081300813 -0.0822746803278688
##       0                   2                  1                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0822072972972973 -0.0821167107438017 -0.0819857142857143
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.081827535326087 -0.0817653225806452 -0.0817290831024931
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0816057804878049 -0.0815461126005362 -0.0815033121546961
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0814436229508197 -0.0812787851239669 -0.0812217057220708
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0811658571428572 -0.0811112 -0.0810554917582418
##       0                   1          1                   1
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0810009945652174 -0.0808334219178082 -0.0807814796747968
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0807814796747967 -0.0807306514745308 -0.0802198681318681
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0800000876712329 -0.0799571788617886 -0.0797815081967213
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.079701513368984 -0.0793842445054945 -0.079201379501385
##       0                  1                   2                  1
##       1                  0                   0                  0
##        y_rate_haz
## earlybf -0.0791667534246575 -0.078982591160221 -0.0789190054054054
##       0                   3                  3                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0787953509749304 -0.0787650082644628 -0.0787353269754768
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0787062857142857 -0.078358811634349 -0.0783334191780822
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0781193934426229 -0.0780969324324324 -0.0780749518716577
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0779270826446281 -0.0779065340599455 -0.0778864285714286
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.077866752 -0.0776948315217391 -0.0776770564516129
##       0            1                   1                   1
##       1            0                   0                   0
##        y_rate_haz
## earlybf -0.0775327647058824 -0.077516243767313 -0.0775000849315068
##       0                   1                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0774842764227642 -0.0774688069705094 -0.0773021104972376
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0772616711229946 -0.0770891570247934 -0.0770665714285714
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0768773736263736 -0.0768682907608695 -0.0766667506849315
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0764618701657458 -0.0764572786885246 -0.0762559521126761
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0762489482288828 -0.07604175 -0.0758378847184987
##       0                   1           3                   1
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.0758334164383562 -0.075831108033241 -0.0756307135135135
##       0                   1                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0756262213114754 -0.0756216298342541 -0.0754268571428571
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0754201553133515 -0.075413305785124 -0.0752152092391304
##       0                   1                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0752061263736264 -0.0750113739837398 -0.0750000821917808
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0749767394957983 -0.0748218288770053 -0.0748086405405405
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0747951639344262 -0.0745913623978201 -0.0744064435483871
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0743886684782609 -0.0743705027472528 -0.0743705027472527
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0743329466292135 -0.0741870731707317 -0.0741667479452055
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0737871428571429 -0.0737625694822888 -0.0737374545454546
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0735887903225806 -0.0735348791208791 -0.073507025
##       0                   1                   2            2
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0733627723577236 -0.0733334136986301 -0.073303404432133
##       0                   2                   3                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0731644945945946 -0.073100908839779 -0.07300008
##       0                   2                  2           1
##       1                   0                  0           0
##        y_rate_haz
## earlybf -0.0729337765667575 -0.0728995289256198 -0.0728059308510638
##       0                   2                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0727355869565217 -0.0726992554945055 -0.0726621166666667
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0725384715447154 -0.0725000794520548 -0.072460836565097
##       0                   2                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0724207142857143 -0.0723019918032787 -0.0722606685082873
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0720616033057851 -0.0718636318681319 -0.0718172083333333
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0716667452054794 -0.071568705882353 -0.0715687058823529
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0714709344262295 -0.0714204281767956 -0.0712761907356948
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0712236776859504 -0.0711699944289694 -0.0711699944289693
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0710280082417582 -0.0708334109589041 -0.0707757008310249
##       0                   3                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0707166974789916 -0.0706398770491803 -0.0705801878453039
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0705077142857143 -0.0703857520661157 -0.0703790664893617
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0702582929577465 -0.0702559646739131 -0.070255964673913
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0701923846153846 -0.0701296568364611 -0.0700000767123288
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0699331329639889 -0.0698088196721311 -0.0697399475138122
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0697399475138121 -0.069547826446281 -0.0695005241935484
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0694754707520891 -0.0694294239130435 -0.069356760989011
##       0                   1                   1                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0692824833333334 -0.0692412682926829 -0.0691667424657534
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0690905650969529 -0.0690541297297297 -0.068977762295082
##       0                   1                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0688997071823205 -0.068868 -0.0687898119891008
##       0                   1         1                   2
##       1                   0         0                   0
##        y_rate_haz
## earlybf -0.0687099008264463 -0.0686828709677419 -0.0686028831521739
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0685211373626374 -0.068437575 -0.0683334082191781
##       0                   1            1                   1
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0682479972299169 -0.0682320567567568 -0.0681467049180328
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0680594668508287 -0.0680481428571428 -0.0679610190735695
##       0                   4                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0678719752066116 -0.0678652177419355 -0.0677809470752089
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0677763423913044 -0.0675926666666667 -0.0675023021390374
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0675000739726027 -0.0674054293628809 -0.0673156475409836
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0672282857142857 -0.067219226519337 -0.0670340495867769
##       0                   1                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0668678123324397 -0.0668498901098901 -0.0667683658536585
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0666667397260274 -0.0665879108108108 -0.0665628614958449
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0664845901639344 -0.0664566554621849 -0.0664084285714286
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0663789861878453 -0.0663034332425068 -0.0661961239669421
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0661232608695652 -0.0660142664835165 -0.0659742507042253
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0659440650406504 -0.06590285 -0.065833405479452
##       0                   1           1                  3
##       1                   0           0                  0
##        y_rate_haz
## earlybf -0.0657202936288089 -0.065700072 -0.0654746403269755
##       0                   1            1                   3
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0651786428571429 -0.0651786428571428 -0.0651197642276423
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0650579416666667 -0.0650000712328767 -0.0649437648648649
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0648777257617729 -0.0648224754098361 -0.0646985055248619
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0646458474114441 -0.0645946048387097 -0.0645717653631285
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0645202727272727 -0.0644701793478261 -0.0644214289544236
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0643430192307692 -0.0642954634146341 -0.064249179144385
##       0                   1                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0641667369863014 -0.0641216918918919 -0.0640351578947368
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0639914180327869 -0.063682347107438 -0.0636436385869565
##       0                   3                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0635073956043956 -0.063471162601626 -0.063368125
##       0                   2                  2            1
##       1                   0                  0            0
##        y_rate_haz
## earlybf -0.063333402739726 -0.0632996189189189 -0.0631925900277008
##       0                  2                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0631603606557377 -0.0630180248618784 -0.0627905067024129
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.062671771978022 -0.0626468617886179 -0.0625232166666667
##       0                  8                   2                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0625000684931507 -0.062455624 -0.0623500221606648
##       0                   1            1                   4
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0623293032786885 -0.0623091428571429 -0.0622895186170213
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0621777845303868 -0.0621777845303867 -0.0621594686648501
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0619905570652174 -0.0618361483516484 -0.0618093368983957
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.061655472972973 -0.0614982459016394 -0.0614982459016393
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0611640163043478 -0.0611595844504021 -0.0610005247252747
##       0                   4                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0609982601626016 -0.0608334 -0.0606671885245902
##       0                   2          5                   3
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0606648864265928 -0.0605063387096774 -0.0605018828337875
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0604973038674033 -0.0603306446280992 -0.0601649010989011
##       0                   2                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0601555905292479 -0.0599884916666667 -0.0596570635359116
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0596405882352941 -0.0595109347826087 -0.0594927190082645
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0594739944134078 -0.0593496585365854 -0.0593292774725275
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0593083286908078 -0.0591892540540541 -0.0591667315068493
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0591435833333333 -0.0590297142857143 -0.0590050737704918
##       0                   1                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0589797506925208 -0.0588710322580645 -0.0588442970027248
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0587885798319328 -0.0587132010723861 -0.0586843940217391
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0586547933884298 -0.0586547933884297 -0.0585253577235772
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0584936538461539 -0.0584936538461538 -0.058400064 -0.058298675
##       0                   1                   2            1            3
##       1                   0                   0            0            0
##        y_rate_haz
## earlybf -0.0582098571428571 -0.0581740163934426 -0.0580533790322581
##       0                   1                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0580155040871934 -0.0579765828729282 -0.0579365714285714
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0578977399463807 -0.0578168677685951 -0.057816867768595
##       0                   1                   1                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0577747374301676 -0.0577429331550802 -0.0577010569105691
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0576580302197802 -0.0576138050139276 -0.0575000630136986
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0574537666666667 -0.05739 -0.0573429590163934
##       0                   1        1                   1
##       1                   0        0                   0
##        y_rate_haz
## earlybf -0.0572946149584488 -0.0571363425414365 -0.0570313125
##       0                   2                   3             1
##       1                   0                   0             0
##        y_rate_haz
## earlybf -0.0569789421487603 -0.0569296524064171 -0.0569251089385475
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.056876756097561 -0.0568224065934066 -0.0567665431754875
##       0                  3                   2                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0566667287671233 -0.0565119016393443 -0.0564520470914128
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0564520470914127 -0.0564180725806451 -0.0562961022099447
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0562325546218487 -0.0561410165289256 -0.0560754804469274
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.055986782967033 -0.0559192813370474 -0.0559009621621622
##       0                  2                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.055833394520548 -0.0558333945205479 -0.0557502857142857
##       0                  2                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0556808442622951 -0.0556094792243767 -0.0556004193548387
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.055455861878453 -0.0553782309782609 -0.0553030909090909
##       0                  1                   3                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0552281544715447 -0.0552258519553072 -0.0551511593406594
##       0                   2                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0550788891891892 -0.0550720194986072 -0.0550000602739726
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0549304285714286 -0.0548497868852459 -0.0547827661290322
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0547669113573407 -0.0547003324250681 -0.0546817078651685
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0546156215469613 -0.0544898101604278 -0.0544651652892562
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0543155357142857 -0.0542247576601671 -0.0541667260273972
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0541105714285714 -0.0540187295081967 -0.0539243434903047
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0538715395095368 -0.0537753812154696 -0.0537251494565217
##       0                   2                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0536272396694215 -0.0535795528455285 -0.0535795528455284
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0534799120879121 -0.053377495821727 -0.0533333917808219
##       0                   5                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.053229225 -0.0531876721311475 -0.0531474596774193
##       0            1                   3                   2
##       1            0                   0                   0
##        y_rate_haz
## earlybf -0.052972904494382 -0.0528986086956521 -0.0527893140495868
##       0                  1                   1                   4
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0527552520325203 -0.0526769664804469 -0.0526126702702703
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0526126702702702 -0.0525000575342466 -0.0524708571428571
##       0                   1                   6                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0523298064516129 -0.0522392077562327 -0.0522139536784741
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0521895120643432 -0.0520949005524862 -0.051972512605042
##       0                   2                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0519513884297521 -0.0519309512195122 -0.0518086648351648
##       0                   3                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0517905972972973 -0.0516829721448468 -0.0516667232876712
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0515255573770492 -0.0513966398891967 -0.0513851607629428
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0513740509383378 -0.0512546602209945 -0.051245527173913
##       0                   1                   4                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0512366871657754 -0.0511134628099174 -0.0511134628099173
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0511066504065041 -0.0509777094972067 -0.0509730412087912
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0509685243243243 -0.0508381104815864 -0.0508357103064067
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0508333890410959 -0.0506945 -0.0505540720221607
##       0                   2          8                   2
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0504189864130435 -0.0504144198895028 -0.0504144198895027
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0502823495934959 -0.0502755371900826 -0.0501464513513514
##       0                   1                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0501374175824176 -0.0501280810055866 -0.0500000547945205
##       0                   3                   1                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0499884484679666 -0.0498634426229508 -0.0498495916666667
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0497275749318801 -0.0497115041551246 -0.0496101256684492
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0495924456521739 -0.0495741795580111 -0.049574179558011
##       0                   2                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.049477832 -0.0494580487804878 -0.049437611570248
##       0            1                   1                  2
##       1            0                   0                  0
##        y_rate_haz
## earlybf -0.0493462420212766 -0.0493243783783784 -0.049301793956044
##       0                   1                   2                  4
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0491914285714286 -0.0491667205479452 -0.0490323852459016
##       0                   2                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0489276675603217 -0.0488987820163488 -0.0487659048913044
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0487659048913043 -0.0487339392265193 -0.0485996859504132
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0485372872340425 -0.0485023054054054 -0.0484661703296703
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0483333863013699 -0.0482939247910864 -0.0482415403225806
##       0                   4                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0482013278688525 -0.048159775 -0.0480699891008174
##       0                   2            2                   1
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0480263684210526 -0.047983564171123 -0.0479393641304348
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0478936988950276 -0.0478464943820225 -0.0477617603305785
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0476802324324324 -0.0476305467032967 -0.0475517142857143
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0475000520547945 -0.0474238870967742 -0.0473702704918033
##       0                   4                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.047296745308311 -0.0472575847457627 -0.0472411961852861
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0471838005540166 -0.0471128233695652 -0.0470534585635359
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.047044496 -0.0469851463414634 -0.0469238347107438
##       0            1                   2                   6
##       1            0                   0                   0
##        y_rate_haz
## earlybf -0.0469193776595745 -0.0468604621848739 -0.0468581594594595
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.046794923076923 -0.0467318571428571 -0.0466667178082192
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0465392131147541 -0.0464699583333334 -0.0464124032697548
##       0                   3                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0463570026737968 -0.0462862826086957 -0.0462132182320442
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0461608455284553 -0.0460859090909091 -0.0460360864864865
##       0                   3                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0460084537815126 -0.0459592994505495 -0.0459592994505494
##       0                   1                   3                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.045912 -0.0457885806451613 -0.045752139275766
##       0         1                   1                  1
##       1         0                   0                  0
##        y_rate_haz
## earlybf -0.0457081557377049 -0.0455836103542235 -0.0455836103542234
##       0                   5                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0454986648199446 -0.0454597418478261 -0.0453729779005525
##       0                   5                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0452479834710744 -0.0451236758241758 -0.0450921428571429
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0450000493150685 -0.0448770983606557 -0.0447801416666667
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0447304411764706 -0.0446560969529086 -0.0446332010869565
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0445327375690608 -0.044512243902439 -0.0444100578512397
##       0                   5                  1                   4
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0443919405405405 -0.0442880521978022 -0.0442722857142857
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0441667150684932 -0.0441667150684931 -0.0441532741935484
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0440460409836066 -0.0440349008042895 -0.0439260245231608
##       0                   2                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0438135290858726 -0.0436924972375691 -0.0436879430894309
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0436835585106383 -0.043572132231405 -0.0435721322314049
##       0                   1                  1                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0434524285714286 -0.0433356209677419 -0.0433333808219178
##       0                   5                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0432194396782842 -0.0432149836065574 -0.0430972316076294
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.043090325 -0.0430831444759207 -0.0429801195652174
##       0            1                   1                   4
##       1            0                   0                   0
##        y_rate_haz
## earlybf -0.0429709612188366 -0.0428746037234043 -0.0428636422764228
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0428522569060774 -0.0428522569060773 -0.0428404225352113
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0427342066115702 -0.0426325714285714 -0.042616804945055
##       0                   3                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0426168049450549 -0.0425179677419355 -0.0425000465753425
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0424039785522788 -0.0423839262295082 -0.0423630919220056
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0422454166666667 -0.0421535788043478 -0.0421283933518006
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0420120165745856 -0.0418962809917355 -0.0417811813186813
##       0                   5                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0416667123287671 -0.0415885174262735 -0.041552868852459
##       0                   3                   2                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0414773181818182 -0.0414396457765668 -0.0414005083333333
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0412858254847646 -0.0412429830508475 -0.0411717762430939
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0410583553719008 -0.0410112808988764 -0.0409928571428571
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0409455576923077 -0.0408826612903226 -0.0408333780821918
##       0                   4                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0407218114754098 -0.0406108528610354 -0.0405556
##       0                   3                   4          1
##       1                   0                   0          0
##        y_rate_haz
## earlybf -0.0405004972826087 -0.0404432576177285 -0.040340450928382
##       0                   1                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0403315359116022 -0.0402815756756757 -0.0402204297520661
##       0                   4                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.040173 -0.0401568792134831 -0.0401099340659341
##       0         2                   1                   7
##       1         0                   0                   0
##        y_rate_haz
## earlybf -0.0400650080645161 -0.0400000438356164 -0.0398907540983607
##       0                   2                   6                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0398907540983606 -0.039850756684492 -0.0398213064066852
##       0                   1                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0397820599455041 -0.039744488 -0.0396739565217392
##       0                   2            1                   1
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0396739565217391 -0.0396006897506925 -0.0395664390243902
##       0                   3                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0394912955801105 -0.0394595027027027 -0.0393825041322314
##       0                   3                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0393531428571429 -0.0392743104395605 -0.0392743104395604
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0392473548387097 -0.0391667095890411 -0.0390596967213115
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0390374759358289 -0.0389532670299727 -0.0388657833333333
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0388474157608696 -0.0387581218836565 -0.0387421382113821
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0386510552486188 -0.0385445785123967 -0.0385332857142857
##       0                   6                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0384386868131868 -0.0384297016129032 -0.0383333753424658
##       0                   4                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0383333753424657 -0.038326672922252 -0.0382286393442623
##       0                   2                  2                   4
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0381244741144414 -0.038020875 -0.037917837398374
##       0                   4            4                  2
##       1                   0            0                  0
##        y_rate_haz
## earlybf -0.0378153567567568 -0.0378108149171271 -0.0377134285714286
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.037706652892562 -0.0376030631868132 -0.0375112117962466
##       0                  1                   4                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0375000410958904 -0.0374109144385026 -0.0373975819672131
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0372795208913649 -0.0371943342391304 -0.0371759666666667
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0371132148541114 -0.0370935365853659 -0.0370935365853658
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0370729861495845 -0.0369932837837838 -0.0368935714285714
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0368687272727273 -0.0367674395604396 -0.0367392724719101
##       0                   3                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0366957506702413 -0.0366667068493151 -0.036666706849315
##       0                   1                   3                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0365976336898396 -0.0365665245901639 -0.0364668882833788
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0364322590529248 -0.0363677934782609 -0.0362692357723577
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0362304182825485 -0.0361712108108108 -0.0361303342541437
##       0                   2                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0361303342541436 -0.0360308016528926 -0.0360308016528925
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0359318159340659 -0.035880289544236 -0.0357354672131148
##       0                   5                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0357354672131147 -0.0356380953678474 -0.0355849972144847
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0355412527173913 -0.0353878504155125 -0.0352900939226519
##       0                   2                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0351928760330578 -0.0351590887096774 -0.0351291464788732
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0350000383561644 -0.0349323445378151 -0.0349044098360656
##       0                   6                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0348093024523161 -0.0347850558510638 -0.0347377353760446
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0347147119565217 -0.0346412416666667 -0.0346206341463415
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0344498535911602 -0.034434 -0.0343549504132232
##       0                   1         3                   1
##       1                   0         0                   0
##        y_rate_haz
## earlybf -0.0343549504132231 -0.034272338028169 -0.0342605686813187
##       0                   3                  1                   6
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0342493672922252 -0.034166704109589 -0.0341577914438503
##       0                   1                  4                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0340733524590164 -0.034066704 -0.0339805095367847
##       0                   1            1                   3
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0339761010638298 -0.0338904735376045 -0.0337963333333333
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0337049918918919 -0.0337027146814404 -0.0336141428571429
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0336096132596685 -0.0335237822580645 -0.0335170247933885
##       0                   2                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0335170247933884 -0.0334249450549451 -0.033424945054945
##       0                   4                   4                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0333445106951872 -0.0333333698630137 -0.0332422950819672
##       0                   1                   4                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0331671462765958 -0.0331517166212534 -0.0330616304347826
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0330432116991643 -0.0329720325203252 -0.032951425
##       0                   1                   2            1
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0328601468144044 -0.0327942857142857 -0.0327693729281768
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0327061290322581 -0.0326790991735537 -0.0325893214285714
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0325312299465241 -0.0325000356164384 -0.0325000356164383
##       0                   1                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.032411237704918 -0.0323581914893617 -0.0323229237057221
##       0                  3                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0322858826815642 -0.0322350896739131 -0.032235089673913
##       0                   1                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0321959498607242 -0.0321477317073171 -0.032147731707317
##       0                   1                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0320608459459459 -0.0320175789473684 -0.0319744285714286
##       0                   2                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0318884758064516 -0.031841173553719 -0.0317536978021978
##       0                   1                  5                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.031717949197861 -0.031666701369863 -0.031633368
##       0                  1                  4            1
##       1                  0                  0            0
##        y_rate_haz
## earlybf -0.0315801803278688 -0.0315243109243698 -0.0314941307901907
##       0                   4                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0314362541899441 -0.0314085489130435 -0.031238772972973
##       0                   1                   3                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0311750110803324 -0.0311545714285714 -0.0310888922651934
##       0                   2                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0310708225806452 -0.0310708225806451 -0.0310032479338843
##       0                   1                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0309875227882038 -0.0309180741758242 -0.0309046684491979
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0308451042253521 -0.0308333671232877 -0.0307491229508197
##       0                   1                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0307491229508196 -0.0306653378746594 -0.030586625698324
##       0                   1                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0305820081521739 -0.030501426183844 -0.0304991300813008
##       0                   4                  2                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0304167 -0.0303347142857143 -0.0303324432132964
##       0          3                   1                   1
##       1          0                   0                   0
##        y_rate_haz
## earlybf -0.0302531693548387 -0.0302486519337016 -0.0301720616621984
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0301653223140496 -0.0300824505494506 -0.0300824505494505
##       0                   3                   1                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.030011144 -0.0300000328767123 -0.0299180655737705
##       0            1                   6                   3
##       1            0                   0                   0
##        y_rate_haz
## earlybf -0.0298365449591281 -0.0297554673913044 -0.0297369972067039
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.029594627027027 -0.0295717916666667 -0.0295148571428571
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0294898753462604 -0.0294355161290323 -0.0294084116022099
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.029356600536193 -0.0293273966942149 -0.0292468269230769
##       0                  1                   3                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.029166698630137 -0.0290870081967213 -0.0290077520435967
##       0                  4                   2                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0289682857142857 -0.0289289266304348 -0.0288505284552846
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0288505284552845 -0.0288069025069638 -0.0287725540540541
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.028695 -0.0286473074792244 -0.0286178629032258
##       0         3                   1                   2
##       1         0                   0                   0
##        y_rate_haz
## earlybf -0.0284894710743802 -0.0284112032967033 -0.02838892
##       0                   3                   7           1
##       1                   0                   0           0
##        y_rate_haz
## earlybf -0.0283333643835616 -0.0282559508196721 -0.0281789591280654
##       0                   7                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0281023858695652 -0.0279504810810811 -0.027881975
##       0                   2                   2            2
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0278751428571429 -0.0278047396121884 -0.0278002096774194
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0278002096774193 -0.0277279309392265 -0.0276515454545454
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0275755796703297 -0.0275000301369863 -0.0274953220338983
##       0                   5                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.027424893442623 -0.0273501662125341 -0.027350166212534
##       0                  3                   3                  1
##       1                  0                   0                  0
##        y_rate_haz
## earlybf -0.0272758451086957 -0.0272758451086956 -0.0272019268292683
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0271881117318436 -0.0271123788300836 -0.0270552857142857
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0270370666666667 -0.0269825564516129 -0.0269621717451524
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0269621717451523 -0.0269102171581769 -0.0268876906077348
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0268382647058824 -0.0268382647058823 -0.0268136198347107
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.026739956043956 -0.0266955079787234 -0.026666695890411
##       0                  3                   1                  3
##       1                  0                   0                  0
##        y_rate_haz
## earlybf -0.0266666958904109 -0.0265938360655738 -0.0264493043478261
##       0                   1                   2                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0264122605042017 -0.0263776260162602 -0.0263776260162601
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0263384832402235 -0.0263063351351351 -0.0262651169916435
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0262354285714286 -0.0261921583333333 -0.0261649032258065
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0261649032258064 -0.0261196038781163 -0.0260474502762431
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0260249839572193 -0.025975694214876 -0.0259043324175824
##       0                   2                 11                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0258333616438356 -0.0257627786885246 -0.0256925803814714
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0256227635869565 -0.025553325203252 -0.0254842621621622
##       0                   2                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0254842621621621 -0.0254178551532033 -0.0254155714285714
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.02534725 -0.0252770360110803 -0.0252072099447514
##       0           1                   2                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0251377685950413 -0.0250687087912088 -0.0250000273972603
##       0                   1                   5                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0248637874659401 -0.0247290243902439 -0.0245957142857143
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0245705933147632 -0.0245295967741935 -0.0245023416666667
##       0                   4                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0244638337801609 -0.0244344681440443 -0.0243984224598931
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.024398422459893 -0.0243669696132597 -0.0242998429752066
##       0                  1                   3                   4
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0242330851648352 -0.0241666931506849 -0.0241006639344262
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0239696820652174 -0.0239047235772358 -0.0237758571428571
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0237233314763231 -0.0237119435483871 -0.0236574333333333
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0236483726541555 -0.0235919002770083 -0.0235851417112299
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.023526729281768 -0.0235267292817679 -0.0234619173553719
##       0                  3                   3                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0234596888297872 -0.0233974615384616 -0.0233974615384615
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0233333589041096 -0.0232696065573771 -0.023269606557377
##       0                   1                   2                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0232062016348774 -0.0231431413043478 -0.0230804227642276
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0230180432432432 -0.022956 -0.0228329115281501 -0.022812525
##       0                   1         1                   1            1
##       1                   0         0                   0            0
##        y_rate_haz
## earlybf -0.0227718609625668 -0.0226864889502762 -0.0226507340425532
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0226239917355372 -0.0225618379120879 -0.0225000246575342
##       0                   7                   6                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0224385491803279 -0.022377408719346 -0.0223166005434783
##       0                   3                  1                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0222561219512195 -0.0221959702702703 -0.0221361428571429
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0220766370967742 -0.0220288077994429 -0.0220174504021448
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0219676166666667 -0.0219067645429363 -0.021900024
##       0                   2                   3            1
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0218462486187846 -0.0218417792553191 -0.0217860661157025
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0217262142857143 -0.0216666904109589 -0.0216074918032787
##       0                   3                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0215486158038147 -0.0214900597826087 -0.0214318211382114
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0213738972972973 -0.0213002100840336 -0.0212589838709678
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0211815459610028 -0.0211452994652407 -0.0211227083333333
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0210641966759003 -0.0210060082872928 -0.0209770344827586
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0209481404958678 -0.0208905906593407 -0.0208333561643836
##       0                   6                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0207764344262295 -0.0207198228882834 -0.0206635190217391
##       0                   4                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0206075203252033 -0.0206075203252032 -0.0205518243243243
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0204964285714286 -0.0204413306451613 -0.0203342841225627
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0202778 -0.0202216288088643 -0.0201657679558011
##       0          4                   1                   1
##       1          0                   0                   0
##        y_rate_haz
## earlybf -0.0201102148760331 -0.020110214876033 -0.020054967032967
##       0                   4                  1                  3
##       1                   0                  0                  0
##        y_rate_haz
## earlybf -0.0200000219178082 -0.0199453770491803 -0.0198910299727521
##       0                   5                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.019891029972752 -0.0198369782608696 -0.0197832195121951
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0197297513513514 -0.0196236774193548 -0.0195710670241287
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0195414553072626 -0.0194328916666667 -0.019414914893617
##       0                   2                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0193790609418283 -0.0193255276243094 -0.0192722892561984
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0192722892561983 -0.0192193434065934 -0.0191666876712329
##       0                   3                  11                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0191666876712328 -0.0191143196721312 -0.0191143196721311
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0190622370572207 -0.0190104375 -0.018958918699187
##       0                   4             4                  2
##       1                   0             0                  0
##        y_rate_haz
## earlybf -0.0188567142857143 -0.0187968370786517 -0.0187556058981233
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0187441848739496 -0.0186397604456825 -0.0185879833333333
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0185364930747922 -0.0184852872928177 -0.0184343636363636
##       0                   3                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0183837197802198 -0.0183333534246575 -0.018283262295082
##       0                   6                   1                  5
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0182334441416894 -0.0181838967391304 -0.0181346178861789
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0180856054054054 -0.0180368571428571 -0.017940144772118
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0178921764705882 -0.0178421983240223 -0.017743075
##       0                   1                   1            1
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0176939252077562 -0.0175964380165289 -0.0175480961538462
##       0                   1                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0175000191780822 -0.0174522049180328 -0.017404651226158
##       0                   5                   4                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0173573559782609 -0.0173103170731707 -0.0171707177419355
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0171246836461126 -0.0170788957219251 -0.0169925698324022
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0168981666666666 -0.0168513573407202 -0.0168048066298343
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0168048066298342 -0.0167585123966942 -0.0167124725274725
##       0                   1                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0166666849315069 -0.0166666849315068 -0.0166211475409836
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0165758583106267 -0.0165308152173913 -0.0164414594594595
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0164414594594594 -0.0163092225201073 -0.016265614973262
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0161429413407821 -0.0160979749303621 -0.0160532583333333
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0160087894736842 -0.0159645662983426 -0.0159645662983425
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0159205867768595 -0.0158768489010989 -0.0158333506849315
##       0                   2                   8                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0157900901639344 -0.0157470653950954 -0.0157042744565217
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0156193864864865 -0.0155354112903226 -0.015250713091922
##       0                   2                   3                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0151662216066482 -0.0151243259668508 -0.0150826611570248
##       0                   1                   3                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0150412252747253 -0.0150000164383562 -0.0149590327868853
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0149590327868852 -0.014918272479564 -0.0148777336956522
##       0                   4                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0148374146341463 -0.0147973135135135 -0.0147574285714286
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0146783002680965 -0.0145611861702128 -0.0144841428571429
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0144436843575419 -0.0144034512534819 -0.0143634416666667
##       0                   2                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0143236537396122 -0.0142447355371901 -0.0142056016483517
##       0                   4                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0142056016483516 -0.0141666821917808 -0.0141279754098361
##       0                   5                   5                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0140894795640327 -0.0140511929347826 -0.0140131138211382
##       0                   2                   5                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0139752405405405 -0.0139001048387097 -0.0138628391420911
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0135940558659218 -0.0135185333333333 -0.0134810858725762
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0134438453038674 -0.0134068099173554 -0.013369978021978
##       0                   5                   3                  4
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0133333479452055 -0.0132969180327869 -0.0132606866485014
##       0                   6                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0131888130081301 -0.0131177142857143 -0.0130824516129032
##       0                   4                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0130124919786096 -0.0127801260504202 -0.0127444273743017
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0127089275766017 -0.012673625 -0.0126385180055402
##       0                   1            1                   1
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0126036049723757 -0.0125343543956044 -0.0125000136986302
##       0                   2                   6                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0125000136986301 -0.0124658606557377 -0.01243189373297
##       0                   4                   4                 3
##       1                   0                   0                 0
##        y_rate_haz
## earlybf -0.0123981114130435 -0.012364512195122 -0.0123645121951219
##       0                   6                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0123310945945946 -0.0122978571428572 -0.0122978571428571
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0119616235955056 -0.0117959501385041 -0.011763364640884
##       0                   1                   1                  6
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.011730958677686 -0.0117309586776859 -0.0116987307692308
##       0                  2                   1                   3
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0116987307692307 -0.0116666794520548 -0.0116348032786885
##       0                   1                   5                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0116031008174387 -0.0115402113821138 -0.0115090216216216
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0114471451612903 -0.0114164557640751 -0.011355568
##       0                   2                   2            2
##       1                   0                   0            0
##        y_rate_haz
## earlybf -0.0110451703910615 -0.0109533822714681 -0.0109231243093923
##       0                   1                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0108631071428572 -0.0108631071428571 -0.0108333452054795
##       0                   3                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0108037459016393 -0.0107743079019074 -0.0107450298913043
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0106869486486486 -0.0106581428571429 -0.0106009946380697
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0102817014084507 -0.0101955418994413 -0.0101108144044321
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0100828839779006 -0.0100828839779005 -0.0100551074380165
##       0                   1                   1                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0100000109589041 -0.00997268852459017 -0.00997268852459016
##       0                   2                    1                    2
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00997268852459014 -0.00991848913043479 -0.00989160975609757
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00986487567567568 -0.00986487567567567 -0.00983828571428572
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00983828571428571 -0.0098382857142857 -0.00983828571428569
##       0                    2                   1                    2
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00978553351206435 -0.00978553351206433 -0.00968170822281167
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00945151694915255 -0.00937209243697482 -0.00931988022284122
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00929399166666667 -0.00926824653739612 -0.00926824653739611
##       0                    2                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00924264364640885 -0.00924264364640884 -0.00924264364640883
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00921718181818183 -0.00921718181818182 -0.00921718181818181
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0091918598901099 -0.00916667671232877 -0.00914163114754098
##       0                   1                    1                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00914163114754097 -0.00911672207084469 -0.00909194836956524
##       0                    3                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00909194836956523 -0.00906730894308944 -0.00906730894308942
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00904280270270269 -0.00899418548387097 -0.00894608823529411
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00849628491620112 -0.00844908333333333 -0.00842567867036012
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00842567867036011 -0.0084256786703601 -0.00837925619834711
##       0                    1                   2                    3
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.0083792561983471 -0.00837925619834708 -0.00835623626373627
##       0                   1                    1                    3
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00835623626373626 -0.00835623626373625 -0.00835623626373623
##       0                    1                    2                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00833334246575343 -0.00833334246575341 -0.00833334246575339
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00828792915531336 -0.00828792915531335 -0.00824300813008131
##       0                    1                    1                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00819857142857142 -0.00808954787234043 -0.00766807563025209
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00762535654596101 -0.007625356545961 -0.00760417499999999
##       0                    1                  1                    1
##       1                    0                  0                    0
##        y_rate_haz
## earlybf -0.00758311080332413 -0.00758311080332411 -0.00758311080332409
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00756216298342544 -0.0075621629834254 -0.0075413305785124
##       0                    2                   2                   1
##       1                    0                   0                   0
##        y_rate_haz
## earlybf -0.00754133057851239 -0.00754133057851238 -0.00752061263736266
##       0                    1                    3                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00752061263736264 -0.00752061263736263 -0.00750000821917809
##       0                    1                    2                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00747951639344263 -0.00743886684782609 -0.00743886684782608
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00741870731707316 -0.00739865675675674 -0.00737871428571431
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00737871428571429 -0.00737871428571427 -0.00735887903225809
##       0                    3                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00735887903225807 -0.00731952673796792 -0.00689330311614731
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00685446760563381 -0.00674054293628808 -0.00672192265193371
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0067219226519337 -0.00670340495867769 -0.00670340495867767
##       0                   1                    4                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00668498901098902 -0.00666667397260275 -0.00664845901639345
##       0                    1                    1                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00664845901639343 -0.00663034332425068 -0.00661232608695653
##       0                    3                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00659440650406505 -0.00659440650406503 -0.00657658378378379
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00657658378378377 -0.00654122580645162 -0.0065236890080429
##       0                    1                    1                   1
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00648889600000001 -0.00593083286908077 -0.00591435833333334
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00591435833333332 -0.00589797506925206 -0.00588168232044199
##       0                    1                    2                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00586547933884298 -0.00584936538461539 -0.0058333397260274
##       0                    2                    1                   2
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00583333972602738 -0.00581740163934429 -0.00581740163934427
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00581740163934425 -0.00580155040871935 -0.00580155040871933
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00578578532608698 -0.00578578532608696 -0.00578578532608695
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00577010569105691 -0.00575451081081083 -0.00575451081081082
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0057545108108108 -0.005739 -0.00570822788203753
##       0                   1         2                    1
##       1                   0         0                    0
##        y_rate_haz
## earlybf -0.00564766312997348 -0.00512641011235955 -0.00508357103064067
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00508357103064065 -0.00505540720221606 -0.00505540720221603
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00504144198895028 -0.00504144198895024 -0.00502755371900827
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00502755371900825 -0.00501374175824176 -0.00501374175824174
##       0                    1                    2                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00498634426229509 -0.00498634426229508 -0.00497275749318802
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0049592445652174 -0.00494580487804878 -0.00493243783783784
##       0                   2                    1                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00491914285714286 -0.00490591935483871 -0.00486667199999999
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00423630919220054 -0.00422454166666669 -0.00422454166666667
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00422454166666665 -0.00421283933518008 -0.00421283933518006
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00420120165745857 -0.00420120165745856 -0.00418962809917354
##       0                    1                    1                    5
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00416667123287672 -0.0041666712328767 -0.00415528688524592
##       0                    1                   1                    2
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00415528688524589 -0.0041439645776567 -0.00414396457765667
##       0                    1                   1                    1
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00413270380434783 -0.00413270380434781 -0.00412150406504064
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00411036486486489 -0.00411036486486487 -0.00411036486486485
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00409928571428571 -0.00408826612903226 -0.00408826612903224
##       0                    1                    3                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00339851396648045 -0.00337027146814405 -0.00337027146814404
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00336096132596685 -0.00336096132596684 -0.00335170247933885
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00334249450549451 -0.0033424945054945 -0.00333333698630137
##       0                    5                   1                    4
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00333333698630136 -0.00333333698630135 -0.00332422950819672
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00331517166212534 -0.00330616304347826 -0.00329720325203252
##       0                    1                    3                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0032882918918919 -0.00327942857142857 -0.00327061290322579
##       0                   1                    2                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00325312299465241 -0.00253472499999998 -0.00252072099447516
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00251377685950415 -0.00251377685950413 -0.00251377685950412
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00250687087912088 -0.00250000273972603 -0.00249317213114756
##       0                    2                    3                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00249317213114754 -0.00248637874659403 -0.00248637874659401
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00247290243902441 -0.00247290243902439 -0.00246621891891894
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00246621891891892 -0.00245957142857145 -0.00245295967741936
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00245295967741934 -0.00244638337801607 -0.00243984224598932
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.002433336 -0.00170880337078652 -0.00170401680672269
##       0            1                    1                    1
##       1            0                    0                    0
##        y_rate_haz
## earlybf -0.00169925698324021 -0.00168048066298343 -0.00167585123966942
##       0                    1                    2                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00167124725274724 -0.00166666849315069 -0.00166666849315068
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00166211475409836 -0.00165758583106267 -0.00165308152173913
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00164414594594595 -0.00164414594594593 -0.00163971428571432
##       0                    2                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00163971428571429 -0.0016265614973262 -0.001622224
##       0                    2                   1            1
##       1                    0                   0            0
##        y_rate_haz
## earlybf -0.000852008403361345 -0.000849628491620112 -0.000847261838440093
##       0                     1                     1                     1
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000844908333333334 -0.000842567867036012 -0.000840240331491713
##       0                     1                     1                     2
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000840240331491695 -0.000837925619834711 -0.000835623626373646
##       0                     2                     1                     4
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000835623626373627 -0.000835623626373609 -0.000833334246575343
##       0                     3                     1                     2
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000831057377049181 -0.00083105737704918 -0.000831057377049176
##       0                     2                    1                     1
##       1                     0                    0                     0
##        y_rate_haz
## earlybf -0.000831057377049163 -0.000828792915531336 -0.000826540760869584
##       0                     1                     1                     1
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000826540760869566 -0.000824300813008131 -0.000822072972972974
##       0                     2                     5                     3
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000822072972972971 -0.000819857142857144 -0.000819857142857125
##       0                     2                     4                     1
##       1                     0                     0                     0
##        y_rate_haz
## earlybf -0.000817653225806434 -0.00081328074866312  0 0.00081328074866312
##       0                     1                    1 34                   1
##       1                     0                    0  0                   0
##        y_rate_haz
## earlybf 0.000817653225806452 0.000819857142857144 0.000824300813008112
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.000824300813008131 0.000824300813008149 0.000826540760869548
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.000826540760869566 0.000826540760869584 0.000828792915531317
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.000828792915531336 0.000828792915531354 0.000831057377049163
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.000831057377049181 0.0008310573770492 0.000833334246575325
##       0                    2                  2                    1
##       1                    0                  0                    0
##        y_rate_haz
## earlybf 0.000833334246575343 0.000833334246575362 0.000835623626373627
##       0                    1                    3                    4
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.000835623626373646 0.000837925619834693 0.000837925619834711
##       0                    2                    1                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.00083792561983473 0.000840240331491713 0.000840240331491732
##       0                   1                    2                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf 0.000842567867035993 0.000842567867036031 0.000844908333333353
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf 0.00161790957446809 0.001622224 0.0016353064516129
##       0                   1           1                  1
##       1                   0           0                  0
##        y_rate_haz
## earlybf 0.00163971428571429 0.00164860162601626 0.00165308152173913
##       0                   1                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00165758583106267 0.00166211475409836 0.00166666849315069
##       0                   1                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00167124725274724 0.00167124725274725 0.00167585123966942
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00168048066298343 0.001685135734072 0.00168513573407202
##       0                   3                 2                   1
##       1                   0                 0                   0
##        y_rate_haz
## earlybf 0.00168981666666665 0.00169452367688022 0.00169925698324022
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.002433336 0.00243984224598929 0.00243984224598931
##       0           1                   1                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf 0.00243984224598932 0.00244638337801607 0.00245295967741936
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00246621891891891 0.00247962228260872 0.00248637874659401
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00248637874659403 0.00249317213114754 0.00250000273972601
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00250000273972603 0.00250687087912086 0.00250687087912088
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00251377685950412 0.00252072099447512 0.00252072099447513
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00252072099447514 0.00252770360110805 0.00253472499999998
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00254178551532032 0.00254178551532036 0.00327942857142856
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00327942857142857 0.0032882918918919 0.00330616304347826
##       0                   3                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00331517166212534 0.00332422950819672 0.00333333698630134
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00333333698630137 0.00334249450549451 0.00335170247933885
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00336096132596685 0.00337027146814403 0.00337963333333334
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00340803361344536 0.00408826612903226 0.00409928571428572
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00411036486486485 0.00412150406504064 0.00412150406504065
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00414396457765666 0.00415528688524589 0.00415528688524591
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00415528688524592 0.00416667123287672 0.00417811813186812
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00417811813186813 0.00417811813186814 0.00418962809917354
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00418962809917355 0.00418962809917356 0.00418962809917358
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00420120165745855 0.00420120165745857 0.00421283933518004
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00421283933518006 0.00487968449197861 0.00490591935483871
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00491914285714286 0.00493243783783784 0.00495924456521738
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00497275749318802 0.00498634426229507 0.00498634426229509
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00500000547945202 0.00500000547945206 0.00501374175824176
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00502755371900825 0.00502755371900826 0.00502755371900827
##       0                   2                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00504144198895028 0.00505540720221605 0.00505540720221607
##       0                   5                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00567778400000001 0.00570822788203752 0.00570822788203754
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.0057701056910569 0.00577010569105692 0.00578578532608694
##       0                  3                   3                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.00578578532608696 0.00584936538461537 0.00584936538461539
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00584936538461541 0.00586547933884296 0.00586547933884298
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.005865479338843 0.00589797506925207 0.00604877556818184
##       0                 3                   1                   1
##       1                 0                   0                   0
##        y_rate_haz
## earlybf 0.00650624598930482 0.00652368900804287 0.00654122580645158
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00655885714285715 0.00659440650406501 0.00659440650406505
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00663034332425069 0.00664845901639345 0.00666667397260274
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00666667397260275 0.00668498901098898 0.00668498901098901
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00668498901098902 0.00670340495867769 0.00672192265193371
##       0                   5                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.0067405429362881 0.00675926666666665 0.00728059308510639
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.0073195267379679 0.00733915013404828 0.00735887903225805
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.00741870731707316 0.00741870731707318 0.00743886684782608
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00747951639344261 0.00747951639344262 0.00752061263736263
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00752061263736264 0.00752061263736266 0.00754133057851242
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00756216298342542 0.00758311080332409 0.00760417500000001
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00764665642458101 0.00815461126005363 0.00817653225806452
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00819857142857142 0.00819857142857144 0.0082207297297297
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf 0.0082430081300813 0.00828792915531336 0.00831057377049181
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.00833334246575339 0.00833334246575341 0.00835623626373626
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00835623626373627 0.0083792561983471 0.00837925619834711
##       0                   1                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00840240331491712 0.00840240331491714 0.00842567867036011
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00842567867036012 0.00844908333333332 0.00849628491620112
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00897007238605897 0.00899418548387096 0.00901842857142856
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00901842857142857 0.00904280270270269 0.00904280270270273
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00909194836956521 0.00909194836956522 0.00909194836956523
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00911672207084468 0.00914163114754094 0.00914163114754097
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00914163114754098 0.00914163114754101 0.00916667671232876
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00919185989010988 0.00919185989010989 0.00931988022284122
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00970745744680852 0.00975936898395723 0.00983828571428569
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00983828571428572 0.00989160975609755 0.00991848913043475
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00991848913043479 0.00994551498637602 0.00994551498637603
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00997268852459017 0.0100000109589041 0.0100274835164835
##       0                   1                  5                  1
##       1                   0                  0                  0
##        y_rate_haz
## earlybf 0.0100551074380165 0.0100828839779005 0.0101108144044321
##       0                  4                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0101671420612813 0.0106009946380697 0.0106294919354839
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0106581428571428 0.0106581428571429 0.0107159105691057
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0107450298913043 0.0107743079019073 0.0108037459016393
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0108333452054795 0.0108631071428571 0.0108930330578512
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0109231243093923 0.0109533822714681 0.0109533822714682
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0109838083333333 0.0110144038997215 0.0113253670212766
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0113859304812834 0.0114164557640751 0.0114471451612903 0.011478
##       0                  1                  1                  2        1
##       1                  0                  0                  0        0
##        y_rate_haz
## earlybf 0.0115090216216216 0.0115715706521739 0.0116031008174387
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0116348032786885 0.0116666794520548 0.0116987307692308
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0117309586776859 0.011730958677686 0.011763364640884
##       0                  1                 1                 2
##       1                  0                 0                 0
##        y_rate_haz
## earlybf 0.0117959501385042 0.0118287166666667 0.0118616657381616
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0122978571428571 0.0122978571428572 0.0123310945945946
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0123645121951219 0.012364512195122 0.0123981114130435
##       0                  1                 2                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.01243189373297 0.0124658606557377 0.0125000136986301
##       0                5                  4                  2
##       1                0                  0                  0
##        y_rate_haz
## earlybf 0.0125000136986302 0.0125343543956044 0.0125688842975207
##       0                  2                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0126036049723757 0.0126385180055402 0.0127089275766017
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0127444273743017 0.0130124919786096 0.0130473780160858
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0131177142857143 0.0131531675675676 0.013224652173913
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0132246521739131 0.0132969180327868 0.0132969180327869
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0133333479452055 0.013369978021978 0.0134068099173554
##       0                  3                 4                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0134438453038674 0.0135185333333333 0.0135561894150418
##       0                  5                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0138628391420911 0.0140131138211382 0.0141279754098361
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0141666821917808 0.0142056016483516 0.0142056016483517
##       0                  2                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0143236537396122 0.0143634416666667 0.0144436843575419
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0144841428571428 0.0147177580645161 0.0147574285714286
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0147973135135135 0.0148374146341463 0.0148777336956522
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.014918272479564 0.0149590327868852 0.0149590327868853
##       0                 2                  5                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0150000164383562 0.0150412252747253 0.0150826611570248
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0151243259668508 0.0151662216066482 0.015250713091922
##       0                  3                  2                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.015411128 0.0155354112903226 0.0155772857142857
##       0           1                  1                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf 0.0156617154471545 0.0157042744565217 0.0157470653950954
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0157900901639344 0.0158333506849315 0.0158768489010989
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0159205867768595 0.0159645662983425 0.0160979749303621
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0161429413407821 0.0162336320224719 0.0163092225201072
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.016353064516129 0.0164414594594595 0.0164860162601626
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0165308152173913 0.0165758583106267 0.0166211475409836
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0166666849315068 0.0166666849315069 0.0167124725274725
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0167585123966942 0.0168048066298342 0.0168513573407202
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0169452367688022 0.0169925698324022 0.0170880337078652
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0171361690140845 0.017217 0.0172635324324324 0.017404651226158
##       0                  1        2                  1                 1
##       1                  0        0                  0                 0
##        y_rate_haz
## earlybf 0.0174522049180328 0.0175000191780822 0.0175480961538462
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0175964380165289 0.017645046961326 0.0176939252077562
##       0                  2                 3                  4
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.017743075 0.0177970053191489 0.0179883709677419
##       0           3                  1                  4
##       1           0                  0                  0
##        y_rate_haz
## earlybf 0.0180368571428571 0.0181346178861788 0.0181838967391305
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0182334441416894 0.0182832622950819 0.0183837197802198
##       0                  3                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0184343636363636 0.0184343636363637 0.0184852872928177
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.018605960106383 0.0187556058981233 0.0188567142857143
##       0                 1                  3                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0189076783783784 0.018958918699187 0.0190104375
##       0                  1                 2            1
##       1                  0                 0            0
##        y_rate_haz
## earlybf 0.0190622370572207 0.0191143196721311 0.0191143196721312
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0192193434065934 0.0192722892561983 0.0192722892561984
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0193255276243094 0.0194328916666667 0.0196236774193548
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0197297513513513 0.0197832195121951 0.0199453770491803
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0200000219178082 0.020054967032967 0.0202216288088643
##       0                  5                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0204413306451613 0.0204964285714286 0.0205518243243243
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0206075203252032 0.0206075203252033 0.0206214915254237
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0206635190217391 0.0207764344262295 0.0208333561643836
##       0                  2                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0208905906593407 0.0210060082872928 0.0210641966759003
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0211227083333333 0.0211452994652406 0.0211815459610028
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0212019892761394 0.0213162857142857 0.0213738972972973
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0214318211382114 0.0214900597826087 0.0215486158038147
##       0                  4                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0216074918032787 0.0216666904109589 0.0217262142857143
##       0                  4                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0217860661157025 0.0218462486187846 0.0219676166666666
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0220174504021448 0.0220766370967742 0.0220903407821229
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.022152218487395 0.0221959702702703 0.0223166005434783
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0223399491525424 0.022377408719346 0.0224385491803279
##       0                  1                 1                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0225000246575342 0.0225618379120879 0.0225906525198939
##       0                  4                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.022711136 0.0227493324099723 0.0227718609625668 0.022812525
##       0           1                  1                  1           2
##       1           0                  0                  0           0
##        y_rate_haz
## earlybf 0.0228329115281501 0.022876069637883 0.0228942903225806
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0230180432432432 0.0231431413043478 0.0232062016348774
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.023269606557377 0.0233333589041096 0.0233974615384616
##       0                 1                  4                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0234619173553719 0.0235919002770083 0.0236483726541555
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0236574333333333 0.0237895977653631 0.0238401162162162
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0239047235772358 0.0240349945504087 0.0241006639344262
##       0                  2                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0241666931506849 0.0242330851648352 0.0242998429752066
##       0                  5                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0243669696132597 0.0244344681440443 0.0244638337801609
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0245023416666667 0.0245295967741935 0.0245295967741936
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0245705933147632 0.0245957142857143 0.024796222826087
##       0                  1                  4                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0249317213114754 0.0250687087912088 0.0250775984042553
##       0                  4                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0251377685950413 0.0252072099447514 0.0252770360110803
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0252770360110804 0.02534725 0.0254155714285714
##       0                  1          2                  2
##       1                  0          0                  0
##        y_rate_haz
## earlybf 0.0254178551532033 0.0256227635869565 0.0256925803814714
##       0                  3                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0257627786885246 0.0258333616438356 0.0259043324175824
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.025975694214876 0.0260249839572192 0.0260474502762431
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0261196038781163 0.0262354285714286 0.0262651169916435
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0263063351351351 0.026561061971831 0.0265938360655738
##       0                  2                 1                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0266666958904109 0.026739956043956 0.0268136198347107
##       0                  1                 2                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0269621717451524 0.0269825564516129 0.0270552857142857
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0271284081081081 0.0274248934426229 0.027424893442623
##       0                  3                  1                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0275000301369863 0.0275044627659575 0.0276515454545455
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0277279309392265 0.0278002096774193 0.027881975
##       0                  1                  2           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf 0.0279596406685237 0.0281023858695652 0.0281789591280654
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0283333643835616 0.0283333643835617 0.0284112032967033
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0284894710743802 0.0285411394101877 0.0285681712707182
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0286473074792244 0.0287725540540541 0.0290077520435967
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0290870081967213 0.0292468269230769 0.0293273966942149
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0294084116022099 0.0294898753462604 0.0295148571428571
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.029594627027027 0.0296541643454039 0.0296748292682927
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0297554673913043 0.0299180655737705 0.0300000328767123
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.030011144 0.0301653223140496 0.0302486519337017
##       0           1                  2                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf 0.0303324432132964 0.0303347142857143 0.0304167 0.0304991300813008
##       0                  2                  1         2                  2
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf 0.0305820081521739 0.030586625698324 0.0306653378746594
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0307491229508197 0.0308333671232877 0.0309180741758242
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0310032479338843 0.0310708225806451 0.0310888922651934
##       0                  3                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0311545714285714 0.0311750110803324 0.031238772972973
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.031666701369863 0.031717949197861 0.0317536978021978
##       0                 4                 1                  2
##       1                 0                 0                  0
##        y_rate_haz
## earlybf 0.031841173553719 0.0318884758064516 0.0320175789473684
##       0                 1                  2                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.032235089673913 0.0323229237057221 0.032411237704918
##       0                 1                  2                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0325000356164383 0.0325000356164384 0.0325312299465241
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0325893214285714 0.0326790991735537 0.0327061290322581
##       0                  3                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0328601468144044 0.0328829189189189 0.0329720325203252
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0331355111731844 0.0333333698630137 0.0334339061662198
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0335170247933884 0.0337027146814404 0.0337963333333333
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0338881711956522 0.0339761010638298 0.0339805095367847
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.034066704 0.0340733524590164 0.0341667041095891
##       0           1                  2                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf 0.0342605686813187 0.0343549504132231 0.034434 0.0345270648648649
##       0                  3                  1        1                  2
##       1                  0                  0        0                  0
##        y_rate_haz
## earlybf 0.0345452825484765 0.0346206341463415 0.0346412416666667
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0347147119565217 0.0347147119565218 0.0348093024523161
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0349044098360656 0.0349710721925133 0.0350000383561644
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0350961923076923 0.0351590887096774 0.0351928760330578
##       0                  4                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0351928760330579 0.0352900939226519 0.0355412527173913
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0356380953678474 0.0357354672131147 0.0358333726027397
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0359318159340659 0.0360308016528925 0.0360308016528926
##       0                  6                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0362304182825485 0.0363677934782609 0.0364322590529248
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0364668882833787 0.0367674395604396 0.0368687272727273
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0368935714285714 0.0369705745856354 0.0370729861495845
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0371759666666667 0.0373836536312849 0.0375000410958904
##       0                  1                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0376030631868132 0.0376120483870968 0.037706652892562
##       0                  1                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0378153567567568 0.0379155540166205 0.037917837398374
##       0                  1                  1                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.038020875 0.0381244741144414 0.0382286393442623
##       0           4                  1                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf 0.038326672922252 0.0383333753424657 0.0384386868131868
##       0                 1                  2                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0385332857142857 0.0386374297297297 0.038933376
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf 0.0389740445682451 0.0390596967213115 0.0390829106145252
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0392743104395604 0.0393825041322314 0.0395664390243902
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0396006897506925 0.0396739565217391 0.0397820599455041
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0398907540983607 0.0400000438356164 0.040173 0.0402204297520661
##       0                  1                  3        1                  3
##       1                  0                  0        0                  0
##        y_rate_haz
## earlybf 0.0403315359116022 0.0405004972826087 0.0406108528610354
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0406640374331551 0.0406685682451253 0.0407218114754098
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0408333780821918 0.0408826612903226 0.0411036486486486
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0411717762430939 0.0413270380434783 0.0414005083333333
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0414396457765668 0.041552868852459 0.0415885174262735
##       0                  1                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0416667123287671 0.0417811813186813 0.0418127142857143
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0418962809917355 0.0420120165745856 0.0420393414634146
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0421535788043478 0.0423839262295082 0.0426168049450549
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0427200842696629 0.0427342066115702 0.0428522569060773
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0428522569060774 0.0429709612188365 0.0429801195652174
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0432149836065574 0.0433356209677419 0.0434524285714286
##       0                  1                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.043572132231405 0.0436879430894309 0.043806660326087
##       0                 2                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0438135290858726 0.0441667150684931 0.0441667150684932
##       0                  1                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0442722857142857 0.0442880521978022 0.0443919405405405
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0444100578512397 0.0445327375690608 0.0447548174386921
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0447801416666667 0.0448770983606557 0.0451236758241758
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0452479834710744 0.0453365447154472 0.0454986648199446
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0455437219251337 0.0455836103542234 0.0458333835616438
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0459592994505494 0.0460360864864865 0.0460859090909091
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0462862826086957 0.0464812841823056 0.0465392131147541
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0466062338709677 0.0467318571428571 0.0467949230769231
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0468581594594595 0.0469238347107438 0.0470534585635359
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0471128233695652 0.0471702834224599 0.0471838005540166
##       0                  2                  2                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0472411961852861 0.0473702704918033 0.0474466629526462
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0477124705882353 0.0477617603305785 0.0478936988950276
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.047983564171123 0.0480699891008174 0.0482013278688525
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0482415403225806 0.0483333863013698 0.0483333863013699
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0483715714285714 0.0484661703296703 0.0485996859504132
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0486337479674797 0.0487339392265193 0.0488689362880887
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0490323852459016 0.0491667205479452 0.0493017939560439
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.049301793956044 0.0494376115702479 0.049437611570248
##       0                 2                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0495924456521739 0.0497115041551246 0.0497275749318801
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0500000547945205 0.0501184261363636 0.0501374175824176
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0502755371900826 0.0502823495934959 0.0504144198895028
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0505563678474114 0.0506945 0.0508333890410959 0.0508357103064067
##       0                  1         1                  2                  1
##       1                  0         0                  0                  0
##        y_rate_haz
## earlybf 0.0509685243243243 0.0509730412087912 0.0511134628099173
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0511134628099174 0.0512546602209945 0.0513851607629428
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0514991746031746 0.0515255573770492 0.0516667232876712
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0518086648351648 0.0519309512195122 0.0519513884297521
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0520499679144385 0.0520720679347826 0.0520949005524862
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0522392077562327 0.0525000575342466 0.0526442884615385
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0527552520325203 0.0528986086956522 0.0529351408839779
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0530049731903485 0.0530427465940054 0.0530427465940055
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0531474596774194 0.0531876721311475 0.0533333917808219
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0534799120879121 0.0536272396694215 0.0537251494565217
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0538204343163539 0.0538715395095368 0.0539243434903047
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0540741333333333 0.0543155357142857 0.0544651652892562
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0544898101604278 0.0545516902173913 0.0546156215469613
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0547003324250681 0.0550000602739726 0.0551511593406593
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0551511593406594 0.0552281544715447 0.0553030909090909
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0553805462184874 0.0556004193548387 0.05576395
##       0                  2                  1          1
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0558333945205479 0.0562047717391305 0.0563579182561308
##       0                  5                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0564520470914127 0.0565119016393443 0.0567230351351351
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0567665431754875 0.0568224065934066 0.0571363425414364
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0571867111716621 0.0576138050139276 0.0576580302197802
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.057816867768595 0.0579765828729282 0.0580533790322581
##       0                 2                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0582098571428571 0.0583671810810811 0.0584610668523677
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0586547933884297 0.0586547933884298 0.0588442970027248
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0589797506925208 0.0591435833333333 0.0591667315068493
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0593292774725275 0.0594927190082644 0.0594927190082645
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0596570635359116 0.059688685483871 0.0598495714285714
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.060011327027027 0.0601827754010695 0.0603236229050279
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0603306446280992 0.0605063387096774 0.0608334 0.0611595844504021
##       0                  1                  2         4                  2
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf 0.0611685702479339 0.0613306757493188 0.0614982459016393
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0616667342465753 0.0618501142061282 0.0621594686648501
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0621777845303867 0.0625000684931507 0.0627905067024128
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.062817097826087 0.0628444214876033 0.0631603606557377
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0635073956043956 0.0635446378830084 0.0636436385869565
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.063682347107438 0.0638582651933702 0.0641216918918919
##       0                 2                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0643430192307692 0.0644701793478261 0.0645202727272727
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0646458474114441 0.0646985055248619 0.0648777257617729
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0649437648648649 0.0650000712328767 0.0651786428571429
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0654122580645161 0.0655885714285714 0.0659440650406504
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0660142664835165 0.0664845901639344 0.0666667397260274
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.067219226519337 0.0673156475409836 0.0674099837837838
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0678719752066115 0.0680481428571429 0.0681467049180328
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.068437575 0.0684987345844504 0.068602883152174 0.068977762295082
##       0           1                  1                 1                 1
##       1           0                  0                 0                 0
##        y_rate_haz
## earlybf 0.0690541297297297 0.0691288636363636 0.0691667424657534
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0692065365168539 0.0693141957104558 0.069356760989011
##       0                  1                  1                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0694294239130435 0.0697399475138122 0.0698088196721311
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0698762027027027 0.0700000767123287 0.070065569105691
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0700655691056911 0.0703857520661157 0.0708334109589041
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0712236776859504 0.0713275714285714 0.0718636318681319
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0719534838709677 0.0719719098591549 0.0725000794520548
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0729672857142857 0.0735348791208791 0.0739411491712707
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.073964106557377 0.0741870731707317 0.074607 0.074622304
##       0                 1                  1        1           1
##       1                 0                  0        0           0
##        y_rate_haz
## earlybf 0.0747813895027624 0.0747951639344262 0.0752061263736264
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0754063036211699 0.0754268571428571 0.075433416
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf 0.0756307135135135 0.075831108033241 0.07604175 0.076673675900277
##       0                  1                 1          1                 1
##       1                  0                 0          0                 0
##        y_rate_haz
## earlybf 0.0768682907608696 0.0772883360655737 0.0775000849315069
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0775327647058824 0.0776948315217391 0.0777315666666666
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0779065340599455 0.0787353269754768 0.0791667534246575
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0793479130434783 0.0797015133689839 0.0799151903485254
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0807814796747968 0.0808334219178082 0.0810009945652174
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0813280748663101 0.0819561083333333 0.082430081300813
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0825716509695291 0.0828792915531335 0.0829546363636364
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0830316601671309 0.0839367950819672 0.0840786829268293
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0841667589041096 0.0843979862637362 0.0843979862637363
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.084864273480663 0.0850000931506849 0.0861944632152588
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0871489719101123 0.0872610245901639 0.0877247142857143
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0882252348066299 0.0883334301369863 0.0884112079999999
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0884398614130435 0.088715375 0.0895096348773842
##       0                  1           1                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf 0.089658041322314 0.0897007238605898 0.090000098630137
##       0                 1                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0902473516483517 0.0904959669421487 0.0916667671232877
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.092072172972973 0.0926824653739612 0.0930097438016529
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0941069171270718 0.095523520661157 0.0955715983606557
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.096096717032967 0.0962244128686327 0.0967431428571428
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0972337131147541 0.0978553351206434 0.0980372975206611
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0980647704918033 0.0983583505434783 0.098854275
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf 0.0988958278688525 0.0997131487603306 0.100256162011173
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.100265576177285 0.100564699186992 0.100833443835616
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.101110458791209 0.101389 0.102226925619835 0.102770321525886
##       0                 1        1                 1                 1
##       1                 0        0                 0                 0
##        y_rate_haz
## earlybf 0.103024306451613 0.103037601626016 0.103581194594595
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.104427907356948 0.106501050420168 0.107450298913043
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.107848686980609 0.108037459016393 0.108930330578512 0.109041
##       0                 1                 1                 2        1
##       1                 0                 0                 0        0
##        y_rate_haz
## earlybf 0.111058250681199 0.11136168852459 0.111801924324324
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.11188704359673 0.112282033057851 0.112372808333333
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.112592204419889 0.113217716666667 0.115752441666667
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.116151684065934 0.11627436565097 0.116987307692308
##       0                 2                1                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.117050715447154 0.117309586776859 0.11763364640884
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.117875016260163 0.118473886740332 0.118738989304813
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.118841204918033 0.121499214876033 0.122172340720222
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.122328032608696 0.122488872972973 0.123175066115702
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.123465637096774 0.123515328729282 0.123857476454294
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.125343543956044 0.128813893442623 0.130357285714286
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.13224652173913 0.133435659400545 0.13369978021978
##       0                1                 1                1
##       1                0                 0                0
##        y_rate_haz
## earlybf 0.134535403846154 0.135371027472527 0.13683393495935
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.137955524590164 0.138025361344538 0.138639654696133
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.139306837398374 0.140254783333333 0.141279754098361
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.143727263736264 0.147882298342541 0.152491230563003
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.168704647540984 0.168981666666667 0.17645046961326
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.183837197802198 0.183992027247956 0.212669609756098
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.231467744505495 0.231666920547945 0.264209404825737
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.34344131043956
##       0                1
##       1                0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##        y_rate_haz
## earlybf -0.944254697802198 -0.769763413407821 -0.753945861702128
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.6387507 -0.636745203296703 -0.609996114754098
##       0          1                  1                  1
##       1          0                  0                  0
##        y_rate_haz
## earlybf -0.605045708108108 -0.567322719101124 -0.553182840659341
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.531885609625668 -0.514744153846154 -0.510866121546961
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.502039080645161 -0.489760423728814 -0.473148666666667
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.469475152173913 -0.467173624309392 -0.465596413407821
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.462197899441341 -0.458664523809524 -0.453014680851064
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.440460409836066 -0.438798295081967 -0.437742984126984
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.436133634920635 -0.43188353038674 -0.43090325
##       0                  1                 1           1
##       1                  0                 0           0
##        y_rate_haz
## earlybf -0.429912016759777 -0.429912016759776 -0.428148114130435
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.416140565934066 -0.414324778378378 -0.411617298913043
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.410542344262295 -0.407218114754098 -0.405556 -0.402176366666667
##       0                  1                  1         1                  1
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf -0.401099340659341 -0.400569655737705 -0.400219736842105
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.40004572826087 -0.399428093406593 -0.398618857894737
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.397883318918919 -0.396739565217391 -0.396286148571429
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.393433402173913 -0.392037466666667 -0.389662589189189
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.388934852459016 -0.38624380952381 -0.385857565714286
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.385167994565217 -0.383665193181818 -0.382286393442623
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.381826659574468 -0.381044373626374 -0.378590840425532
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.37723505027933 -0.375024085227273 -0.374978365079365
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.374359384615385 -0.374109144385027 -0.372905305084746
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.37211920212766 -0.370290260869565 -0.368637179347826
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.368540968253968 -0.367943951612903 -0.36774993220339
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.367039508379888 -0.366003148351648 -0.3650004 -0.36468190052356
##       0                  1                  1          1                 1
##       1                  0                  0          0                 0
##        y_rate_haz
## earlybf -0.364664303867403 -0.363356254054054 -0.362926534090909
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.362660653846154 -0.362411744680851 -0.360756209302326
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.360678901639344 -0.360197763157895 -0.359614109375
##       0                  1                  1               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.357741869318182 -0.355975664835165 -0.355412527173913
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.354322196808511 -0.354304417582418 -0.354285426136364
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.352900939226519 -0.352368327868852 -0.351847232432432
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.35133728342246 -0.351220458563536 -0.351086377659574
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.350453282608696 -0.34979205 -0.349100761363636
##       0                  1           1                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.348991610526316 -0.347619428571429 -0.346457598930481
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.345719868852459 -0.345049661290323 -0.344949167597765
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.3447226 -0.344498535911602 -0.343840956521739
##       0          1                  1                  1
##       1          0                  0                  0
##        y_rate_haz
## earlybf -0.343204475935829 -0.342818055248619 -0.341550653631285
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.341342966666667 -0.340876810344828 -0.339851396648045
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.33965315 -0.339263192307692 -0.338694064864865
##       0           2                  2                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.338152139664804 -0.33726289119171 -0.336698229946524
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.335747180327869 -0.334744634920635 -0.3345837 -0.33442445026178
##       0                  1                  1          1                 1
##       1                  0                  0          0                 0
##        y_rate_haz
## earlybf -0.333289372340425 -0.333054368715084 -0.332735171270718
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.331662322033898 -0.330906956043956 -0.330760836065574
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.330331903225806 -0.330238457142857 -0.329655854748603
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.32951425 -0.328963222826087 -0.328829189189189
##       0           1                  1                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.328090247191011 -0.327806922279793 -0.327310141304348
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.326938860962567 -0.326013248618785 -0.325774491803279
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.325312299465241 -0.3244448 -0.324221967032967 -0.3231774375
##       0                  1          1                  1             1
##       1                  0          0                  0             0
##        y_rate_haz
## earlybf -0.322252605405405 -0.322155370967742 -0.320971806629834
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.320520064516129 -0.319633118644068 -0.319208225274725
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.319126032786885 -0.318884758064516 -0.317992772727273
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.317610845303867 -0.317463918032787 -0.317249451612903
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.316974031578947 -0.316061798882682 -0.315930364640884
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.315865730769231 -0.315801803278689 -0.315738570652174
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.315432444444444 -0.314362541899441 -0.3143059
##       0                  1                  1          1
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.314194483516484 -0.314031875675676 -0.313978838709677
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.313874457446808 -0.312759288135593 -0.312616083333333
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.312569403314917 -0.312523236263736 -0.312477573770492
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.312432407608696 -0.312213746031746 -0.311119388571429
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.310779326086957 -0.30923645 -0.307527961325967
##       0                  1           2                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.307473163043478 -0.307402819148936 -0.30733540625
##       0                  1                  1              1
##       1                  0                  0              0
##        y_rate_haz
## earlybf -0.305875803370787 -0.305847480662983 -0.305820081521739
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.305811145945946 -0.305802306451613 -0.305793561497326
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.305776349206349 -0.304167 -0.302599128865979 -0.302566121052632
##       0                  1         5                  1                  1
##       1                  0         0                  0                  0
##        y_rate_haz
## earlybf -0.302549090425532 -0.302540438502674 -0.302504885245902
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.302495752747253 -0.302477183333333 -0.302398587209302
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.300842770491803 -0.300824505494506 -0.300824505494505
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.300806038674033 -0.30076848603352 -0.300730084745763
##       0                  1                 3                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.299207755434783 -0.299180655737705 -0.29912555801105
##       0                  1                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.29909755 -0.298982335227273 -0.298830736842105
##       0           1                  1                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.297729603174603 -0.297554673913043 -0.297445077348066
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.297407733333333 -0.297369972067039 -0.297331786516854
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.297214611428571 -0.296287025906736 -0.296120253968254
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.29607745212766 -0.295901592391304 -0.295856426229508
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.295376046242775 -0.295273228070175 -0.294355161290323
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.294248510869565 -0.294139516483516 -0.293971458100559
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.29349447368421 -0.292960847368421 -0.292781069518717
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.292595429347826 -0.291715719298246 -0.290797021978022
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.290723154696133 -0.290572944134078 -0.290496573033708
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.290101473988439 -0.289682857142857 -0.289527946524064
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.289125774725275 -0.288873687150838 -0.288073507936508
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.287454527472527 -0.287362193370166 -0.287268833333333
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.286274823529412 -0.286178629032258 -0.28598310326087
##       0                  1                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.285883737704918 -0.28578328021978 -0.285681712707182
##       0                  1                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.285579016666667 -0.285475173184358 -0.285370162921348
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.284956452631579 -0.284752085106383 -0.284714459302326
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.284648262032086 -0.284543322580645 -0.284437248648649
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.284001232044199 -0.2838892 -0.283428340909091 -0.28324546031746
##       0                  2          1                  1                 1
##       1                  0          0                  0                 0
##        y_rate_haz
## earlybf -0.283189965517241 -0.283021700534759 -0.282793102702703
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.282676940217391 -0.282559508196721 -0.282320751381215
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.282076659217877 -0.281636111111111 -0.281272709677419
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.281148956756757 -0.280769538461538 -0.280640270718232
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.280509566666667 -0.280403953125 -0.280243752808989
##       0                  2               2                  1
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.280108593220339 -0.280026761904762 -0.279235278688525
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.278959790055249 -0.27881975 -0.278552936842105
##       0                  2           1                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.278534949438202 -0.278142016042781 -0.277860664864865
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.277794138728324 -0.277717695652174 -0.277573163934426
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.277427043956044 -0.276978888268156 -0.276662537234043
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.276035947976879 -0.275911049180328 -0.275755796703297
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.275598828729282 -0.275440116666667 -0.275279631284916
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.275198714285714 -0.275117342696629 -0.275044627659574
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.274572372972973 -0.274411532608696 -0.27424893442623
##       0                  1                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.274084549450549 -0.273918348066298 -0.2737503
##       0                  4                  1          1
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.273589365079365 -0.273262331550802 -0.273234762711864
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.273096177419355 -0.272701448275862 -0.272586819672131
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.272413302197802 -0.272237867403315 -0.272060483333333
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.271980015873016 -0.271881117318436 -0.271516305084746
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.270924704918033 -0.270742054945055 -0.270548542105263
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.270370666666667 -0.270181860335195 -0.269673835051546
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.269452288043478 -0.269070807692308 -0.268876906077348
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.268761317460317 -0.26868085 -0.268572989361702
##       0                  2           1                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.268482603351955 -0.268190258064516 -0.268079389830508
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.267995789189189 -0.267799206521739 -0.267600475409836
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.267539560209424 -0.26739956043956 -0.267196425414365
##       0                  2                 3                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.266756085561497 -0.266573325842697 -0.266146125
##       0                  1                  1            2
##       1                  0                  0            0
##        y_rate_haz
## earlybf -0.265928862857143 -0.265728313186813 -0.265709103448276
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.265515944751381 -0.265301216666667 -0.265129524064171
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.265084089385475 -0.264804211764706 -0.264493043478261
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.264276245901639 -0.264057065934066 -0.263961017241379
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.263719260638298 -0.2636114 -0.263191134715026
##       0                  1          1                  1
##       1                  0          0                  0
##        y_rate_haz
## earlybf -0.262924016949153 -0.262839961956522 -0.262614131147541
##       0                  1                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.262385818681319 -0.262154983425414 -0.261186880434783
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.261169570680628 -0.260952016393443 -0.260943268421053
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.260714571428571 -0.260474502762431 -0.260231766666667
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.260013725806452 -0.259775059459459 -0.259289901639344
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.259105222222222 -0.258794022099448 -0.25854195
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf -0.258130913513514 -0.258029308988764 -0.257741510526316
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.257495873015873 -0.257372076923077 -0.257113541436464
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.25699671657754 -0.256887155440415 -0.256852133333333
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.256695849710983 -0.256320505617977 -0.255965672131148
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.255776795454545 -0.25570082967033 -0.255629712765957
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.255370155080214 -0.254937658959538 -0.254888547486034
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.254842621621622 -0.254611702247191 -0.254574554347826
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.254303557377049 -0.254029582417582 -0.254011803191489
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.253752580110497 -0.253735165803109 -0.2534725
##       0                  2                  1          1
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.253207083769633 -0.253189290502793 -0.25293887368421
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.252667825396825 -0.252641442622951 -0.252393893617021
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.252358335164835 -0.252072099447514 -0.25155432972973
##       0                  3                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.251490033519553 -0.251268391304348 -0.250979327868853
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.250979327868852 -0.250687087912088 -0.250092866666667
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.249910183783784 -0.249790776536313 -0.249485292134831
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.249449126984127 -0.249015840659341 -0.248863909090909
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.248711138121547 -0.248566580645161 -0.24840305
##       0                  1                  3           3
##       1                  0                  0           0
##        y_rate_haz
## earlybf -0.248266037837838 -0.248091519553073 -0.24796222826087
##       0                  1                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.247904895953757 -0.247776488764045 -0.247723639175258
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.247655098360656 -0.247457898305085 -0.247344593406593
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.247237347593583 -0.247030657458564 -0.246621891891892
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.246392262569832 -0.24630914673913 -0.246067685393258
##       0                  2                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.245992983606557 -0.245673346153846 -0.245551484375
##       0                  2                  1               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.245071697142857 -0.244977745945946 -0.244934478947368
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.244693005586592 -0.244656065217391 -0.244621079365079
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.244358882022472 -0.244330868852459 -0.244002098901099
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.24398422459893 -0.243689350877193 -0.243660661290323 -0.2433336
##       0                 1                  1                  3          4
##       1                 0                  0                  0          0
##        y_rate_haz
## earlybf -0.24301173015873 -0.243002983695652 -0.242993748603352
##       0                 1                  1                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.242668754098361 -0.242650078651685 -0.242330851648352
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.24202535483871 -0.241989215469613 -0.241643783333333
##       0                 2                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.241595502857143 -0.241402380952381 -0.241349902173913
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.241294491620112 -0.241068526595745 -0.240941275280899
##       0                  4                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.240798875 -0.240659604395604 -0.24058406779661
##       0            2                  2                 2
##       1            0                  0                 0
##        y_rate_haz
## earlybf -0.240504139534884 -0.240390048387097 -0.24030873480663
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.239953966666667 -0.239857405714286 -0.239793031746032
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.239595234636871 -0.239450617021277 -0.239232471910112
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.239113942196532 -0.239104540106952 -0.238988357142857
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.238628254143646 -0.238401162162162 -0.23826415
##       0                  4                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf -0.238043739130435 -0.23797521761658 -0.237895977653631
##       0                  1                 1                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.237477978609626 -0.237355751445087 -0.23731710989011
##       0                  3                  1                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.237282109947644 -0.237119435483871 -0.236757016216216
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.236574333333333 -0.236390657608696 -0.236381211428571
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.236196720670391 -0.236020295081967 -0.235814865168539
##       0                  2                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.235645862637363 -0.235597560693642 -0.23526729281768
##       0                  3                  1                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.23511287027027 -0.234643114285714 -0.234497463687151
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.234358180327869 -0.234224855614973 -0.234106061797753
##       0                  2                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.233974615384615 -0.233710237288136 -0.233586812154696
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.233468724324324 -0.232798206703911 -0.232696065573771
##       0                  2                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.23269606557377 -0.232598294117647 -0.232044927835052
##       0                 2                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.231991779661017 -0.231906331491713 -0.231824578378378
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.231746285714286 -0.231431413043478 -0.23129365625
##       0                  1                  2              1
##       1                  0                  0              0
##        y_rate_haz
## earlybf -0.23109894972067 -0.231033950819672 -0.23068845505618
##       0                 1                  3                 2
##       1                 0                  0                 0
##        y_rate_haz
## earlybf -0.230632120879121 -0.230578209677419 -0.230477056701031
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.230273322033898 -0.230225850828729 -0.230180432432432
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.230136936507936 -0.229815066666667 -0.229778331521739
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.229428822857143 -0.22939969273743 -0.229371836065574
##       0                  2                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.229345171122995 -0.228960873626374 -0.228925689473684
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.22855486440678 -0.228545370165746 -0.228536286486487
##       0                 1                  3                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.228527587301587 -0.22812525 -0.227718609625668
##       0                  1           6                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.22770043575419 -0.227690725714286 -0.227307596774194
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.227289626373626 -0.226918238095238 -0.226892140540541
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.226864889502762 -0.226507340425532 -0.226435433333333
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.226092048128342 -0.22600117877095 -0.225952628571429
##       0                  1                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.225723931578947 -0.225618379120879 -0.225503120689655
##       0                  1                  6                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.225247994594595 -0.225184408839779 -0.225117949152542
##       0                  2                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.225048416184971 -0.224819086956522 -0.224745616666667
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.224385491803279 -0.224205572164948 -0.224123052631579
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.224036983870968 -0.223947131868132 -0.223603848648649
##       0                  1                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.223503928176796 -0.223399491525424 -0.223166005434783
##       0                  5                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.222949633507853 -0.222940585227273 -0.22283892513369
##       0                  1                  1                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.222602664804469 -0.222522173684211 -0.222401677419355
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.222275884615385 -0.222215269430052 -0.22209019047619
##       0                  4                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.221959702702703 -0.221512923913044 -0.221512923913043
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.221365983333333 -0.221061262295082 -0.220921294736842
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.220903407821229 -0.220766370967742 -0.220604637362637
##       0                  1                  3                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.220480841269841 -0.220315556756757 -0.220142966850829
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.219962576271186 -0.219859842391304 -0.219676166666667
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.219484142045455 -0.219399147540984 -0.219204150837989
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.219131064516129 -0.219063279792746 -0.21893339010989
##       0                  3                  1                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.218726831460674 -0.218671410810811 -0.218510775862069
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.218462486187845 -0.218244118644068 -0.218206760869565
##       0                  5                  2                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.21798635 -0.217959240641711 -0.217755920454546
##       0           3                  2                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.217737032786885 -0.217504893854749 -0.217495758064516
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.217262142857143 -0.217027264864865 -0.217018028089888
##       0                  4                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.216782005524862 -0.216553679347826 -0.216332679144385
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.216296533333333 -0.216257462427746 -0.216118657894737
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.216074918032787 -0.216027698863636 -0.21591129015544
##       0                  3                  1                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.215860451612903 -0.215805636871508 -0.215652793650794
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.215590895604396 -0.215383118918919 -0.215309224719101
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.215101524861878 -0.215014603448276 -0.214987146596859
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.214900597826087 -0.21480720338983 -0.214706117647059
##       0                  2                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.214606716666667 -0.214299477272727 -0.21422514516129
##       0                  2                  2                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.214106379888268 -0.214043444444444 -0.213919648351648
##       0                  3                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.213738972972973 -0.213600421348315 -0.213564063829787
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.213421044198895 -0.213247516304348 -0.213088745762712
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.2129169 -0.21275068852459 -0.212589838709677 -0.212434095238095
##       0          5                 6                  2                  3
##       1          0                 0                  0                  0
##        y_rate_haz
## earlybf -0.212407122905028 -0.212248401098901 -0.212094827027027
##       0                  1                  7                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.211946154255319 -0.211594434782609 -0.211227083333333
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.211088573770492 -0.210954532258064 -0.210824746031746
##       0                  3                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.210707865921788 -0.210577153846154 -0.210450681081081
##       0                  1                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.210328244680851 -0.210309754285714 -0.210182814606742
##       0                  2                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.20994135326087 -0.20982643315508 -0.209651830508475
##       0                 2                 2                  2
##       1                 0                 0                  0
##        y_rate_haz
## earlybf -0.209537266666667 -0.209426459016393 -0.208905906593407
##       0                  3                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.208710335106383 -0.208617157068063 -0.208474011235955
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.208379602209945 -0.20828827173913 -0.208031316062176
##       0                  5                 2                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.20784745 -0.207764344262295 -0.207683919354839
##       0           1                  6                  1
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.20746650867052 -0.207386590909091 -0.207309351955307
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.207234659340659 -0.207162389189189 -0.206904296511628
##       0                  5                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.206765207865169 -0.206699121546961 -0.206635190217391
##       0                  1                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.206573310160428 -0.206214915254237 -0.206102229508197
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.206048612903226 -0.20594640625 -0.205658369318182
##       0                  2              1                  1
##       1                  0              0                  0
##        y_rate_haz
## earlybf -0.205610094972067 -0.205563412087912 -0.205518243243243
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.205474515957447 -0.205018640883978 -0.204982108695652
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.204946748663102 -0.204467816666667 -0.204440114754098
##       0                  4                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.204387349206349 -0.203930147727273 -0.203910837988827
##       0                  1                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.203892164835165 -0.203839664921466 -0.203357365714286
##       0                  4                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.203347601123596 -0.203347601123595 -0.203338160220994 -0.202778
##       0                  1                  4                  4         3
##       1                  0                  0                  0         0
##        y_rate_haz
## earlybf -0.202238696808511 -0.202229951351351 -0.202220917582418
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.202211581005587 -0.202201926136364 -0.201710747368421
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.201693625668449 -0.201657679558011 -0.201638797752809
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.201619268571429 -0.201193796875 -0.201168650793651
##       0                  2               1                  2
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.201142693548387 -0.201115885245902 -0.201088183333333
##       0                  2                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.201059542372881 -0.200620787234043 -0.200585805405405
##       0                  1                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.20054967032967 -0.200512324022346 -0.200109868421053
##       0                 4                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.200067064171123 -0.200022864130435 -0.199977198895028
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.19960959375 -0.199559301587302 -0.199507387096774
##       0              1                  1                  1
##       1              0                  0                  0
##        y_rate_haz
## earlybf -0.199453770491803 -0.199398366666667 -0.199341084745763
##       0                  4                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.199281827586207 -0.199002877659574 -0.198941659459459
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.198878423076923 -0.198813067039106 -0.198508989473684
##       0                 10                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.198369782608696 -0.198296718232044 -0.198221191011236
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.198025390625 -0.197949952380952 -0.197872080645161
##       0               1                  2                  1
##       1               0                  0                  0
##        y_rate_haz
## earlybf -0.197791655737705 -0.19770855 -0.197622627118644
##       0                  4           2                  2
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.19746967539267 -0.197384968085106 -0.197297513513514
##       0                 1                  1                  4
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.197297513513513 -0.197207175824176 -0.197113810055866
##       0                  1                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.196813941176471 -0.196716701086957 -0.196616237569061
##       0                  1                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.196512387640449 -0.196404977142857 -0.196340603174603
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.196018733333333 -0.195983891752577 -0.195904169491525
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.195877178010471 -0.195767058510638 -0.195653367567568
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.195535928571429 -0.195414553072626 -0.195307231578947
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.195187379679144 -0.195063619565217 -0.194935756906077
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.194856984375 -0.194803584269663 -0.194731253968254 -0.19466688
##       0               1                  3                  1           1
##       1               0                  0                  0           0
##        y_rate_haz
## earlybf -0.194601467741935 -0.194467426229508 -0.194328916666667
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.194185711864407 -0.19414914893617 -0.194009221621622
##       0                  1                 2                  4
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.193864681318681 -0.193715296089385 -0.193706352631579
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.193410538043478 -0.193255276243094 -0.193121904761905
##       0                  6                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.192966161290323 -0.19280531147541 -0.192692183246073 -0.1926391
##       0                  1                 4                  2          1
##       1                  0                 0                  0          0
##        y_rate_haz
## earlybf -0.192365075675676 -0.192289482758621 -0.192193434065934
##       0                  3                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.192016039106145 -0.191934256684492 -0.191859184615385
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.191832596590909 -0.191757456521739 -0.191574795580111
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.191512555555556 -0.19138597752809 -0.19133085483871
##       0                  3                 1                 2
##       1                  0                 0                 0
##        y_rate_haz
## earlybf -0.191143196721311 -0.190988581395349 -0.190949283333333
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.190913329787234 -0.190748796610169 -0.19072092972973
##       0                  2                  3                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.190522186813187 -0.190504594736842 -0.190326719298246
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.190316782122905 -0.190104375 -0.189903206349206
##       0                  5            1                  2
##       1                  0            0                  0
##        y_rate_haz
## earlybf -0.189894314917127 -0.189695548387097 -0.189677174157303
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.189507188481675 -0.189481081967213 -0.189452588571429
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.189295420212766 -0.189259466666667 -0.189076783783784
##       0                  4                  5                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.189030338983051 -0.18885093956044 -0.188793310344828
##       0                  1                 3                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.18868113368984 -0.188451293478261 -0.188213834254144
##       0                 4                  4                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.187968370786517 -0.187818967213115 -0.187714491428571
##       0                  2                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.18756965 -0.187432637837838 -0.187179692307692
##       0           4                  3                  3
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.187054572192513 -0.186918268156425 -0.186798211956522
##       0                  2                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.186684507936508 -0.186647931818182 -0.18653335359116
##       0                  2                  1                 5
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.186424935483871 -0.18625956741573 -0.186156852459016
##       0                  4                 1                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.18605960106383 -0.185976394285714 -0.185879833333333
##       0                 1                  1                  6
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.185788491891892 -0.185701957894737 -0.185593423728814
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.185508445054945 -0.185428010695187 -0.185219011173184
##       0                  7                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.185145130434783 -0.185075158730159 -0.184852872928177
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.184789629032258 -0.184729696335079 -0.184610028901734
##       0                  4                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.184550764044944 -0.184494737704918 -0.184441691489362
##       0                  4                  6                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.184190016666667 -0.184144345945946 -0.183837197802198
##       0                  3                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.183801449197861 -0.183549051724138 -0.183519754189944
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.183492048913043 -0.183191488636364 -0.183172392265193
##       0                  3                  1                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.183154322580645 -0.182841960674157 -0.18283262295082
##       0                  3                  1                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.182823781914894 -0.182815398963731 -0.1825002
##       0                  2                  3          4
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.182165950549451 -0.18185646031746 -0.181838967391304
##       0                  5                 1                  6
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.181820497206704 -0.181544701570681 -0.181519016129032
##       0                  3                  1                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.18149191160221 -0.181239404145078 -0.181205872340426
##       0                 6                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.181170508196721 -0.181133157303371 -0.180856054054054
##       0                  5                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.180810383333333 -0.180548326203209 -0.180494703296703
##       0                  1                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.180438050847458 -0.180185885869565 -0.179883709677419
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.179811430939226 -0.179508393442623 -0.179424353932584
##       0                  1                  9                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.179298442105263 -0.179211908108108 -0.179120566666667
##       0                  2                  1                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.178921764705882 -0.178823456043956 -0.17873730927835
##       0                  5                  9                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.178637761904762 -0.178532804347826 -0.178421983240223
##       0                  2                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.178248403225806 -0.178180668639053 -0.178130950276243
##       0                  4                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.178006823863636 -0.177970053191489 -0.177875438596491
##       0                  3                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.177846278688525 -0.177715550561798 -0.177697563157895
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.177567762162162 -0.17743075 -0.177295203208556
##       0                  3           4                  1
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.177285908571429 -0.177152208791209 -0.177028412698413
##       0                  1                  9                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.17700113559322 -0.176879722826087 -0.176767209424084
##       0                 1                  3                  4
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.176613096774194 -0.176556706896552 -0.176511419689119
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.17645046961326 -0.176184163934426 -0.176096684210526
##       0                 5                  3                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.176006747191011 -0.175740933333333 -0.17566864171123
##       0                  1                  5                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.175480961538462 -0.175282677966102 -0.175226641304348
##       0                  4                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.175174712041885 -0.175023469273743 -0.174977790322581
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.174808620689655 -0.174769988950276 -0.174734234042553
##       0                  1                  4                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.174522049180328 -0.174297943820225 -0.174060884393064
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.174051116666667 -0.174042080213904 -0.174033695876289
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.173809714285714 -0.173573559782609 -0.173564220338983
##       0                  8                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.173342483870968 -0.173324212290503 -0.173089508287293
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.172894926315789 -0.17285993442623 -0.172859934426229
##       0                  1                 3                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.172822159090909 -0.172678140625 -0.172635324324324
##       0                  3               2                  4
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.172589140449438 -0.1723613 -0.172302693641619
##       0                  1          4                  1
##       1                  0          0                  0
##        y_rate_haz
## earlybf -0.172200365079365 -0.172138467032967 -0.172071617142857
##       0                  4                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.17192047826087 -0.171845762711864 -0.171624955307263
##       0                 6                  3                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.171409027624309 -0.171312448275862 -0.171294047368421
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.171197819672131 -0.1710939375 -0.170991178378378
##       0                  1             2                  1
##       1                  0             0                  0
##        y_rate_haz
## earlybf -0.170897953608247 -0.170880337078652 -0.170788957219251
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.170671483333333 -0.170591015873016 -0.17046721978022
##       0                  3                  1                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.170127305084746 -0.170071870967742 -0.169925698324022
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.169880505319149 -0.169728546961326 -0.169693168421053
##       0                  2                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.169564362068966 -0.169535704918033 -0.169509734375
##       0                  1                  8               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.169365715909091 -0.169347032432432 -0.169162395721925
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.168981666666667 -0.168795972527473 -0.168795972527472
##       0                  5                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.168631445595855 -0.168614315217391 -0.168595422857143
##       0                  3                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.168436564516129 -0.168408847457627 -0.168262595744681
##       0                  2                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.168226441340782 -0.168048066298343 -0.167873590163934
##       0                  1                  7                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.167702886486486 -0.167637494318182 -0.167535834224599
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.167372317460317 -0.16729185 -0.16721222513089
##       0                  2           5                 1
##       1                  0           0                 0
##        y_rate_haz
## earlybf -0.167124725274725 -0.166961233695652 -0.166801258064516
##       0                  9                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.166690389830508 -0.166527184357542 -0.166491410526316
##       0                  3                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.166367585635359 -0.166341328125 -0.166230802325581
##       0                  3               2                  1
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.166211475409836 -0.166194340206186 -0.166058740540541
##       0                  4                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.165909272727273 -0.165762968253968 -0.165619727748691
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.165602033333333 -0.165453478021978 -0.165308152173913
##       0                  4                  9                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.165165951612903 -0.165119228571429 -0.165026776595745
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.164890531578947 -0.164827927374302 -0.164687104972376
##       0                  1                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.164626469072165 -0.164549360655738 -0.164414594594595
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.164181051136364 -0.164153619047619 -0.164027230366492
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.163912216666667 -0.163782230769231 -0.163655070652174
##       0                  3                  7                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.16353064516129 -0.163289652631579 -0.163253474576271
##       0                 1                  1                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.163128670391061 -0.163058597938144 -0.163006624309392
##       0                  5                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.162887245901639 -0.162770448648649 -0.162693976744186
##       0                  4                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.16265614973262 -0.162572017241379 -0.162434732984293 -0.1622224
##       0                 3                  1                  1          1
##       1                 0                  0                  0          0
##        y_rate_haz
## earlybf -0.162110983516484 -0.162001989130435 -0.161895338709677
##       0                  3                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.161688773684211 -0.161643034285714 -0.161429413407821
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.161326143646409 -0.161225131147541 -0.161126302702703
##       0                  5                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.161029588235294 -0.160724607954545 -0.160532583333333
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.160439736263736 -0.160348907608696 -0.160087894736842
##       0                  7                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.159904937142857 -0.159816559322034 -0.159645662983425
##       0                  1                  2                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.159563016393443 -0.159482156756757 -0.159403026737968
##       0                  4                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.159325571428571 -0.159249738219895 -0.159075844827586
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.158996386363636 -0.158918713483146 -0.158842766666667
##       0                  1                  3                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.158768489010989 -0.158695826086957 -0.158624725806452
##       0                  5                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.158555138297872 -0.158487015789474 -0.15816684
##       0                  1                  1           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf -0.158098101694915 -0.158030899441341 -0.157965182320442
##       0                  1                  2                  8
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.157900901639344 -0.157838010810811 -0.157776465240642
##       0                  1                  2                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.157716222222222 -0.157657240837696 -0.157599481865285
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.157388738372093 -0.157268164772727 -0.15720991011236
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.15715295 -0.157097241758242 -0.157042744565217
##       0           2                  4                  4
##       1           0                  0                  0
##        y_rate_haz
## earlybf -0.156989419354839 -0.156937228723404 -0.156836109375
##       0                  3                  1               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.156478976878613 -0.156428742857143 -0.156379644067797
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.156331642458101 -0.156284701657459 -0.156238786885246
##       0                  3                  6                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.156193864864865 -0.156149903743316 -0.156023487046632
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.155463133333333 -0.155425994505495 -0.155425994505494
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.155389663043478 -0.155354112903226 -0.155319319148936
##       0                  5                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.15463238547486 -0.154604220994475 -0.154576672131148
##       0                 3                  5                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.154576672131147 -0.154549718918919 -0.154523342245989
##       0                  2                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.154497523809524 -0.153792303370786 -0.153773316666667
##       0                  1                  2                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.153754747252747 -0.153736581521739 -0.153718806451613
##       0                  5                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.153684378947368 -0.153667703125 -0.152952548571429
##       0                  2               1                  1
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.152942728813559 -0.15293312849162 -0.152923740331492
##       0                  2                 2                  8
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.152914557377049 -0.152905572972973 -0.152896780748663
##       0                  7                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.152888174603175 -0.152879748691099 -0.152871497409326
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.152863415384615 -0.1520835 -0.151295502590674
##       0                  1         27                  1
##       1                  0          0                  0
##        y_rate_haz
## earlybf -0.151287251308901 -0.151270219251337 -0.151261427027027
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.151252442622951 -0.151243259668508 -0.15123387150838
##       0                  2                  8                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.151214451428571 -0.150482621052632 -0.150465590425532
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.150430418478261 -0.150412252747253 -0.150393683333333
##       0                  5                  8                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.150355278409091 -0.149669476190476 -0.149643657754011
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.149617281081081 -0.149590327868852 -0.149562779005525
##       0                  1                  7                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.14953461452514 -0.149505813559322 -0.149476354285714
##       0                 4                  2                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.149383792899408 -0.148881742105263 -0.148847680851064
##       0                  1                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.148812887096774 -0.148777336956522 -0.148741005494506
##       0                  1                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.148741005494505 -0.148703866666667 -0.148665893258427
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.148546674418605 -0.148017096256684 -0.147973135135135
##       0                  1                  4                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.147928213114754 -0.147882298342541 -0.147835357541899
##       0                  9                  7                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.147787355932203 -0.147688023121387 -0.147280863157895
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.147229771276596 -0.147177580645161 -0.147124255434783
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.147069758241758 -0.14701405 -0.14695708988764
##       0                  5           6                 4
##       1                  0           0                 0
##        y_rate_haz
## earlybf -0.146567518134715 -0.146509759162304 -0.146450777777778
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.146390534759358 -0.146328989189189 -0.146266098360656
##       0                  3                  4                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.146201817679558 -0.146136100558659 -0.145679984210526
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.145611861702128 -0.145542274193548 -0.145471173913043
##       0                  5                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.145398510989011 -0.145324233333333 -0.145248286516854
##       0                  3                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.145064261538462 -0.144991523316062 -0.144917261780105
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.144841428571429 -0.144763973262032 -0.144684843243243
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.144603983606557 -0.144521337016575 -0.144436843575419
##       0                  5                  5                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.144350440677966 -0.144262062857143 -0.144171641618497
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.144162484375 -0.14399395212766 -0.143906967741935
##       0               1                 7                  4
##       1               0                 0                  0
##        y_rate_haz
## earlybf -0.143818092391304 -0.143727263736264 -0.143634416666667
##       0                  4                  5                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.143539483146067 -0.143324764397906 -0.143232079365079
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.143137411764706 -0.143040697297297 -0.142941868852459
##       0                  3                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.142840856353591 -0.142737586592179 -0.142631983050847
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.142523965714286 -0.142478226315789 -0.142376042553191
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.142271661290323 -0.142165010869565 -0.142056016483516
##       0                  5                  9                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.1419446 -0.141839533678756 -0.141830679775281
##       0          2                  1                  3
##       1          0                  0                  0
##        y_rate_haz
## earlybf -0.141732267015707 -0.141714170454545 -0.14162273015873
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.14151085026738 -0.141473023255814 -0.141396551351351
##       0                 4                  1                  4
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.141279754098361 -0.141160375690608 -0.141038329608939
##       0                  4                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.140994078125 -0.140913525423729 -0.140877347368421
##       0               1                  1                  2
##       1               0                  0                  0
##        y_rate_haz
## earlybf -0.140758132978723 -0.14063635483871 -0.140521596491228
##       0                  2                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.140511929347826 -0.140384769230769 -0.140263538860104
##       0                  5                  9                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.140254783333333 -0.140139769633508 -0.140013380952381
##       0                  7                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.139884288770054 -0.139884288770053 -0.139846896551724
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.139752405405405 -0.139704610465116 -0.139617639344262
##       0                  2                  2                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.139540530927835 -0.139479895027624 -0.139409875
##       0                  1                  4            2
##       1                  0                  0            0
##        y_rate_haz
## earlybf -0.139339072625698 -0.139276468421053 -0.13919506779661
##       0                  2                  1                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.139001048387097 -0.138897069364162 -0.138858847826087
##       0                  3                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.138713521978022 -0.138564966666667 -0.138413073033708
##       0                  6                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.138404031746032 -0.138257727272727 -0.138108259459459
##       0                  1                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.137955524590164 -0.137825671875 -0.137799414364641
##       0                  7               1                  7
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.137675589473684 -0.137639815642458 -0.137522313829787
##       0                  1                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.137309674285714 -0.137205766304348 -0.137138878612717
##       0                  3                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.137042274725275 -0.13687515 -0.136794682539683
##       0                  6           5                  2
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.136704269662921 -0.136529505681818 -0.136464113513514
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.136293409836066 -0.136118933701657 -0.136074710526316
##       0                  4                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.135904404255319 -0.135730435483871 -0.135571577142857
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.135552684782609 -0.135380687861272 -0.135371027472527
##       0                  8                  1                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.135185333333333 -0.135004604278075 -0.134995466292135
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.134801284090909 -0.134631295081967 -0.134602637931034
##       0                  4                  6                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.134473831578947 -0.134438453038674 -0.134286494680851
##       0                  1                  8                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.134241301675978 -0.134095129032258 -0.13389960326087
##       0                  4                  3                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.13383348 -0.133769780104712 -0.13369978021978
##       0           1                  1                 8
##       1           0                  0                 0
##        y_rate_haz
## earlybf -0.133622497109827 -0.133575984126984 -0.133495516666667
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.133378042780749 -0.133286662921348 -0.133175821621622
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.1330730625 -0.132969180327869 -0.132872952631579
##       0             1                  6                  2
##       1             0                  0                  0
##        y_rate_haz
## earlybf -0.132757972375691 -0.132668585106383 -0.132542044692737
##       0                  8                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.132459822580645 -0.13224652173913 -0.132095382857143
##       0                  5                 3                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.132028532967033 -0.131966634920635 -0.1318057
##       0                  5                  1          2
##       1                  0                  0          0
##        y_rate_haz
## earlybf -0.131751481283422 -0.131701175257732 -0.131577859550562
##       0                  5                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.131531675675676 -0.131488859375 -0.131344840909091
##       0                  5               1                  1
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.131307065573771 -0.131272073684211 -0.13127207368421
##       0                  3                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.131077491712707 -0.131050675531915 -0.130842787709497
##       0                 10                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.130824516129032 -0.130602779661017 -0.130593440217391
##       0                  3                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.130584785340314 -0.130357285714286 -0.130124919786096
##       0                  1                  8                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.130115883333333 -0.12990465625 -0.12988752972973
##       0                  7              1                 2
##       1                  0              0                 0
##        y_rate_haz
## earlybf -0.129869056179775 -0.129671194736842 -0.129644950819672
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.129432765957447 -0.129397011049724 -0.129358379310345
##       0                  2                  9                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.129189209677419 -0.129143530726257 -0.128992287958115
##       0                  5                  4                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.128940358695652 -0.128884322033898 -0.128747936507937
##       0                  1                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.128686038461538 -0.128619188571429 -0.128565432989691
##       0                  9                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12849835828877 -0.128426066666667 -0.128347924855491
##       0                 1                  8                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.128320453125 -0.128243383783784 -0.128160252808989
##       0               2                  2                  3
##       1               0                  0                  0
##        y_rate_haz
## earlybf -0.127982836065574 -0.127888397727273 -0.127814856382979
##       0                  6                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12771653038674 -0.127655580310881 -0.127610293103448
##       0                10                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.127553903225806 -0.127444273743017 -0.127399790575916
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.127287277173913 -0.127138587301587 -0.127014791208791
##       0                  7                  8                  9
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.126881091428571 -0.12673625 -0.126599237837838
##       0                  2           6                  5
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.126589734104046 -0.126469436842105 -0.126451449438202
##       0                  1                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.126320721311475 -0.126291561403509 -0.126196946808511
##       0                 10                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.126036049723757 -0.125918596774194 -0.125745016759776
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.125634195652174 -0.125529238095238 -0.125343543956044
##       0                  6                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.125245235294118 -0.125152046875 -0.125142994285714
##       0                  1               1                  1
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.125046433333333 -0.124868557894737 -0.124742646067416
##       0                  4                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.124658606557377 -0.124579037234043 -0.124355569060774
##       0                  4                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.124355569060773 -0.124283290322581 -0.124045759776536
##       0                  5                  4                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.123981114130435 -0.123919888888889 -0.123672296703297
##       0                  5                  2                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12356784375 -0.123404897142857 -0.123356616666667
##       0              1                  1                  3
##       1              0                  0                  0
##        y_rate_haz
## earlybf -0.123310945945946 -0.123267678947368 -0.123033842696629
##       0                  5                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.122996491803279 -0.122961127659574 -0.122703732954545
##       0                  4                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12267508839779 -0.122647983870968 -0.122622298429319
##       0                 7                  6                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.122366034482759 -0.122346502793296 -0.122328032608696
##       0                  1                  6                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12231053968254 -0.122293948453608 -0.122010491525424
##       0                 4                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.122001049450549 -0.121992112299465 -0.121983640625 -0.1216668
##       0                 10                  3               1         20
##       1                  0                  0               0          0
##        y_rate_haz
## earlybf -0.121343218085106 -0.12133437704918 -0.121012677419355
##       0                  2                 4                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.120994607734807 -0.120975511363636 -0.120701190476191
##       0                  8                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.12070119047619 -0.120674951086957 -0.120647245810056
##       0                 5                  8                  7
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.1203994375 -0.120365550802139 -0.120329802197802
##       0             1                  1                 12
##       1             0                  0                  0
##        y_rate_haz
## earlybf -0.120065921052632 -0.120022654054054 -0.119976983333333
##       0                  2                  3                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.119928702857143 -0.119725308510638 -0.119672262295082
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.119616235955056 -0.119556971098266 -0.119437303664921
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.119377370967742 -0.119314127071823 -0.119247289772727
##       0                  3                 10                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.119091841269841 -0.119021869565217 -0.118947988826816
##       0                  5                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.118869862068966 -0.118815234375 -0.118738989304813
##       0                  4               2                  2
##       1                  0               0                  0
##        y_rate_haz
## earlybf -0.118658554945055 -0.118573576271186 -0.118465042105263
##       0                  8                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.118378508108108 -0.118287166666667 -0.118199611398964
##       0                  3                  9                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.118190605714286 -0.11810739893617 -0.118010147540984
##       0                  1                 4                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.11790743258427 -0.117844806282723 -0.117798780346821
##       0                 3                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.117742064516129 -0.11763364640884 -0.117590335051546
##       0                  1                 6                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.117519068181818 -0.117482492063492 -0.117368788043478
##       0                  2                  2                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.117248731843575 -0.117121775862069 -0.117112427807487
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116987307692308 -0.116864163157895 -0.116734362162162
##       0                  7                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116623616580311 -0.11659735 -0.116489489361702
##       0                  1           8                  2
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.116452508571429 -0.116348032786885 -0.116252308900524
##       0                  1                  8                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.116198629213483 -0.115953165745856 -0.115873142857143
##       0                  2                  9                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.115790846590909 -0.115715706521739 -0.115646828125
##       0                  4                  6               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.115549474860335 -0.11548586631016 -0.115427476923077
##       0                  3                 3                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.11531606043956 -0.115263284210526 -0.115136661016949
##       0                13                  1                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.115090216216216 -0.115047621761658 -0.114907533333333
##       0                  1                  1                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.114871579787234 -0.114685918032787 -0.114659811518325
##       0                  2                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.114489825842697 -0.114471451612903 -0.114282398843931
##       0                  3                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.114272685082873 -0.114263793650794 -0.114062625
##       0                  4                  1           13
##       1                  0                  0            0
##        y_rate_haz
## earlybf -0.113859304812834 -0.113850217877095 -0.113662405263158
##       0                  4                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.113644813186813 -0.113625603448276 -0.113471626943005
##       0                  8                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.11344607027027 -0.113418203389831 -0.11341820338983
##       0                 3                  1                 3
##       1                 0                  0                 0
##        y_rate_haz
## earlybf -0.113253670212766 -0.113217716666667 -0.113067314136126
##       0                  1                  4                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.113023803278689 -0.113023803278688 -0.11278102247191
##       0                  1                  2                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf -0.112654444444444 -0.11259220441989 -0.112592204419889
##       0                  1                 2                  6
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.112409543478261 -0.112307815384615 -0.112232743315508
##       0                 11                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.112150960893855 -0.11206152631579 -0.111973565934066
##       0                  4                 1                  8
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.111877517241379 -0.111801924324324 -0.111635760638298
##       0                  1                  4                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.1115279 -0.111474816753927 -0.111410005813954 -0.11136168852459
##       0          8                  1                  1                 8
##       1          0                  0                  0                 0
##        y_rate_haz
## earlybf -0.111238217142857 -0.111200838709677 -0.111072219101124
##       0                  4                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.111045095238095 -0.110911723756906 -0.11089421875
##       0                  1                  7              1
##       1                  0                  0              0
##        y_rate_haz
## earlybf -0.110756461956522 -0.110606181818182 -0.110460647368421
##       0                  6                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.110451703910615 -0.110451703910614 -0.110302318681319
##       0                  3                  1                 10
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.110157778378378 -0.11001785106383 -0.109981288135593
##       0                  4                 2                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf -0.109838083333333 -0.109565532258065 -0.109565532258064
##       0                  5                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.10950012 -0.109435746031746 -0.109363415730337 -0.109310015625
##       0           1                  1                  2               1
##       1           0                  0                  0               0
##        y_rate_haz
## earlybf -0.109231243093923 -0.109103380434783 -0.109007826589595
##       0                  7                  6                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108979620320856 -0.108877960227273 -0.108859768421053
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108752446927374 -0.108743642487047 -0.108631071428571
##       0                  2                  1                  8
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108513632432432 -0.108399941489362 -0.108381344827586
##       0                  6                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108289821989529 -0.108262830508475 -0.108148266666667
##       0                  2                  1                  8
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.108037459016393 -0.107930225806452 -0.107826396825397
##       0                 13                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.1077258125 -0.107550762430939 -0.107450298913044
##       0             1                  6                  2
##       1             0                  0                  0
##        y_rate_haz
## earlybf -0.107450298913043 -0.107353058823529 -0.107258889473684
##       0                  6                  6                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.10724963583815 -0.107053189944134 -0.106959824175824
##       0                 1                  2                  7
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.106869486486487 -0.106869486486486 -0.106782031914894
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.106544372881356 -0.10645845 -0.106375344262295
##       0                  1           1                 10
##       1                  0           0                  0
##        y_rate_haz
## earlybf -0.106294919354839 -0.106217047619048 -0.106023925714286
##       0                  5                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.105945808988764 -0.105870281767956 -0.105797217391304
##       0                  1                  8                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.105726497326203 -0.105658010526316 -0.105591652849741
##       0                  5                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.105421517045455 -0.105353932960894 -0.105288576923077
##       0                  1                  2                 12
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.105225340540541 -0.105164122340426 -0.104825915254237
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104768633333333 -0.104713229508197 -0.104659612903226
##       0                  5                  8                  9
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104607698412698 -0.104336354651163 -0.104285828571429
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104237005617978 -0.104144135869565 -0.104099935828877
##       0                  1                  6                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.104057131578947 -0.103693295454545 -0.103654675977654
##       0                  1                  1                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.10361732967033 -0.103581194594595 -0.103546212765957
##       0                10                  5                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf -0.103512329842932 -0.103107457627119 -0.103078816666667
##       0                  2                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.103051114754098 -0.103024306451613 -0.102998349206349
##       0                  7                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.102973203125 -0.102547731428571 -0.102528202247191
##       0               1                  1                  1
##       1               0                  0                  0
##        y_rate_haz
## earlybf -0.102509320441989 -0.102491054347826 -0.102473374331551
##       0                  6                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.102456252631579 -0.102439663212435 -0.101975063583815
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.101965073863636 -0.101955418994413 -0.101946082417582
##       0                  1                  3                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.101937048648649 -0.101928303191489 -0.10191162371134 -0.101389
##       0                  2                  2                 1        19
##       1                  0                  0                 0         0
##        y_rate_haz
## earlybf -0.100855373684211 -0.100846812834225 -0.100837972826087
##       0                  2                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.100828839779006 -0.100819398876404 -0.100809634285714
##       0                  3                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.100799529069767 -0.100310393617021 -0.100292902702703
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf -0.100274835164835 -0.100256162011173 -0.099804796875
##       0                  8                  7               1
##       1                  0                  0               0
##        y_rate_haz
## earlybf -0.0997796507936508 -0.0997536935483871 -0.0997268852459016
##       0                   2                   7                   9
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0996991833333333 -0.0996705423728814 -0.0992202513368984
##       0                   2                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0991848913043478 -0.0991483591160221 -0.099110595505618
##       0                   6                  10                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0991105955056179 -0.0990715371428571 -0.0986924840425532
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0986487567567568 -0.0986487567567567 -0.0986035879120879
##       0                   3                   2                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.098556905027933 -0.0985569050279329 -0.0985086306818182
##       0                  1                   1                   3
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0984586820809249 -0.0981703015873016 -0.0981183870967742
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0980647704918033 -0.0980093666666667 -0.0979520847457627
##       0                   3                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0978928275862069 -0.0975936898395722 -0.0975318097826088
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0975318097826087 -0.0974678784530387 -0.0974678784530386
##       0                   7                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0974017921348315 -0.09733344 -0.0972627034883721
##       0                   1           1                   1
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.0970745744680851 -0.097074574468085 -0.0970046108108108
##       0                   1                  1                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0969323406593407 -0.0969323406593406 -0.0968576480446928
##       0                   4                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0968576480446927 -0.0967804090909091 -0.096636390625
##       0                   3                   5               1
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0965609523809524 -0.0964830806451613 -0.0964026557377049
##       0                   2                   4                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.09631955 -0.096233627118644 -0.0961447413793104
##       0           5                  2                   1
##       1           0                  0                   0
##        y_rate_haz
## earlybf -0.0961356839378238 -0.0960527368421053 -0.0960527368421052
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.095967128342246 -0.0958787282608696 -0.0957873977900553
##       0                  5                   3                   5
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0957873977900552 -0.0956929887640449 -0.0955498429319372
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0955498429319371 -0.0954942906976744 -0.095456664893617
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0953604648648649 -0.0952610934065935 -0.0952610934065934
##       0                   5                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0951583910614525 -0.0950521875000001 -0.0950521875
##       0                   2                   1             1
##       1                   0                   0             0
##        y_rate_haz
## earlybf -0.0949516031746032 -0.0949516031746031 -0.0949423005780347
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0948477741935484 -0.0947405409836066 -0.0946297333333333
##       0                   3                   6                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0945151694915254 -0.0944518578947369 -0.0943405668449198
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0941069171270718 -0.0939841853932585 -0.0939841853932584
##       0                   5                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0938572457142857 -0.0938387553191489 -0.0937163189189189
##       0                   2                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0935898461538462 -0.0935898461538461 -0.0934591340782123
##       0                   4                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.093342253968254 -0.0933422539682539 -0.093323965909091
##       0                  1                   1                  1
##       1                  0                   0                  0
##        y_rate_haz
## earlybf -0.0932124677419355 -0.0930784262295082 -0.0930784262295081
##       0                   3                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0929836943005181 -0.0929399166666667 -0.0929399166666666
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0927967118644068 -0.0927140053475936 -0.0926485689655172
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0925725652173913 -0.0925725652173912 -0.0925043969072165
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0924264364640884 -0.0923648481675393 -0.0923648481675392
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0922753820224719 -0.0922208457446808 -0.0921191485714286
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.092072172972973 -0.0919185989010989 -0.0917598770949721
##       0                  4                  10                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0917329047619047 -0.0915771612903226 -0.0915771612903225
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0914259190751445 -0.0914163114754099 -0.0914163114754098
##       0                   1                   1                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0914076994818653 -0.0912501 -0.0910874438502674
##       0                   1          4                   1
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0910782542372881 -0.0909194836956522 -0.0909194836956521
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0909004827586207 -0.0907723507853403 -0.090745955801105
##       0                   1                   2                  6
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0906029361702128 -0.0905665786516854 -0.090428027027027
##       0                   2                   3                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0902473516483517 -0.0902473516483516 -0.0901235555555556
##       0                   3                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0900606201117318 -0.0899418548387097 -0.0899418548387096
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0897541967213115 -0.0897541967213114 -0.0896492210526316
##       0                   8                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0895602833333333 -0.0894608823529412 -0.0893597966101695
##       0                   3                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.089266402173913 -0.0891798534031414 -0.0891523965517241
##       0                  3                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0890654751381216 -0.0890654751381215 -0.0888577752808989
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0887838810810811 -0.0886429542857143 -0.0885761043956044
##       0                   2                   1                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0885142063492064 -0.0885142063492063 -0.0883613631284916
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0883065483870968 -0.0883065483870967 -0.0882557098445596
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0881393011363636 -0.0880920819672131 -0.0880483421052632
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0880483421052631 -0.0878704666666667 -0.087834320855615
##       0                   1                   4                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0878007835051546 -0.0876413389830509 -0.0876413389830508
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0876133206521739 -0.0875873560209424 -0.0874043103448276
##       0                   5                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0873849944751381 -0.0873671170212766 -0.0871397351351352
##       0                  10                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0871397351351351 -0.087131171875 -0.0869048571428571
##       0                   4               1                   9
##       1                   0               0                   0
##        y_rate_haz
## earlybf -0.0866712419354839 -0.0866621061452514 -0.0864474631578947
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0864299672131148 -0.0864299672131147 -0.0864110795454546
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0864110795454545 -0.0862077593582888 -0.08618065
##       0                   1                   1           7
##       1                   0                   0           0
##        y_rate_haz
## earlybf -0.0861513468208092 -0.0859948586387435 -0.0859602391304348
##       0                   1                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0859228813559322 -0.0857492074468085 -0.0857045138121547
##       0                   1                   4                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.085656224137931 -0.0854955891891892 -0.0854401685393258
##       0                  1                   2                   5
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.085295507936508 -0.0852955079365079 -0.0852336098901099
##       0                  1                   4                   9
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0852336098901098 -0.08516676 -0.0851037202072539
##       0                   1           1                   1
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.085035935483871 -0.0849628491620112 -0.0848838139534883
##       0                  2                   5                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0848465842105263 -0.0847678524590164 -0.0846828579545455
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0845811978609626 -0.0844908333333333 -0.0844023612565445
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0843071576086957 -0.0843071576086956 -0.0842044237288136
##       0                   3                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0840240331491713 -0.083962765625 -0.0839081379310345
##       0                   4               2                   1
##       1                   0               0                   0
##        y_rate_haz
## earlybf -0.0838514432432432 -0.0837313651685393 -0.0836861587301587
##       0                   3                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0835623626373626 -0.083527725388601 -0.0834286628571429
##       0                   5                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0834006290322581 -0.083400629032258 -0.083263592178771
##       0                   4                  2                  1
##       1                   0                  0                  0
##        y_rate_haz
## earlybf -0.0832635921787709 -0.0832457052631579 -0.0831154011627907
##       0                   6                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0831057377049181 -0.083105737704918 -0.0829546363636364
##       0                   1                  3                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0828098638743456 -0.0828010166666667 -0.0828010166666666
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0826540760869565 -0.0826349653179191 -0.0825133882978723
##       0                   5                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0824859661016949 -0.0823435524861879 -0.0823435524861878
##       0                   1                   3                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0822072972972973 -0.0821600517241379 -0.0820768095238096
##       0                   7                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0820225617977528 -0.0818911153846154 -0.0817653225806452
##       0                   4                   6                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0816905657142858 -0.0816448263157895 -0.0815643351955307
##       0                   1                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0814436229508197 -0.0814436229508196 -0.0813280748663101
##       0                   8                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0812264147727273 -0.0812173664921466 -0.0811112000000001
##       0                   3                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0811112 -0.0811111999999999 -0.0810009945652174
##       0          3                   1                   9
##       1          0                   0                   0
##        y_rate_haz
## earlybf -0.0808954787234042 -0.0807675084745763 -0.0807675084745762
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0806630718232044 -0.0805631513513514 -0.0804674603174603
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0803137584269662 -0.0802198681318682 -0.0802198681318681
##       0                   1                   1                   8
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0801300161290323 -0.0801300161290322 -0.0800439473684211
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0799524685714286 -0.0798650782122905 -0.0797815081967213
##       0                   1                   5                  14
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.079701513368984 -0.0797015133689839 -0.0796248691099476
##       0                  2                   2                   3
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0794213833333333 -0.0793479130434783 -0.0792775691489362
##       0                   2                   6                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0792775691489361 -0.0791185838150289 -0.0790490508474576
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.078982591160221 -0.0789190054054054 -0.0788581111111111
##       0                 12                   7                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0787997409326425 -0.0786049550561798 -0.0785486208791209
##       0                   1                   1                   8
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0785486208791208 -0.0784947096774194 -0.0784947096774193
##       0                   3                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0784430684210527 -0.0784430684210526 -0.0782143714285715
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0782143714285714 -0.0781658212290503 -0.078119393442623
##       0                   1                   4                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0781193934426229 -0.0780749518716578 -0.0780749518716577
##       0                   6                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0777699715909091 -0.0777315666666667 -0.0776948315217392
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0776948315217391 -0.0773603930635838 -0.077330593220339
##       0                   4                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0773021104972376 -0.0773021104972375 -0.0772748594594595
##       0                   5                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0772487619047619 -0.0769157931034483 -0.0768961516853932
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0768773736263736 -0.0768594032258064 -0.0768421894736842
##       0                   6                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0764762742857143 -0.07646656424581 -0.0764572786885246
##       0                   2                 3                   5
##       1                   0                 0                   0
##        y_rate_haz
## earlybf -0.0764572786885245 -0.0764483903743316 -0.0764483903743315
##       0                   2                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0764398743455497 -0.07604175 -0.0760417499999999
##       0                   2          16                   3
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.0756477512953368 -0.0756394126984127 -0.0756307135135135
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0756216298342542 -0.0756216298342541 -0.0756121355932203
##       0                   1                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0756022023121388 -0.0752413105263158 -0.0752413105263157
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0752240967741935 -0.0752061263736264 -0.0752061263736263
##       0                   1                   8                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0751873483146068 -0.0751873483146067 -0.0748473769633508
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0748218288770054 -0.0748218288770053 -0.0747951639344263
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0747951639344262 -0.0747673072625698 -0.0747381771428572
##       0                   5                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.074457546875 -0.0743886684782609 -0.0743886684782608
##       0               4                   5                   1
##       1               0                   0                   0
##        y_rate_haz
## earlybf -0.0743519333333334 -0.0743519333333333 -0.0743135284090909
##       0                   1                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0740300634920635 -0.0739865675675676 -0.0739411491712708
##       0                   3                   8                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0739411491712707 -0.0738936779661017 -0.0738440115606936
##       0                   7                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0736404315789474 -0.0735887903225806 -0.0735348791208792
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0735348791208791 -0.0734785449438202 -0.0734196206896552
##       0                   8                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0732548795811518 -0.0731952673796792 -0.0731952673796791
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0731330491803279 -0.0730680502793296 -0.0730000800000001
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.07300008 -0.07287334375 -0.0728059308510638 -0.0727355869565218
##       0           1              1                   3                   2
##       1           0              0                   0                   0
##        y_rate_haz
## earlybf -0.0727355869565217 -0.0726621166666667 -0.0725853068181818
##       0                   4                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0724207142857143 -0.0723424216216216 -0.0722606685082873
##       0                   1                   5                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0721752203389831 -0.072175220338983 -0.0720858208092486
##       0                   1                  3                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0720858208092485 -0.072039552631579 -0.0719534838709677
##       0                   1                  1                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0718636318681319 -0.0718636318681318 -0.0717697415730338
##       0                  10                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0717697415730337 -0.071568705882353 -0.0715687058823529
##       0                   5                  5                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0714709344262295 -0.0713687932960894 -0.0711880212765957
##       0                   6                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0710825054347826 -0.0709723 -0.0709197668393782
##       0                   8          7                   1
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0708570852272727 -0.0708113650793651 -0.0706982756756757
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0705801878453039 -0.0704567627118644 -0.0703276300578035
##       0                   6                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0703181774193549 -0.0703181774193548 -0.0701923846153846
##       0                   1                   5                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0700698848167539 -0.0700609382022472 -0.0699421443850267
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0698088196721312 -0.0698088196721311 -0.0697049375
##       0                   3                   6             2
##       1                   0                   0             0
##        y_rate_haz
## earlybf -0.0696695363128491 -0.0695701117021277 -0.0695701117021276
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0695238857142857 -0.0694294239130435 -0.0694294239130434
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0692824833333333 -0.0692020158730159 -0.0692020158730158
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0690541297297297 -0.0689680988372093 -0.0688997071823205
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0688997071823204 -0.0688377947368421 -0.0687383050847458
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0687383050847457 -0.068682870967742 -0.0686828709677419
##       0                   2                  1                   4
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0686325538461538 -0.0685211373626374 -0.0685211373626373
##       0                   1                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.068477387434555 -0.0683521348314607 -0.0683155828877005
##       0                  1                   2                   3
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0681467049180328 -0.0681467049180327 -0.068120734375
##       0                   5                   1               3
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0679902705882354 -0.0679702793296089 -0.0679522021276596
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0677857885714286 -0.0677763423913044 -0.0677763423913043
##       0                   1                   5                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0677677772020725 -0.0675926666666667 -0.0675926666666666
##       0                   2                   3                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0674099837837838 -0.0674006420454546 -0.0672192265193371
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.067219226519337 -0.067047564516129 -0.0670198474576271
##       0                  3                  3                   3
##       1                  0                  0                   0
##        y_rate_haz
## earlybf -0.066884890052356 -0.0668498901098901 -0.0668112485549133
##       0                  4                   8                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0666890213903743 -0.0666433314606742 -0.0666433314606741
##       0                   6                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.06653653125 -0.0664845901639344 -0.0663342925531915
##       0              1                   8                   1
##       1              0                   0                   0
##        y_rate_haz
## earlybf -0.0662710223463687 -0.0661917823834197 -0.0661232608695652
##       0                   6                   3                  10
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0660476914285714 -0.06590285 -0.0657658378378378
##       0                   1           4                   3
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.0656724204545454 -0.0656360368421053 -0.0655387458563536
##       0                   1                   2                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.065431273255814 -0.0654312732558139 -0.0654122580645161
##       0                  1                   1                   5
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0653013898305085 -0.0652923926701571 -0.0651786428571429
##       0                   2                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0650624598930482 -0.0650624598930481 -0.0650530578034682
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.064952328125 -0.0649345280898876 -0.0648224754098361
##       0               1                   1                   5
##       1               0                   0                   0
##        y_rate_haz
## earlybf -0.064822475409836 -0.0646157875647669 -0.0645717653631285
##       0                  2                   2                   3
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0644701793478261 -0.0643739682539683 -0.0643739682539682
##       0                  10                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0643095942857143 -0.0642130333333333 -0.0641216918918919
##       0                   1                   4                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0640351578947368 -0.0639441988636364 -0.0638582651933702
##       0                   3                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0637769516129032 -0.0635829322033898 -0.0635073956043956
##       0                   4                   3                  10
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0634358983957219 -0.0633681250000001 -0.0631603606557378
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0631603606557377 -0.0630984734042553 -0.0628725083798883
##       0                   5                   6                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.062817097826087 -0.0628170978260869 -0.0627646190476191
##       0                  3                   3                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.062764619047619 -0.0627148453608248 -0.0625714971428571
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0625232166666667 -0.062477545945946 -0.0624775459459459
##       0                   3                  6                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0624342789473684 -0.0622159772727273 -0.0621777845303868
##       0                   2                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0621777845303867 -0.0621416451612903 -0.0621073979057592
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0618644745762712 -0.0618361483516484 -0.0618361483516483
##       0                   2                   6                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0618093368983957 -0.0615169213483146 -0.0614982459016394
##       0                   3                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0614982459016393 -0.0614805638297873 -0.0614805638297872
##       0                   5                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0611732513966481 -0.061173251396648 -0.0611640163043478
##       0                   1                  2                   5
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0611552698412699 -0.0611552698412698 -0.0608334
##       0                   2                   3          8
##       1                   0                   0          0
##        y_rate_haz
## earlybf -0.0605149005235603 -0.0605149005235602 -0.0605063387096774
##       0                   1                   4                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0604973038674034 -0.0604973038674033 -0.0604877556818182
##       0                   1                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.060477649122807 -0.0601827754010695 -0.0601649010989011
##       0                  1                   3                   5
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0601460169491526 -0.0601460169491525 -0.060126034883721
##       0                   2                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0598878031088083 -0.0598626542553192 -0.0598626542553191
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.059836131147541 -0.0598081179775281 -0.0595459206349206
##       0                  9                   2                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0595109347826087 -0.0594739944134078 -0.0592325210526316
##       0                   7                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.059189254054054 -0.0591435833333333 -0.0589224031413613
##       0                  1                   7                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0588710322580646 -0.0588710322580645 -0.0588168232044199
##       0                   1                   4                   8
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0587595340909091 -0.0585562139037433 -0.0584936538461539
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0584936538461538 -0.0583576220930232 -0.0583118082901555
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0582447446808511 -0.058244744680851 -0.0581740163934426
##       0                   3                  2                  10
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0580993146067415 -0.0579365714285714 -0.0578578532608696
##       0                   1                   3                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0578578532608695 -0.0577747374301676 -0.0576316421052632
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0576316421052631 -0.0575451081081081 -0.057545108108108
##       0                   1                   7                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0574537666666667 -0.0574537666666666 -0.0573299057591623
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0572357258064516 -0.0572357258064515 -0.0571363425414365
##       0                   2                   2                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0571363425414364 -0.0570313125 -0.0569296524064171
##       0                   2             2                   4
##       1                   0             0                   0
##        y_rate_haz
## earlybf -0.0568224065934066 -0.0567358134715026 -0.056626835106383
##       0                   7                   2                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0565119016393443 -0.0565119016393442 -0.0563905112359551
##       0                   3                   6                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0562621040462428 -0.0562047717391304 -0.0560754804469274
##       0                   1                   5                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0560307631578948 -0.0560307631578947 -0.0559387586206897
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0559387586206896 -0.0559009621621622 -0.0559009621621621
##       0                   1                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.05576395 -0.0557374083769633 -0.0556191085714285
##       0           1                   1                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0556004193548387 -0.0554657470588235 -0.055455861878453
##       0                   1                   1                  9
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.055303090909091 -0.0553030909090909 -0.0551598186528497
##       0                  1                   3                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0551511593406594 -0.0551511593406593 -0.0550089255319149
##       0                   4                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0549906440677966 -0.0548497868852459 -0.0548497868852458
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0548207965116279 -0.0546817078651685 -0.0545516902173913
##       0                   2                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0544298842105263 -0.0543762234636872 -0.0543762234636871
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0542568162162162 -0.0541449109947644 -0.0540741333333333
##       0                   3                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0539651129032258 -0.0539651129032257 -0.0538810114285714
##       0                   5                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0537753812154696 -0.0536765294117647 -0.0535838238341969
##       0                   9                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0535748693181818 -0.0534799120879121 -0.0533910159574468
##       0                   2                  11                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0533626315789474 -0.053307618556701 -0.053272186440678
##       0                   1                  1                  1
##       1                   0                  0                  0
##        y_rate_haz
## earlybf -0.0531876721311476 -0.0531876721311475 -0.052972904494382
##       0                   1                   4                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0528986086956522 -0.0528986086956521 -0.0528290052631579
##       0                   3                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0527457225433526 -0.0526769664804469 -0.0526126702702703
##       0                   3                   5                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0525524136125654 -0.0523843166666667 -0.0523843166666666
##       0                   1                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0523298064516129 -0.052278703125 -0.0521429142857143
##       0                   2               1                   2
##       1                   0               0                   0
##        y_rate_haz
## earlybf -0.0520949005524862 -0.0520499679144385 -0.0518466477272727
##       0                   9                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0518086648351648 -0.0517731063829787 -0.0515255573770492
##       0                   4                   2                   8
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0514991746031746 -0.0512641011235955 -0.051245527173913
##       0                   2                   3                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0512281263157894 -0.0509777094972067 -0.0509685243243243
##       0                   1                   4                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0509599162303665 -0.0506945 -0.0504318341968912
##       0                   1         13                   1
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.0504234064171123 -0.0504144198895028 -0.0504144198895027
##       0                   2                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0501551968085106 -0.0501374175824176 -0.0501374175824175
##       0                   3                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0501184261363636 -0.0498898253968254 -0.0498634426229508
##       0                   2                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0496272473684211 -0.049592445652174 -0.0495924456521739
##       0                   2                  3                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.049555297752809 -0.0493674188481675 -0.0493243783783784
##       0                  1                   2                   6
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0492784525139665 -0.049110296875 -0.0490591935483871
##       0                   2               2                   3
##       1                   0               0                   0
##        y_rate_haz
## earlybf -0.0490046833333333 -0.0487968449197861 -0.0487339392265193
##       0                   3                   1                   7
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.04866672 -0.0485372872340426 -0.0485372872340425
##       0           1                   2                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0484661703296703 -0.0483902045454545 -0.0482804761904762
##       0                   4                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0482013278688525 -0.048116813559322 -0.0480263684210526
##       0                   6                  2                   3
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0479393641304348 -0.0479393641304347 -0.0478464943820225
##       0                   6                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0476802324324324 -0.0475791955307263 -0.0475791955307262
##       0                   4                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.04752609375 -0.0474711502890173 -0.0474238870967742
##       0              1                   1                   6
##       1              0                   0                   0
##        y_rate_haz
## earlybf -0.0474238870967741 -0.0473148666666667 -0.0473148666666666
##       0                   1                   6                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0472798445595855 -0.0471702834224599 -0.0470534585635359
##       0                   1                   6                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0470361340206185 -0.0467949230769231 -0.046794923076923
##       0                   1                   4                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.046671126984127 -0.0465392131147541 -0.0464254894736842
##       0                  4                   9                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0463983559322034 -0.0462862826086957 -0.0462862826086956
##       0                   1                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0461824240837696 -0.046137691011236 -0.0461376910112359
##       0                   1                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0460360864864865 -0.045941890625 -0.045879938547486
##       0                   4               1                  2
##       1                   0               0                  0
##        y_rate_haz
## earlybf -0.0457885806451613 -0.0457129595375723 -0.0457038497409326
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.04562505 -0.0455437219251337 -0.0454502413793103
##       0           9                   2                   1
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0453729779005525 -0.0453729779005524 -0.0453014680851064
##       0                   6                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0451236758241758 -0.0450617777777778 -0.0449337613636364
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0449337613636363 -0.0448770983606557 -0.0448246105263158
##       0                   2                   4                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0446798983050847 -0.0446332010869565 -0.0444288876404495
##       0                   3                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0443919405405405 -0.0443576875 -0.0441806815642458
##       0                   5             3                   6
##       1                   0             0                   0
##        y_rate_haz
## earlybf -0.0441532741935484 -0.0441278549222798 -0.0439547687861272
##       0                   3                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0439352333333334 -0.0439352333333333 -0.0439171604278075
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0436924972375691 -0.0436835585106384 -0.0436835585106383
##       0                   7                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0434524285714286 -0.0434524285714285 -0.0432237315789474
##       0                  10                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0432149836065574 -0.0432149836065573 -0.0432055397727273
##       0                   6                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0429801195652174 -0.0429614406779661 -0.042773484375
##       0                   5                   5               1
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0427477945945946 -0.0427200842696629 -0.0425518601036269
##       0                   6                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0425179677419355 -0.0424814245810056 -0.0424814245810055
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0422905989304813 -0.0422905989304812 -0.0422454166666667
##       0                   1                   1                   9
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0420656489361702 -0.0420120165745856 -0.0418430793650794
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0418430793650793 -0.0417811813186813 -0.0417143314285715
##       0                   1                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0417143314285714 -0.041622852631579 -0.0416228526315789
##       0                   1                  1                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.041552868852459 -0.0414049319371728 -0.0413270380434783
##       0                  7                   1                   5
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0413270380434782 -0.0412429830508475 -0.0411036486486487
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0411036486486486 -0.0410112808988764 -0.0409758652849741
##       0                   4                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0408826612903226 -0.0407821675977654 -0.0407821675977653
##       0                   4                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0407646494845361 -0.0406640374331551 -0.0405556
##       0                   1                   2          5
##       1                   0                   0          0
##        y_rate_haz
## earlybf -0.0404477393617021 -0.040438387283237 -0.0403315359116022
##       0                   5                  1                   6
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0402337301587302 -0.0401099340659341 -0.040109934065934
##       0                   3                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0398907540983607 -0.0398907540983606 -0.0397490965909091
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0396739565217392 -0.0396739565217391 -0.039605078125
##       0                   1                   3               1
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0394595027027027 -0.0393024775280899 -0.0393024775280898
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0392473548387096 -0.0390829106145251 -0.0390374759358289
##       0                   1                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0388657833333333 -0.038829829787234 -0.0386510552486189
##       0                   5                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0386510552486188 -0.0386510552486187 -0.038624380952381
##       0                  10                   1                  4
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0384386868131868 -0.0384210947368421 -0.0382286393442623
##       0                   3                   2                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0382199371727749 -0.038020875 -0.0378238756476684
##       0                   1            7                   1
##       1                   0            0                   0
##        y_rate_haz
## earlybf -0.0378153567567568 -0.0378060677966102 -0.0376120483870968
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0375936741573034 -0.0374359384615385 -0.0374359384615384
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0374109144385027 -0.0373836536312849 -0.0371759666666667
##       0                   4                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0371759666666666 -0.0369705745856354 -0.0368202157894737
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0367674395604396 -0.0367674395604395 -0.0366274397905759
##       0                   7                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0365665245901639 -0.0363677934782609 -0.0363677934782608
##       0                   2                   6                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0362926534090909 -0.0361712108108108 -0.0360610360824742
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0359767419354839 -0.0358848707865169 -0.0358848707865168
##       0                   4                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0356843966480448 -0.0356843966480447 -0.0355750877192983
##       0                   1                   7                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.03548615 -0.0354056825396825 -0.0352900939226519
##       0           3                   1                   4
##       1           0                   0                   0
##        y_rate_haz
## earlybf -0.0352193368421053 -0.0352193368421052 -0.0350961923076924
##       0                   4                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0350961923076923 -0.035034942408377 -0.034961724137931
##       0                   7                  1                  1
##       1                   0                  0                  0
##        y_rate_haz
## earlybf -0.0349044098360656 -0.0349044098360655 -0.03485246875
##       0                   7                   1              1
##       1                   0                   0              0
##        y_rate_haz
## earlybf -0.0347619428571429 -0.0347147119565218 -0.0347147119565217
##       0                   1                   1                   9
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0346718860103627 -0.0345644318181818 -0.0345270648648649
##       0                   2                   1                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0343691525423729 -0.034341435483871 -0.0343162769230769
##       0                   2                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0341760674157303 -0.0341577914438503 -0.0339851396648045
##       0                   1                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0339851396648044 -0.0339761010638298 -0.0337963333333334
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0337963333333333 -0.0336096132596685 -0.033442445026178
##       0                   7                   6                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0334249450549451 -0.033424945054945 -0.033268265625
##       0                   3                  5               1
##       1                   0                  0               0
##        y_rate_haz
## earlybf -0.0332422950819672 -0.0332136379310345 -0.0330616304347826
##       0                   4                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.032882918918919 -0.0328829189189189 -0.0327061290322581
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0326506949152542 -0.0325893214285714 -0.0325312299465241
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0324672640449438 -0.0323581914893617 -0.0322858826815643
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0322858826815642 -0.0321869841269842 -0.0321869841269841
##       0                   5                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0321065166666667 -0.0320175789473684 -0.0319291325966851
##       0                   9                   1                  11
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0317536978021979 -0.0317536978021978 -0.0315801803278688
##       0                   1                   5                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.031519896373057 -0.0312857485714286 -0.0312857485714285
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.031238772972973 -0.0311079886363637 -0.0310708225806452
##       0                  3                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0310708225806451 -0.0309046684491978 -0.0307402819148936
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.030586625698324 -0.0304167 -0.0304166999999999
##       0                  2          6                   1
##       1                  0          0                   0
##        y_rate_haz
## earlybf -0.0302486519337017 -0.0302486519337016 -0.0300824505494506
##       0                   2                   5                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0300824505494505 -0.0300630174418605 -0.0299180655737705
##       0                   6                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0298892427745665 -0.0297554673913044 -0.0297554673913043
##       0                   1                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0295946270270271 -0.029594627027027 -0.0295476514285714
##       0                   1                  2                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0294355161290322 -0.0293797670454545 -0.0292781069518717
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0289682857142857 -0.0288873687150838 -0.0287268833333334
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0287268833333333 -0.0285681712707182 -0.02851565625
##       0                   5                   2              2
##       1                   0                   0              0
##        y_rate_haz
## earlybf -0.0284112032967033 -0.0282946046511628 -0.0282559508196721
##       0                  12                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0281023858695653 -0.0281023858695652 -0.0279504810810811
##       0                   1                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0278095542857143 -0.0278002096774193 -0.0276515454545455
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0276515454545454 -0.0275044627659575 -0.0275044627659574
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0274953220338983 -0.0273589365079365 -0.0273408539325843
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0272149421052632 -0.0272149421052631 -0.0271881117318436
##       0                   2                   3                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0271881117318435 -0.0270724554973822 -0.0270370666666667
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0268876906077348 -0.0267399560439561 -0.026739956043956
##       0                   8                   5                  3
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0266813157894737 -0.0265938360655738 -0.0265938360655737
##       0                   1                   8                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0264493043478261 -0.0263063351351351 -0.0262212931034483
##       0                   5                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0261649032258064 -0.0260714571428571 -0.0260249839572193
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0260249839572192 -0.0259233238636364 -0.0259233238636363
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0257768644067797 -0.0257768644067796 -0.0257495873015873
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0256320505617978 -0.0256320505617977 -0.0256140631578948
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0256140631578947 -0.0254888547486033 -0.0254799581151833
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0254799581151832 -0.02534725 -0.0252072099447514
##       0                   1           4                  11
##       1                   0           0                   0
##        y_rate_haz
## earlybf -0.0250859381443299 -0.0250687087912089 -0.0250687087912088
##       0                   1                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0249317213114754 -0.0249317213114753 -0.024796222826087
##       0                  10                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0247962228260869 -0.0247577790697674 -0.0246621891891892
##       0                   4                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0246146705202312 -0.0245295967741935 -0.0243984224598931
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.024398422459893 -0.02433336 -0.0241402380952381
##       0                  2           2                   3
##       1                  0           0                   0
##        y_rate_haz
## earlybf -0.024058406779661 -0.0240131842105263 -0.0239232471910113
##       0                  2                   2                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0239232471910112 -0.0237895977653631 -0.023763046875
##       0                   3                   2               2
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0236574333333334 -0.0236574333333333 -0.023526729281768
##       0                   1                   4                  5
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0235267292817679 -0.0233974615384616 -0.0233974615384615
##       0                   1                   1                   6
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0232696065573771 -0.023269606557377 -0.0231431413043478
##       0                   3                  4                   5
##       1                   0                  0                   0
##        y_rate_haz
## earlybf -0.0230180432432433 -0.0230180432432432 -0.0229893662790698
##       0                   3                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0228942903225807 -0.0228942903225806 -0.0226507340425532
##       0                   1                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0225952628571429 -0.0225308888888889 -0.0225308888888888
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0224668806818182 -0.0224123052631579 -0.0223399491525424
##       0                   1                   1                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0222144438202247 -0.02217884375 -0.0220903407821229
##       0                   2              2                   5
##       1                   0              0                   0
##        y_rate_haz
## earlybf -0.0220639274611399 -0.0219676166666667 -0.0219676166666666
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0219501958762887 -0.0218462486187846 -0.0218462486187845
##       0                   1                   5                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0217262142857143 -0.0216074918032787 -0.0214900597826087
##       0                   6                   4                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0213738972972973 -0.0212589838709678 -0.0212589838709677
##       0                   3                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0212209534883721 -0.0211452994652407 -0.0211452994652406
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0210328244680852 -0.0210328244680851 -0.0209215396825397
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0208571657142857 -0.0208114263157895 -0.0207386590909091
##       0                   2                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0207024659685864 -0.020594640625 -0.0205056404494382
##       0                   1               1                   1
##       1                   0               0                   0
##        y_rate_haz
## earlybf -0.0203910837988827 -0.0202778 -0.0201657679558011
##       0                   2          3                   3
##       1                   0          0                   0
##        y_rate_haz
## earlybf -0.020165767955801 -0.020054967032967 -0.0199453770491803
##       0                  1                  8                   4
##       1                  0                  0                   0
##        y_rate_haz
## earlybf -0.0198369782608696 -0.0197297513513514 -0.0197297513513513
##       0                   4                   4                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.019681394117647 -0.0196236774193549 -0.0196236774193548
##       0                  1                   1                   2
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0195187379679144 -0.0194525406976744 -0.019414914893617
##       0                   4                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0193121904761905 -0.0193121904761904 -0.0192105473684211
##       0                   3                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0191099685863875 -0.0190104375 -0.0189119378238342
##       0                   1             2                   2
##       1                   0             0                   0
##        y_rate_haz
## earlybf -0.0189030338983051 -0.0187968370786517 -0.0186918268156425
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0186918268156424 -0.0185879833333334 -0.0185879833333333
##       0                   3                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0184852872928177 -0.0183837197802198 -0.018283262295082
##       0                   6                   9                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0182832622950819 -0.0181838967391305 -0.0181838967391304
##       0                   4                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0180856054054054 -0.0179883709677419 -0.0178921764705882
##       0                   2                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.017797005319149 -0.0177028412698413 -0.0176096684210526
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf -0.0173809714285714 -0.0171845762711865 -0.0170880337078652
##       0                   1                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0170880337078651 -0.0168981666666667 -0.0168048066298343
##       0                   1                   2                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0168048066298342 -0.0167124725274725 -0.0166211475409836
##       0                   3                   7                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0165308152173913 -0.0165308152173912 -0.0164414594594595
##       0                   5                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.016353064516129 -0.016265614973262 -0.0161790957446809
##       0                  1                  2                   1
##       1                  0                  0                   0
##        y_rate_haz
## earlybf -0.0161790957446808 -0.0160934920634921 -0.0159249738219895
##       0                   1                   3                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0156428742857143 -0.0155539943181818 -0.0154661186440678
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0153792303370787 -0.015293312849162 -0.01520835
##       0                   5                  6           3
##       1                   0                  0           0
##        y_rate_haz
## earlybf -0.0151243259668508 -0.0150412252747253 -0.0149590327868853
##       0                   6                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0149590327868852 -0.0148777336956522 -0.0147973135135135
##       0                   8                   7                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0147177580645161 -0.0145611861702128 -0.0145611861702127
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0144841428571429 -0.0144079105263158 -0.014257828125
##       0                   2                   4               1
##       1                   0                   0               0
##        y_rate_haz
## earlybf -0.0140384769230769 -0.0139846896551724 -0.0139047771428572
##       0                   1                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0139047771428571 -0.0136704269662921 -0.0135940558659218
##       0                   1                   1                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0135185333333333 -0.0134438453038674 -0.013369978021978
##       0                   5                   6                  4
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0132969180327869 -0.0132246521739131 -0.013224652173913
##       0                   6                   2                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0131531675675676 -0.0131531675675675 -0.0130824516129032
##       0                   5                   2                   5
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0130124919786096 -0.0129432765957447 -0.0128747936507937
##       0                   3                   6                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0128747936507936 -0.0128070315789474 -0.0127399790575916
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.012673625 -0.0123073352601156 -0.01216668 -0.0120975511363636
##       0            1                   1           1                   1
##       1            0                   0           0                   0
##        y_rate_haz
## earlybf -0.0120292033898305 -0.0119616235955056 -0.0118947988826816
##       0                   2                   2                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0118947988826815 -0.0118287166666667 -0.011763364640884
##       0                   2                   3                  4
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0116987307692308 -0.0116987307692307 -0.0116348032786886
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0116348032786885 -0.0115715706521739 -0.0115090216216216
##       0                   2                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0114471451612903 -0.0113859304812835 -0.0113859304812834
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0113253670212766 -0.0112654444444444 -0.011206152631579
##       0                   1                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf -0.0112061526315789 -0.0111474816753927 -0.01103196373057
##       0                   1                   1                 1
##       1                   0                   0                 0
##        y_rate_haz
## earlybf -0.0110319637305699 -0.0105491445086705 -0.0104885172413793
##       0                   1                   1                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0103693295454546 -0.0103693295454545 -0.0103107457627119
##       0                   3                   2                   3
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0102528202247191 -0.0101955418994413 -0.0101389000000001
##       0                   3                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf -0.0101389 -0.0100828839779006 -0.0100828839779005
##       0          7                   4                   1
##       1          0                   0                   0
##        y_rate_haz
## earlybf -0.0100274835164835 -0.00997268852459017 -0.00997268852459016
##       0                   8                    4                    2
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00997268852459015 -0.00991848913043479 -0.00991848913043477
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00991848913043475 -0.00986487567567568 -0.00986487567567567
##       0                    1                    3                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00986487567567565 -0.00981183870967743 -0.00981183870967739
##       0                    1                    3                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00975936898395715 -0.00970745744680852 -0.00965609523809525
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00965609523809521 -0.00960527368421053 -0.00955498429319373
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00955498429319369 -0.00950521874999997 -0.00940722680412369
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00935898461538455 -0.00889377192982453 -0.00869048571428572
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00859228813559323 -0.00854401685393263 -0.00854401685393255
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00849628491620111 -0.00844908333333338 -0.00844908333333332
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0084490833333333 -0.00840240331491717 -0.00840240331491714
##       0                   1                    1                    2
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.0084024033149171 -0.00835623626373631 -0.00835623626373627
##       0                   1                    1                    3
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00835623626373623 -0.00831057377049185 -0.00831057377049181
##       0                    3                    1                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00831057377049179 -0.00831057377049177 -0.00826540760869566
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00826540760869562 -0.0082207297297297 -0.00817653225806452
##       0                    2                   1                    3
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00813280748663102 -0.00813280748663101 -0.00813280748663099
##       0                    3                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00808954787234043 -0.0080895478723404 -0.00804674603174604
##       0                    1                   1                    1
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00800439473684211 -0.00792101562500004 -0.0070736511627907
##       0                    2                    2                   1
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00687383050847458 -0.00683521348314607 -0.006835213483146
##       0                    3                    1                  1
##       1                    0                    0                  0
##        y_rate_haz
## earlybf -0.0067970279329609 -0.00675926666666667 -0.00675926666666666
##       0                   1                    2                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00672192265193371 -0.0067219226519337 -0.00672192265193367
##       0                    4                   2                    1
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00672192265193363 -0.00668498901098902 -0.006684989010989
##       0                    1                    6                  1
##       1                    0                    0                  0
##        y_rate_haz
## earlybf -0.00664845901639345 -0.00661232608695653 -0.00661232608695652
##       0                    3                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00661232608695649 -0.00657658378378379 -0.00657658378378378
##       0                    2                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00650624598930482 -0.00650624598930481 -0.00647163829787235
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00643739682539683 -0.00640351578947369 -0.0063039792746114
##       0                    1                    2                   1
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00533626315789474 -0.0052442586206897 -0.00521429142857143
##       0                    1                   1                    1
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00518466477272727 -0.00515537288135597 -0.00515537288135594
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00515537288135592 -0.00512641011235955 -0.00509777094972071
##       0                    1                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00509777094972067 -0.00509777094972064 -0.00509777094972056
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00506945 -0.00504144198895028 -0.00504144198895024
##       0           3                    3                    4
##       1           0                    0                    0
##        y_rate_haz
## earlybf -0.0050137417582418 -0.00501374175824176 -0.00498634426229509
##       0                   1                    4                    4
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00498634426229505 -0.0049592445652174 -0.00495924456521736
##       0                    1                   1                    2
##       1                    0                   0                    0
##        y_rate_haz
## earlybf -0.00493243783783781 -0.00490591935483871 -0.00487968449197861
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0048537287234043 -0.00482804761904759 -0.00480263684210523
##       0                   1                    1                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.0047774921465969 -0.00475260937500004 -0.00472798445595855
##       0                   1                    1                    1
##       1                   0                    0                    0
##        y_rate_haz
## earlybf -0.00347619428571429 -0.00345644318181819 -0.00343691525423729
##       0                    2                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00341760674157304 -0.00339851396648045 -0.00337963333333334
##       0                    1                    7                    3
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00336096132596685 -0.00334249450549451 -0.00332422950819672
##       0                    1                    4                    4
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00332422950819669 -0.00330616304347826 -0.0032882918918919
##       0                    1                    6                   4
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00327061290322581 -0.00325312299465241 -0.00323581914893617
##       0                    3                    4                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00318499476439791 -0.00176841279069768 -0.00175819075144513
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00172822159090913 -0.00172822159090905 -0.00170880337078656
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00170880337078652 -0.00170880337078648 -0.00169925698324022
##       0                    1                    1                    2
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00168981666666667 -0.00168981666666663 -0.00168048066298346
##       0                    2                    3                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00168048066298343 -0.00168048066298339 -0.00167124725274729
##       0                    5                    2                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00167124725274725 -0.00167124725274722 -0.0016621147540984
##       0                    8                    1                   1
##       1                    0                    0                   0
##        y_rate_haz
## earlybf -0.00166211475409836 -0.00165308152173917 -0.00165308152173913
##       0                    4                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.00165308152173912 -0.00164414594594595 -0.00164414594594591
##       0                    1                    1                    1
##       1                    0                    0                    0
##        y_rate_haz
## earlybf -0.0016265614973262 -0.00161790957446805 -0.00159249738219895  0
##       0                   1                    1                    1 63
##       1                   0                    0                    0  0
##        y_rate_haz
## earlybf 0.00157599481865285 0.00158420312499997 0.00159249738219895
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00159249738219899 0.00160087894736842 0.00161790957446809
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00161790957446812 0.00162656149732617 0.0016265614973262
##       0                   1                   1                  2
##       1                   0                   0                  0
##        y_rate_haz
## earlybf 0.0016353064516129 0.00164414594594591 0.00164414594594595
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.00165308152173913 0.00166211475409836 0.0016621147540984
##       0                   4                   1                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf 0.00167124725274722 0.00167124725274725 0.00168048066298339
##       0                   2                   5                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00168048066298343 0.00168981666666667 0.00168981666666671
##       0                   3                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00169925698324019 0.00169925698324022 0.00170880337078651
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00170880337078652 0.00170880337078656 0.00171845762711868
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00176841279069772 0.00320175789473684 0.00321869841269841
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00321869841269842 0.00325312299465241 0.00327061290322581
##       0                   1                   3                   4
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00328829189189188 0.0032882918918919 0.00330616304347826
##       0                   1                  4                   8
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00332422950819672 0.00334249450549449 0.00334249450549451
##       0                   2                   1                   8
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00336096132596685 0.00337963333333334 0.00339851396648044
##       0                   4                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00339851396648045 0.00341760674157304 0.00343691525423725
##       0                   3                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00343691525423728 0.00343691525423729 0.00345644318181819
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00349617241379307 0.00349617241379311 0.00351638150289018
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00467949230769231 0.00472798445595852 0.00472798445595855
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.004752609375 0.00477749214659683 0.00482804761904759
##       0              1                   1                   1
##       1              0                   0                   0
##        y_rate_haz
## earlybf 0.00482804761904762 0.00485372872340426 0.00487968449197858
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00487968449197865 0.00490591935483871 0.00490591935483875
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00493243783783783 0.00493243783783784 0.00495924456521736
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.0049592445652174 0.00498634426229505 0.00498634426229509
##       0                  2                   2                   1
##       1                  0                   0                   0
##        y_rate_haz
## earlybf 0.00498634426229512 0.00501374175824173 0.00501374175824174
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00501374175824175 0.00501374175824176 0.00504144198895024
##       0                   1                   4                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00504144198895028 0.00504144198895032 0.00506944999999997
##       0                   5                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00506945 0.00506945000000004 0.00509777094972067
##       0          1                   1                   1
##       1          0                   0                   0
##        y_rate_haz
## earlybf 0.00509777094972071 0.0051553728813559 0.00515537288135597
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00518466477272728 0.00527457225433526 0.00636998952879578
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00640351578947369 0.00650624598930482 0.00654122580645162
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00657658378378377 0.00657658378378379 0.00661232608695653
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00664845901639345 0.006684989010989 0.00668498901098901
##       0                   3                 1                   2
##       1                   0                 0                   0
##        y_rate_haz
## earlybf 0.00668498901098902 0.00672192265193371 0.00675926666666665
##       0                   2                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00675926666666667 0.0067970279329609 0.00683521348314607
##       0                   5                  2                   2
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00691288636363637 0.00695238857142858 0.00796248691099477
##       0                   1                   3                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00808954787234042 0.00808954787234043 0.00813280748663102
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00817653225806449 0.00822072972972974 0.00826540760869562
##       0                   1                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00826540760869564 0.00826540760869565 0.00826540760869566
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00831057377049177 0.0083105737704918 0.00831057377049185
##       0                   1                  1                   1
##       1                   0                  0                   0
##        y_rate_haz
## earlybf 0.00835623626373623 0.00835623626373627 0.0084024033149171
##       0                   1                   2                  1
##       1                   0                   0                  0
##        y_rate_haz
## earlybf 0.00840240331491713 0.00840240331491714 0.00840240331491717
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00844908333333338 0.00849628491620112 0.00849628491620116
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00854401685393255 0.00854401685393259 0.00859228813559319
##       0                   2                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00869048571428576 0.00879095375722544 0.00884206395348838
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00889377192982453 0.00950521875 0.00955498429319373
##       0                   1             1                   1
##       1                   0             0                   0
##        y_rate_haz
## earlybf 0.00960527368421053 0.00975936898395719 0.00975936898395722
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00975936898395723 0.00981183870967742 0.00981183870967743
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00986487567567565 0.00986487567567568 0.00991848913043477
##       0                   1                   2                   1
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.00991848913043478 0.00991848913043479 0.00997268852459017
##       0                   2                   1                   2
##       1                   0                   0                   0
##        y_rate_haz
## earlybf 0.0100274835164835 0.0100828839779006 0.0101389 0.0101955418994413
##       0                 10                  1         2                  4
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf 0.0102528202247191 0.0103107457627118 0.0103107457627119
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0103693295454546 0.0106725263157895 0.0111474816753927
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0112061526315789 0.011206152631579 0.0113253670212766
##       0                  2                 2                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0114471451612903 0.0115090216216216 0.0115715706521739
##       0                  1                  4                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.011571570652174 0.0116348032786885 0.0116348032786886
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0116987307692307 0.0116987307692308 0.011763364640884
##       0                  2                  9                 5
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0118287166666666 0.0118287166666667 0.0118947988826815
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0119616235955056 0.0120292033898305 0.0120975511363636
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0122366034482759 0.0129432765957447 0.0130824516129032
##       0                  2                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0131531675675676 0.013224652173913 0.0132246521739131
##       0                  2                 1                  5
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0132969180327869 0.013369978021978 0.0134438453038674
##       0                  4                10                  6
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0135185333333333 0.0135940558659218 0.0136704269662921
##       0                  5                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0138257727272727 0.0139047771428571 0.0139846896551724
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0141473023255814 0.014257828125 0.0143324764397906
##       0                  1              1                  1
##       1                  0              0                  0
##        y_rate_haz
## earlybf 0.0144079105263158 0.0144841428571429 0.0145611861702127
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0145611861702128 0.0146390534759358 0.0147177580645161
##       0                  2                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0147973135135135 0.0148777336956522 0.0149590327868852
##       0                  4                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0149590327868853 0.0150412252747253 0.0151243259668508
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.01520835 0.0152083500000001 0.015293312849162 0.0153792303370786
##       0          6                  1                 2                  1
##       1          0                  0                 0                  0
##        y_rate_haz
## earlybf 0.0153792303370787 0.0154661186440678 0.0155539943181818
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0156787113402062 0.0157599481865285 0.01584203125
##       0                  1                  1             1
##       1                  0                  0             0
##        y_rate_haz
## earlybf 0.0160087894736842 0.0161790957446809 0.016265614973262
##       0                  2                  1                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0164414594594594 0.0164414594594595 0.0165308152173913
##       0                  1                  3                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0166211475409836 0.0167124725274725 0.0168048066298342
##       0                  2                  6                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0168048066298343 0.0168981666666666 0.0168981666666667
##       0                  3                  1                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0169925698324022 0.0170880337078652 0.0171581384615384
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0171845762711865 0.0172822159090908 0.0172822159090909
##       0                  2                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0175174712041885 0.0177028412698413 0.017797005319149
##       0                  1                  3                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0178921764705882 0.0179883709677419 0.0180856054054054
##       0                  1                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0181838967391304 0.0181838967391305 0.018283262295082
##       0                  2                  1                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0183837197802198 0.0184852872928177 0.0185879833333333
##       0                  6                  3                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0186918268156424 0.0187968370786517 0.0189030338983051
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0189119378238342 0.0190104375 0.0192105473684211
##       0                  1            1                  1
##       1                  0            0                  0
##        y_rate_haz
## earlybf 0.019228948275862 0.0193121904761904 0.0193121904761905
##       0                 1                  1                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0196236774193548 0.0196236774193549 0.0197297513513513
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0197297513513514 0.0198369782608696 0.0199453770491803
##       0                  4                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.020054967032967 0.0201657679558011 0.0202778 0.0203910837988827
##       0                 2                  4         5                  2
##       1                 0                  0         0                  0
##        y_rate_haz
## earlybf 0.0205056404494382 0.020594640625 0.0206214915254237
##       0                  2              1                  2
##       1                  0              0                  0
##        y_rate_haz
## earlybf 0.0207024659685864 0.0207386590909091 0.0208114263157895
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0209215396825397 0.0211452994652406 0.0212589838709677
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0213738972972973 0.0214900597826087 0.0216074918032787
##       0                  1                  1                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0217262142857143 0.0218462486187845 0.0219501958762887
##       0                  5                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0219676166666666 0.0219676166666667 0.0220903407821229
##       0                  2                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0222144438202247 0.0223399491525424 0.0224668806818182
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0226507340425532 0.0227718609625669 0.0228942903225806
##       0                  2                  3                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0229893662790698 0.0230180432432432 0.0230180432432433
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0231238070175439 0.0231431413043478 0.023269606557377
##       0                  2                  1                 3
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0232696065573771 0.0233974615384615 0.0233974615384616
##       0                  3                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0235267292817679 0.023526729281768 0.0236574333333333
##       0                  2                 4                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0237895977653631 0.0238874607329843 0.0239232471910112
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.024140238095238 0.0241402380952381 0.0241951022727273
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0242686436170212 0.0242686436170213 0.024398422459893
##       0                  1                  7                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0243984224598931 0.0245295967741935 0.0245295967741936
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0246621891891892 0.0247577790697674 0.0247962228260869
##       0                  5                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.024796222826087 0.0249317213114754 0.0250687087912088
##       0                 2                  5                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0250687087912089 0.0252072099447514 0.02534725
##       0                  1                  4          5
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0254799581151832 0.0254888547486033 0.0254888547486034
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0256140631578947 0.0256140631578948 0.0256320505617977
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0257768644067796 0.0258865531914893 0.0258865531914894
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0259233238636364 0.0260249839572192 0.0260249839572193
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0261649032258065 0.0263063351351351 0.0263063351351352
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0264493043478261 0.0265938360655738 0.026739956043956
##       0                  1                  3                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0267399560439561 0.0268876906077348 0.0270370666666667
##       0                  2                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0270724554973822 0.0271881117318435 0.0271881117318436
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0273408539325843 0.0273589365079365 0.0274953220338983
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0275044627659574 0.0275044627659575 0.0276515454545454
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0278002096774194 0.0279504810810811 0.0281023858695652
##       0                  1                  4                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0282559508196721 0.0282559508196722 0.0284112032967032
##       0                  5                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0284112032967033 0.02851565625 0.0285681712707182
##       0                  3             1                  4
##       1                  0             0                  0
##        y_rate_haz
## earlybf 0.0286649528795812 0.0287268833333334 0.0288873687150838
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0291223723404255 0.0291223723404256 0.0292137796610169
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.029213779661017 0.0292781069518716 0.0292781069518717
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0294355161290322 0.029594627027027 0.0297554673913043
##       0                  1                 2                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0297554673913044 0.0297895515463917 0.0299180655737705
##       0                  4                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0300824505494505 0.0300824505494506 0.0302388245614035
##       0                  3                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0302486519337016 0.0302486519337017 0.0302574502617801 0.0304167
##       0                  5                  2                  1         3
##       1                  0                  0                  0         0
##        y_rate_haz
## earlybf 0.030586625698324 0.0307402819148936 0.0307584606741573
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0309046684491978 0.0309322372881356 0.0310708225806452
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0311079886363636 0.031238772972973 0.0312857485714286
##       0                  2                 3                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0314085489130435 0.0314655517241379 0.0315801803278688
##       0                  3                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0317536978021978 0.0317536978021979 0.0319291325966851
##       0                  7                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0321065166666667 0.0321869841269841 0.0322858826815642
##       0                  1                  2                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0322858826815643 0.0323581914893617 0.0324672640449438
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0325312299465241 0.0326506949152542 0.0327061290322579
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0327061290322581 0.0328829189189189 0.0330238457142857
##       0                  3                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0330616304347826 0.0330958911917098 0.0332422950819672
##       0                  2                  1                  7
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.033268265625 0.033424945054945 0.0334249450549451
##       0              2                 2                  4
##       1              0                 0                  0
##        y_rate_haz
## earlybf 0.0335998430232558 0.0336096132596685 0.0336184578947368
##       0                  2                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0336184578947369 0.0337963333333333 0.0339761010638298
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0339851396648045 0.034341435483871 0.0343691525423729
##       0                  3                 1                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0347147119565217 0.0349044098360656 0.034961724137931
##       0                  2                  4                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0350961923076923 0.0352193368421052 0.0352900939226519
##       0                  4                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0354056825396825 0.03548615 0.0355940106382979
##       0                  1          5                  1
##       1                  0          0                  0
##        y_rate_haz
## earlybf 0.0357843529411765 0.0358848707865168 0.0359767419354839
##       0                  2                  2                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0360876101694915 0.0361712108108108 0.0362926534090909
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0363677934782608 0.0363677934782609 0.03650004
##       0                  1                  4          3
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0365665245901639 0.036566524590164 0.0367674395604396
##       0                  3                 2                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0369705745856354 0.0370150317460317 0.0371759666666667
##       0                  2                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.037211920212766 0.0373538421052632 0.0375936741573034
##       0                 2                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0376120483870967 0.0376120483870968 0.0378060677966102
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0378153567567568 0.038020875 0.0382199371727749
##       0                  3           5                  2
##       1                  0           0                  0
##        y_rate_haz
## earlybf 0.0382286393442623 0.0384210947368421 0.0384386868131868
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0384578965517241 0.0386243809523809 0.038624380952381
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0386510552486188 0.0386801965317919 0.038829829787234
##       0                  4                  2                 2
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0388657833333333 0.0390374759358289 0.0390829106145252
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0392473548387097 0.0393024775280899 0.0393998704663212
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0395245254237288 0.039605078125 0.0396739565217391
##       0                  1              1                  1
##       1                  0              0                  0
##        y_rate_haz
## earlybf 0.0396739565217392 0.0397490965909091 0.0398124345549738
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0398907540983607 0.0400219736842105 0.0401099340659341
##       0                  3                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0402337301587302 0.0403315359116022 0.0405556 0.0407821675977654
##       0                  4                  5         2                  2
##       1                  0                  0         0                  0
##        y_rate_haz
## earlybf 0.0410112808988764 0.0411036486486486 0.0412429830508474
##       0                  1                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0412429830508475 0.0414049319371728 0.041552868852459
##       0                  3                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0417811813186813 0.0418430793650794 0.0420120165745856
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0420656489361702 0.0421965780346821 0.0422454166666667
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0423325206185567 0.0425179677419354 0.0425179677419355
##       0                  1                  1                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0427200842696629 0.0427477945945946 0.0429614406779661
##       0                  1                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0429801195652174 0.0429974293193717 0.0432055397727273
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0432149836065574 0.0432237315789474 0.0434524285714286
##       0                  3                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0436835585106383 0.043692497237569 0.0436924972375691
##       0                  1                 3                  4
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0439352333333334 0.0441532741935484 0.0442103197674419
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0443919405405405 0.0444288876404494 0.0445899267015707
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0446332010869565 0.0446332010869566 0.0448770983606557
##       0                  3                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0449337613636364 0.0450617777777777 0.0450617777777778
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0451236758241758 0.0453014680851064 0.0453729779005525
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0454502413793103 0.0454502413793104 0.04562505
##       0                  1                  1          6
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0457885806451613 0.045879938547486 0.0460360864864865
##       0                  2                 2                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0462862826086957 0.0463983559322034 0.0465392131147541
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.046671126984127 0.046794923076923 0.0467949230769231
##       0                 2                 2                  1
##       1                 0                 0                  0
##        y_rate_haz
## earlybf 0.0469193776595745 0.0470534585635359 0.0471702834224599
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0473148666666666 0.0473148666666667 0.0474238870967742
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0474711502890173 0.04752609375 0.0475791955307263
##       0                  1             1                  2
##       1                  0             0                  0
##        y_rate_haz
## earlybf 0.0476802324324324 0.0476802324324325 0.0478464943820225
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0479393641304348 0.0480263684210526 0.0482013278688525
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0482804761904762 0.0484661703296703 0.0485372872340425
##       0                  4                  5                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0487339392265193 0.0487968449197861 0.0490046833333333
##       0                  3                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0492784525139665 0.0493243783783784 0.0495155581395349
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.049555297752809 0.0495924456521739 0.049592445652174
##       0                 1                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0498634426229508 0.0498898253968254 0.0501374175824176
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0504144198895027 0.0504144198895028 0.0504234064171123
##       0                  1                  2                  5
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0504318341968912 0.0506945 0.0509685243243243 0.0509777094972067
##       0                  2         5                  1                  3
##       1                  0         0                  0                  0
##        y_rate_haz
## earlybf 0.051245527173913 0.0514744153846154 0.0515255573770492
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0517731063829787 0.0518086648351648 0.0520949005524862
##       0                  2                  1                  4
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.052278703125 0.0523843166666666 0.0524425862068966
##       0              1                  2                  1
##       1              0                  0                  0
##        y_rate_haz
## earlybf 0.0525524136125654 0.0526126702702703 0.0526769664804469
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0527457225433526 0.0528986086956521 0.0528986086956522
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.052972904494382 0.0530523837209302 0.0531085238095238
##       0                 1                  1                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0531876721311474 0.0531876721311475 0.0531876721311476
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.053272186440678 0.0534799120879121 0.0535748693181818
##       0                 1                  3                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0535748693181819 0.0536765294117647 0.0539651129032257
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0539651129032258 0.0540741333333333 0.0541449109947644
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0542568162162162 0.054376223463687 0.0545516902173913
##       0                  1                 1                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0546817078651685 0.0546817078651686 0.0548497868852459
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0549906440677966 0.0549906440677967 0.0550089255319149
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0551511593406593 0.0551511593406594 0.0553030909090909
##       0                  1                  3                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.055303090909091 0.055455861878453 0.0556004193548387
##       0                 1                 3                  2
##       1                 0                 0                  0
##        y_rate_haz
## earlybf 0.0556191085714285 0.0556191085714286 0.05576395
##       0                  1                  2          5
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0559009621621622 0.0559387586206896 0.0560307631578948
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0560754804469274 0.0562047717391304 0.0562047717391305
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0563272222222222 0.0563905112359551 0.0565119016393442
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0565119016393443 0.056626835106383 0.0568224065934066
##       0                  2                 3                  4
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0570313125 0.0571363425414364 0.0571363425414365
##       0            1                  1                  2
##       1            0                  0                  0
##        y_rate_haz
## earlybf 0.0572357258064516 0.0573572057142857 0.0574537666666666
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0574537666666667 0.0580993146067415 0.0580993146067416
##       0                  4                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0581740163934426 0.058244744680851 0.0584936538461539
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0585562139037433 0.0587595340909091 0.0588168232044199
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0589224031413612 0.0589224031413613 0.0592325210526316
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0594739944134078 0.0595109347826087 0.059778485549133
##       0                  1                  5                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.059836131147541 0.0598626542553191 0.0601460169491526
##       0                 4                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0601649010989011 0.0604877556818182 0.0604973038674033
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0605063387096774 0.0608334 0.0611552698412698 0.0611640163043478
##       0                  3         3                  2                  1
##       1                  0         0                  0                  0
##        y_rate_haz
## earlybf 0.0611732513966481 0.0614805638297872 0.0614982459016393
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0614982459016394 0.0615169213483146 0.061783921875
##       0                  3                  2              1
##       1                  0                  0              0
##        y_rate_haz
## earlybf 0.0618093368983957 0.0618361483516483 0.0618361483516484
##       0                  2                  3                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0618644745762712 0.0621777845303868 0.0622159772727273
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0624342789473684 0.0624775459459459 0.062477545945946
##       0                  1                  1                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0625232166666667 0.0625714971428571 0.0627148453608247
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.062764619047619 0.0628170978260869 0.062817097826087
##       0                 1                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0628725083798882 0.0628725083798883 0.0628725083798884
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0629311034482758 0.0631603606557377 0.063368125
##       0                  1                  2           1
##       1                  0                  0           0
##        y_rate_haz
## earlybf 0.0635829322033898 0.0637769516129032 0.0638582651933702
##       0                  1                  3                  6
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0639441988636364 0.0640351578947368 0.0640351578947369
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0641216918918919 0.0642130333333333 0.0643095942857143
##       0                  3                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0643739682539682 0.064470179347826 0.0644701793478261
##       0                  2                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0647163829787234 0.064822475409836 0.0648224754098361
##       0                  1                 1                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0650624598930481 0.0651786428571429 0.0652923926701571
##       0                  2                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0655387458563536 0.0656360368421052 0.0656724204545454
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0657658378378379 0.065850587628866 0.06590285 0.0659833174603175
##       0                  1                 1          2                  1
##       1                  0                 0          0                  0
##        y_rate_haz
## earlybf 0.0661232608695652 0.0661232608695653 0.0662710223463687
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0663342925531915 0.066427275862069 0.0664845901639344
##       0                  2                 1                  6
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.06653653125 0.0666433314606742 0.0668498901098901
##       0             1                  1                  3
##       1             0                  0                  0
##        y_rate_haz
## earlybf 0.067219226519337 0.0672369157894737 0.0674006420454545
##       0                 4                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0674006420454546 0.0674099837837838 0.0675926666666666
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0675926666666667 0.0677763423913043 0.0677763423913044
##       0                  3                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0681467049180328 0.0683521348314607 0.0685211373626373
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0686325538461538 0.0686828709677419 0.0688997071823204
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0688997071823205 0.0689863298969072 0.0692020158730159
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0698088196721312 0.0700698848167539 0.0701923846153846
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0703181774193548 0.0704386736842105 0.0704567627118644
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0705801878453039 0.0706982756756757 0.0708113650793651
##       0                  3                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0714709344262295 0.0716623821989529 0.0717697415730337
##       0                  4                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0718636318681318 0.0718636318681319 0.0719534838709677
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.072175220338983 0.0722606685082873 0.0723424216216215
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0723424216216216 0.0725853068181818 0.0726621166666666
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0726621166666667 0.0727355869565217 0.0728059308510638
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.07300008 0.0731330491803279 0.0731952673796792
##       0          1                  1                  1
##       1          0                  0                  0
##        y_rate_haz
## earlybf 0.0734785449438203 0.0735348791208791 0.0739411491712707
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0739865675675675 0.0739865675675676 0.0743519333333333
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0743519333333334 0.0743886684782608 0.0743886684782609
##       0                  2                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0747673072625699 0.0747951639344262 0.0747951639344263
##       0                  1                  5                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0748218288770053 0.0751873483146067 0.0752061263736264
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0752240967741935 0.0752240967741936 0.0752413105263158
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0756121355932203 0.07604175 0.0764572786885246 0.07646656424581
##       0                  1          4                  7                1
##       1                  0          0                  0                0
##        y_rate_haz
## earlybf 0.0768594032258065 0.0768773736263736 0.0772748594594595
##       0                  1                  4                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0773021104972376 0.077659659574468 0.0777315666666667
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0779915384615385 0.0782143714285714 0.0787997409326425
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0789190054054054 0.0791185838150289 0.0792775691489362
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0793479130434783 0.079701513368984 0.0797815081967213
##       0                  1                 1                  1
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0798650782122905 0.080043947368421 0.0802198681318681
##       0                  2                 1                  3
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0803137584269663 0.0804119655172414 0.0808954787234042
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0810009945652174 0.0811112 0.0812264147727273 0.0813280748663101
##       0                  2         3                  1                  1
##       1                  0         0                  0                  0
##        y_rate_haz
## earlybf 0.0815643351955307 0.0816905657142857 0.0817653225806452
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0819517305699482 0.0820225617977528 0.0823435524861878
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0823785625 0.0825133882978723 0.0826540760869565
##       0            1                  1                  3
##       1            0                  0                  0
##        y_rate_haz
## earlybf 0.083105737704918 0.0834006290322581 0.0835623626373626
##       0                 4                  1                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0837313651685393 0.0841312978723405 0.0843071576086956
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0843071576086957 0.0844023612565445 0.0845811978609626
##       0                  4                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0847678524590164 0.0848465842105263 0.0851037202072539
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0852336098901098 0.0852336098901099 0.0854401685393258
##       0                  1                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0854955891891892 0.0857045138121547 0.0857492074468085
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0858824470588235 0.0859602391304348 0.08618065
##       0                  1                  1          2
##       1                  0                  0          0
##        y_rate_haz
## earlybf 0.0864299672131147 0.0864299672131148 0.0866712419354838
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0869048571428571 0.0869048571428572 0.087131171875
##       0                  3                  1              1
##       1                  0                  0              0
##        y_rate_haz
## earlybf 0.0871489719101124 0.0873849944751381 0.0875873560209424
##       0                  1                  4                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0876133206521739 0.087834320855615 0.0878704666666667
##       0                  2                 2                  2
##       1                  0                 0                  0
##        y_rate_haz
## earlybf 0.0883065483870968 0.0885761043956044 0.0887838810810811
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0888577752808988 0.0890654751381215 0.089266402173913
##       0                  1                  2                 4
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0894608823529412 0.0897541967213115 0.0899418548387097
##       0                  2                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0901235555555556 0.0902473516483516 0.0902473516483517
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.090428027027027 0.0906029361702128 0.090745955801105
##       0                 1                  1                 1
##       1                 0                  0                 0
##        y_rate_haz
## earlybf 0.0907723507853404 0.0909194836956522 0.0914163114754099
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0917329047619048 0.0917598770949721 0.0919185989010989
##       0                  1                  2                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.092072172972973 0.0922753820224719 0.0923648481675393
##       0                 1                  2                  1
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0925725652173913 0.0926485689655173 0.0928509789473684
##       0                  2                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0928509789473685 0.0929399166666666 0.0929399166666667
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0930784262295082 0.0932124677419355 0.093323965909091
##       0                  4                  2                 1
##       1                  0                  0                 0
##        y_rate_haz
## earlybf 0.0934591340782123 0.0935898461538461 0.0935898461538462
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.093716318918919 0.0941069171270718 0.0942256467391304
##       0                 1                  2                  2
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0943405668449198 0.0946297333333333 0.0947405409836065
##       0                  1                  4                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0947405409836066 0.0948477741935484 0.0951583910614525
##       0                  2                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0952610934065934 0.0952610934065935 0.0953604648648649
##       0                  3                  1                  2
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0955498429319372 0.0956929887640449 0.0957873977900552
##       0                  1                  3                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0957873977900553 0.0958787282608696 0.0960527368421053
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0964026557377049 0.0964830806451613 0.0970046108108108
##       0                  2                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0974678784530386 0.0974678784530387 0.0975318097826087
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0976536157894737 0.0979520847457627 0.0980093666666667
##       0                  1                  2                  1
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0981703015873016 0.0985569050279329 0.0986035879120879
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.099110595505618 0.0991483591160221 0.0991848913043478
##       0                 1                  3                  3
##       1                 0                  0                  0
##        y_rate_haz
## earlybf 0.0992202513368984 0.0996705423728813 0.0997268852459016
##       0                  1                  1                  3
##       1                  0                  0                  0
##        y_rate_haz
## earlybf 0.0997796507936508 0.100274835164835 0.100292902702703
##       0                  1                 2                 1
##       1                  0                 0                 0
##        y_rate_haz
## earlybf 0.100310393617021 0.100819398876404 0.100828839779005
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.100828839779006 0.100837972826087 0.101389 0.102456252631579
##       0                 1                 2        3                 1
##       1                 0                 0        0                 0
##        y_rate_haz
## earlybf 0.102509320441989 0.102998349206349 0.103024306451613
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.103051114754098 0.103137086206897 0.103546212765957
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.10361732967033 0.103654675977654 0.103693295454545
##       0                3                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.104144135869565 0.104189801104972 0.104237005617978
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.104607698412698 0.104659612903226 0.104713229508197
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.105104827225131 0.105288576923077 0.105353932960894
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.105658010526316 0.105726497326203 0.105870281767956
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.105945808988764 0.106375344262295 0.10645845 0.106869486486487
##       0                 1                 1          1                 1
##       1                 0                 0          0                 0
##        y_rate_haz
## earlybf 0.106959824175824 0.107053189944134 0.107149738636364
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.107353058823529 0.107450298913043 0.107762022857143
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.108037459016393 0.108148266666667 0.108513632432432
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.108631071428571 0.109007826589595 0.109103380434783
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.109231243093923 0.109435746031746 0.10950012 0.109699573770492
##       0                 2                 1          1                 1
##       1                 0                 0          0                 0
##        y_rate_haz
## earlybf 0.110157778378378 0.110302318681319 0.110451703910614
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.110460647368421 0.110911723756906 0.111072219101124
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.11136168852459 0.1115279 0.111801924324324 0.111973565934066
##       0                1         1                 1                 2
##       1                0         0                 0                 0
##        y_rate_haz
## earlybf 0.112061526315789 0.112150960893855 0.112232743315508
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.112592204419889 0.11283614516129 0.113023803278689
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.113067314136126 0.11344607027027 0.113644813186813
##       0                 1                3                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.113850217877095 0.113859304812834 0.114062625 0.114255624365482
##       0                 2                 1           2                 1
##       1                 0                 0           0                 0
##        y_rate_haz
## earlybf 0.114263793650794 0.114272685082873 0.114659811518325
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.114714411428571 0.114871579787234 0.115090216216216
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.115136661016949 0.115619035087719 0.115715706521739
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.115873142857143 0.115953165745856 0.116348032786885
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.116452508571429 0.116489489361702 0.11659735 0.116734362162162
##       0                 1                 1          1                 1
##       1                 0                 0          0                 0
##        y_rate_haz
## earlybf 0.116864163157895 0.116987307692308 0.117112427807487
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.11723103125 0.117368788043478 0.11763364640884 0.118010147540984
##       0             1                 2                1                 2
##       1             0                 0                0                 0
##        y_rate_haz
## earlybf 0.11810739893617 0.118287166666667 0.118378508108108
##       0                1                 1                 2
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.118573576271186 0.118658554945055 0.118738989304813
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.118947988826816 0.119314127071823 0.119672262295082
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.119976983333333 0.120065921052632 0.120292033898305
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.120329802197802 0.120365550802139 0.12070119047619
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.120994607734807 0.12133437704918 0.1216668 0.122647983870968
##       0                 1                1         3                 1
##       1                 0                0         0                 0
##        y_rate_haz
## earlybf 0.12267508839779 0.122996491803279 0.123267678947368
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.123404897142857 0.123672296703297 0.123981114130435
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.124283290322581 0.124355569060774 0.124658606557377
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.125142994285714 0.125343543956044 0.125634195652174
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.126320721311475 0.126469436842105 0.126589734104046 0.12673625
##       0                 2                 1                 1          1
##       1                 0                 0                 0          0
##        y_rate_haz
## earlybf 0.127014791208791 0.127253540816327 0.127553903225806
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.127814856382979 0.128070315789474 0.128243383783784
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.128426066666667 0.12849835828877 0.128619188571429
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.128686038461538 0.128686038461539 0.128884322033898
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.128940358695652 0.129189209677419 0.129397011049724
##       0                 2                 2                 3
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.129671194736842 0.129869056179775 0.130115883333333
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.130124919786096 0.130357285714286 0.130593440217391
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.130602779661017 0.130824516129032 0.130842787709497
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.131050675531915 0.131307065573771 0.131344840909091
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.131531675675676 0.1318057 0.132028532967033 0.13224652173913
##       0                 1         1                 1                2
##       1                 0         0                 0                0
##        y_rate_haz
## earlybf 0.132321237288136 0.132542044692737 0.1330730625 0.133175821621622
##       0                 1                 2            1                 1
##       1                 0                 0            0                 0
##        y_rate_haz
## earlybf 0.133495516666667 0.133622497109827 0.13369978021978
##       0                 2                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.133769780104712 0.13389960326087 0.134241301675978
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.134602637931034 0.135185333333333 0.135371027472527
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.135730435483871 0.135758152542373 0.135904404255319
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.136074710526316 0.136118933701657 0.136293409836066
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.136464113513514 0.136529505681818 0.136794682539683 0.13687515
##       0                 1                 1                 1          1
##       1                 0                 0                 0          0
##        y_rate_haz
## earlybf 0.137042274725275 0.137138878612717 0.137799414364641
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.137955524590164 0.138108259459459 0.138413073033708
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.138824938461538 0.138858847826087 0.139140223404255
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.139339072625698 0.140384769230769 0.140877347368421
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.141279754098361 0.141396551351351 0.141732267015707 0.1419446
##       0                 1                 2                 1         1
##       1                 0                 0                 0         0
##        y_rate_haz
## earlybf 0.142376042553191 0.142737586592179 0.143634416666667
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.143818092391304 0.144521337016575 0.144603983606557
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.144841428571429 0.145091155172414 0.145170613636364
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.145324233333333 0.145398510989011 0.146201817679558
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.146266098360656 0.146328989189189 0.146450777777778
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.14695708988764 0.147069758241758 0.147124255434783
##       0                1                 2                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.147787355932203 0.147928213114754 0.148017096256684
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.148741005494506 0.149562779005525 0.149590327868852
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.149617281081081 0.149694753926702 0.150430418478261
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.151243259668508 0.151270219251337 0.1520835 0.152905572972973
##       0                 1                 1         7                 3
##       1                 0                 0         0                 0
##        y_rate_haz
## earlybf 0.152923740331492 0.153811721590909 0.154472246073298
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.154549718918919 0.155425994505494 0.155425994505495
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.155539943181818 0.156284701657459 0.157838010810811
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.157965182320442 0.1584203125 0.158768489010989 0.158842766666667
##       0                 2            1                 1                 1
##       1                 0            0                 0                 0
##        y_rate_haz
## earlybf 0.158918713483146 0.159645662983425 0.160439736263736
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.161326143646409 0.161490726804124 0.161688773684211
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.161790957446808 0.161895338709677 0.162001989130435
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.16265614973262 0.162887245901639 0.163006624309392
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.163253474576271 0.163655070652174 0.164045123595506
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.164414594594595 0.164827927374302 0.165424157894737
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.165602033333333 0.166058740540541 0.166211475409836
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.166690389830508 0.166961233695652 0.167124725274725
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.167702886486486 0.168048066298343 0.168595422857143
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.168804722513089 0.169171533707865 0.169535704918033
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.170071870967742 0.17026739673913 0.17046721978022
##       0                 1                1                1
##       1                 0                0                0
##        y_rate_haz
## earlybf 0.170671483333333 0.170788957219251 0.172071617142857
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.172138467032967 0.17285993442623 0.173116324468085
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_haz
## earlybf 0.174522049180328 0.174977790322581 0.175174712041885
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.175846546875 0.176184163934426 0.178130950276243
##       0              1                 1                 1
##       1              0                 0                 0
##        y_rate_haz
## earlybf 0.178637761904762 0.178719593220339 0.179424353932584
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.180121240223464 0.180185885869565 0.180494703296703
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.181093647398844 0.181519016129032 0.181838967391304 0.1825002
##       0                 1                 1                 3         2
##       1                 0                 0                 0         0
##        y_rate_haz
## earlybf 0.18283262295082 0.182841960674157 0.18313719895288
##       0                1                 1                1
##       1                0                 0                0
##        y_rate_haz
## earlybf 0.18346580952381 0.183874966101695 0.184144345945946
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.184852872928177 0.185593423728814 0.18653335359116
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_haz
## earlybf 0.187054572192513 0.187543383419689 0.188376153409091
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.18868113368984 0.193410538043478 0.194185711864407
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_haz
## earlybf 0.194803584269663 0.195063619565217 0.196018733333333
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.196236774193548 0.197791655737705 0.198296718232044
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.201088183333333 0.201115885245902 0.201619268571429
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.201710747368421 0.203347601123595 0.203892164835165
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.205563412087912 0.205610094972067 0.207234659340659
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.207309351955307 0.208379602209945 0.209008608938547
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.209319225806452 0.209426459016393 0.210577153846154
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.211802151832461 0.211946154255319 0.214412803278689
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.215746360465116 0.218510775862069 0.219773843930636
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.220142966850829 0.220315556756757 0.221681033898305
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.221823447513812 0.222940585227273 0.223947131868132
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.224819086956522 0.225618379120879 0.226892140540541
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.229428822857143 0.230225850828729 0.230632120879121
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.233468724324324 0.236020295081967 0.236574333333333
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.237682409836066 0.238401162162162 0.238628254143646
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.238988357142857 0.239104540106952 0.239344524590164
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.239450617021277 0.239793031746032 0.241068526595745
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.244656065217391 0.246837094240838 0.247030657458564
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.249346203488372 0.252358335164835 0.2534725 0.254303557377049
##       0                 1                 1         1                 1
##       1                 0                 0         0                 0
##        y_rate_haz
## earlybf 0.254888547486034 0.257880717391304 0.261725093023256
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.262154983425414 0.264707497297297 0.269639935135135
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.274067140625 0.27983364 0.280640270718232 0.281148956756757
##       0              1          1                 1                 1
##       1              0          0                 0                 0
##        y_rate_haz
## earlybf 0.281441879310345 0.290870081967213 0.292069448863636
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.297590416216216 0.302566121052632 0.307491229508197
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.309099437837838 0.317837426966292 0.323790677419355
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.324332767955801 0.327693729281768 0.331507853932584
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.334249450549451 0.334415651933702 0.346914794594595
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.348558940540541 0.348800201086957 0.360989406593407
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.361496905759162 0.395762744318182 0.423481127071823
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.424496802197802 0.442714272251309 0.447304411764706
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.451447863157895 0.454615193548387 0.469057531578947
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.494061314917127 0.497288904761905 0.583126790055249
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.586607785714286 0.598626542553191 0.6019971875 0.635073956043956
##       0                 1                 1            1                 1
##       1                 0                 0            0                 0
##        y_rate_haz
## earlybf 0.706504301587302 0.726076064516129 0.737731011049724
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 0.740300634920635 0.825829758064516 0.894608823529412
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_haz
## earlybf 1.03078816666667 1.30744035078534
##       0                1                1
##       1                0                0
```




# Results Detail

## Results Plots
![](/tmp/9b0a9d01-a182-4cb5-897f-8f60c7cb67d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9b0a9d01-a182-4cb5-897f-8f60c7cb67d8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0615229   -0.1131299   -0.0099160
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0724513   -0.1092566   -0.0356459
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2143411    0.1461988    0.2824834
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1648517    0.0927800    0.2369235
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0110047   -0.0657979    0.0437885
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0262622   -0.0735673    0.0210430
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0902230    0.0444786    0.1359673
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0047792   -0.0418776    0.0514359
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.1118111   -0.1822027   -0.0414195
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.1736304   -0.2095395   -0.1377212
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.2224252   -0.2730768   -0.1717735
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1521352   -0.2040056   -0.1002647
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1133751   -0.2243435   -0.0024066
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0352486   -0.0760868    0.0055896
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.3849600   -0.4334750   -0.3364449
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.1271051   -0.1796444   -0.0745659
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0143928   -0.0025635    0.0313490
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0038094   -0.0314037    0.0237849
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0832654   -0.1326886   -0.0338421
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1201870   -0.1396272   -0.1007468
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.1661991   -0.1811676   -0.1512306
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.1047658   -0.1186433   -0.0908883
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0711093    0.0661474    0.0760712
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3821517   -0.3952940   -0.3690094
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0575249    0.0317624    0.0832874
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0635625    0.0456933    0.0814317
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0221183   -0.0509371    0.0067004
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0200232   -0.0474411    0.0073946
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0371295   -0.0130532    0.0873123
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0882847    0.0359392    0.1406301
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0465698   -0.0964636    0.0033240
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0357181   -0.0692099   -0.0022262
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0009424   -0.0335245    0.0354093
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0059640   -0.0417206    0.0297927
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0639250    0.0120195    0.1158304
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0148878   -0.0219273    0.0517029
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0042039   -0.0560125    0.0476047
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0414149   -0.0901387    0.0073090
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023449   -0.0736794    0.0689897
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0780324   -0.1127016   -0.0433632
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                 0.0740010    0.0431534    0.1048486
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0521103   -0.0052854    0.1095061
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0127262   -0.0311438    0.0056914
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0087813   -0.0177902    0.0353528
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1038271    0.0579895    0.1496646
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0148249   -0.0026290    0.0322787
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1706305   -0.1920699   -0.1491910
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1464849   -0.1796864   -0.1132834
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0009076   -0.0145661    0.0127509
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0060825   -0.0183948    0.0062298
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0033286   -0.0081931    0.0015358
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0625908   -0.1805601    0.0553786
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0212724   -0.0415456   -0.0009993
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0099177   -0.0262088    0.0063735
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0691896   -0.0845052   -0.0538741
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0877732   -0.1016031   -0.0739432
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0334244    0.0064269    0.0604219
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0587104    0.0330772    0.0843437
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0659558   -0.0851394   -0.0467722
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0855491   -0.1000283   -0.0710700
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0316879   -0.0469815   -0.0163943
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0138739   -0.0278772    0.0001293
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0456657   -0.0733571   -0.0179744
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0343537   -0.0505924   -0.0181151
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0517924   -0.0702116   -0.0333733
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0513463   -0.0687170   -0.0339756
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1190716   -0.1387290   -0.0994141
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1236208   -0.1397725   -0.1074691
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0859039   -0.0909158   -0.0808920
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1633279   -0.1761400   -0.1505158
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0004228   -0.0116724    0.0125179
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0302740   -0.0377265   -0.0228215
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0635727   -0.0730014   -0.0541439
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0767655   -0.0892337   -0.0642973
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0534280   -0.0603204   -0.0465356
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0535716   -0.0598587   -0.0472845
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0377085   -0.0439342   -0.0314828
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0406343   -0.0459277   -0.0353409
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0137284   -0.0216959   -0.0057609
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0199771   -0.0271651   -0.0127890
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0064523   -0.0178116    0.0049071
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0049123   -0.0091033    0.0189279
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0045484   -0.0018681    0.0109648
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0025278   -0.0083004    0.0032449
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0332069   -0.0401928   -0.0262209
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0243218   -0.0313832   -0.0172604
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0006313   -0.0122768    0.0135394
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0127633   -0.0208392   -0.0046874
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0246201   -0.0354007   -0.0138396
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0211368   -0.0301127   -0.0121609
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0300629   -0.0427059   -0.0174200
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0370779   -0.0453534   -0.0288025
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0027721   -0.0088446    0.0033005
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0077178   -0.0119390   -0.0034965
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0148696   -0.0212489   -0.0084903
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0027863   -0.0043395    0.0099120
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0035380   -0.0150747    0.0079987
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0277161   -0.0387653   -0.0166668
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0142273   -0.0170877   -0.0113669
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0163203   -0.0184217   -0.0142188


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0336824   -0.0658849   -0.0014799
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1020352   -0.1461845   -0.0578859
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.1442586   -0.1553584   -0.1331588
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0218549   -0.0450356    0.0013258
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0014629   -0.0396382    0.0367125
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1643126   -0.1830906   -0.1455346
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.0013347   -0.0085345    0.0112039
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0034526   -0.0083193    0.0014141
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0803907   -0.0907811   -0.0700002
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0546093   -0.0721102   -0.0371085
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0629524   -0.0714846   -0.0544202
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0501592   -0.0551386   -0.0451799
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0383413   -0.0427080   -0.0339747
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0175081   -0.0228924   -0.0121238
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0148687   -0.0225262   -0.0072113
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0149004   -0.0201971   -0.0096037
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0527908   -0.0626365   -0.0429450
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0145970   -0.0164717   -0.0127223


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0109283   -0.0714854    0.0496288
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0494894   -0.1438634    0.0448847
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0152574   -0.0811603    0.0506454
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0854438   -0.1483856   -0.0225020
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0618193   -0.1404778    0.0168392
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0702900   -0.0032917    0.1438718
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0781264   -0.0400392    0.1962921
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.2578548    0.1862723    0.3294374
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0182021   -0.0483366    0.0119323
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0369216   -0.0900218    0.0161786
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0614333    0.0415558    0.0813108
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.4532610   -0.4671511   -0.4393708
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0060376   -0.0254755    0.0375507
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0020951   -0.0309772    0.0351674
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0511551   -0.0211729    0.1234831
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0108518   -0.0492406    0.0709441
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0069064   -0.0546940    0.0408812
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0490372   -0.1115368    0.0134625
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0372110   -0.1078323    0.0334103
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0756875   -0.1538790    0.0025039
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0218907   -0.0866428    0.0428614
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.0215075   -0.0037989    0.0468139
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0890022   -0.1372888   -0.0407156
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0241456   -0.0151326    0.0634237
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0051749   -0.0230948    0.0127450
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0592621   -0.1773077    0.0587834
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0113548   -0.0138131    0.0365226
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0185835   -0.0392192    0.0020522
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0252860   -0.0127392    0.0633113
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0195933   -0.0425907    0.0034041
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0178140   -0.0034262    0.0390542
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.0113120   -0.0207333    0.0433573
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0004461   -0.0120609    0.0129532
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0045493   -0.0259547    0.0168562
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0774239   -0.0881920   -0.0666559
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0306968   -0.0437691   -0.0176245
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0131928   -0.0282603    0.0018747
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0001436   -0.0092200    0.0089327
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0029258   -0.0107844    0.0049327
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0062486   -0.0169794    0.0044821
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0113646   -0.0034295    0.0261587
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0070761   -0.0144167    0.0002644
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0088851   -0.0010480    0.0188182
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0133946   -0.0283634    0.0015742
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0034834   -0.0106161    0.0175828
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0070150   -0.0217960    0.0077660
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0049457   -0.0123006    0.0024092
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0176559    0.0080427    0.0272690
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0241780   -0.0395532   -0.0088029
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0020930   -0.0054239    0.0012379
