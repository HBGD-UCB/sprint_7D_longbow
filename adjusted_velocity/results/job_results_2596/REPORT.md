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
##        y_rate_len
## earlybf -0.168513573407202 -0.0741870731707322 -0.073986567567568
##       0                  1                   1                  1
##       1                  0                   0                  0
##        y_rate_len
## earlybf -0.0497275749318808 0.00833334246575413 0.0250687087912086
##       0                   1                   1                  1
##       1                   0                   0                  0
##        y_rate_len
## earlybf 0.0914163114754094 0.126036049723757 0.158333506849314
##       0                  1                 1                 1
##       1                  0                 0                 0
##        y_rate_len
## earlybf 0.175964380165289 0.213162857142857 0.230180432432432
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.242998429752065 0.256925803814713 0.263063351351352
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.275000301369863 0.276515454545454 0.292468269230769 0.304167
##       0                 1                 1                 1        1
##       1                 0                 0                 0        0
##        y_rate_len
## earlybf 0.305820081521738 0.307491229508197 0.324112377049181
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.33321665730337 0.335170247933884 0.336096132596685
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.337963333333333 0.338881711956521 0.353491378378378
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.357843529411765 0.37383653631285 0.375000410958904
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.37706652892562 0.382286393442622 0.385563802816901
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.386510552486187 0.391923865546218 0.393825041322313
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.395664390243902 0.396006897506925 0.396739565217391
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.397106916666667 0.399575951742627 0.40109934065934
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.409455576923076 0.410583553719008 0.41171776243094
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.412858254847646 0.413270380434783 0.41552868852459
##       0                 2                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.41700314516129 0.419257216216216 0.420120165745856
##       0                1                 1                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.420393414634146 0.42616804945055 0.426325714285715
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.434524285714286 0.435744859550562 0.440460409836065
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.444288876404495 0.447304411764706 0.44754817438692
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.449048774373259 0.450000493150684 0.45030310055866
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.456658230563002 0.457081557377049 0.457885806451612
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.45879938547486 0.459592994505495 0.460360864864864
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.461608455284552 0.463412326869806 0.464812841823057
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.470534585635359 0.471128233695652 0.471838005540166
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.472411961852861 0.473702704918033 0.474466629526463
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.475517142857143 0.476305467032966 0.476802324324324
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.477617603305785 0.47983564171123 0.480263684210525 0.48159775
##       0                 1                1                 1          1
##       1                 0                0                 0          0
##        y_rate_len
## earlybf 0.482013278688524 0.483333863013698 0.483715714285715
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.484288240223463 0.484661703296703 0.487339392265193
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.488689362880886 0.488987820163487 0.489276675603217
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.490323852459016 0.490323852459017 0.491667205479452
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.491914285714286 0.492784525139665 0.493243783783784
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.49416487394958 0.495924456521739 0.497115041551247
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.498495916666667 0.498634426229508 0.498768467741935
##       0                 1                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.500000547945205 0.500112857142858 0.501374175824176
##       0                 3                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.501464513513513 0.502684957983194 0.502755371900826
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.504144198895028 0.505563678474114 0.506944999999999 0.506945
##       0                 3                 2                 1        3
##       1                 0                 0                 0        0
##        y_rate_len
## earlybf 0.508311428571429 0.508357103064067 0.508381104815865
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.509730412087912 0.511066504065041 0.511134628099173
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.511134628099174 0.512455271739131 0.512546602209945
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.512641011235955 0.513966398891966 0.513966398891967
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.515121532258065 0.515394083333333 0.515394083333334 0.51651
##       0                 1                 2                 1       1
##       1                 0                 0                 0       0
##        y_rate_len
## earlybf 0.516667232876711 0.516667232876713 0.516829721448468
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.517905972972973 0.518086648351649 0.519309512195122
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.519513884297521 0.520720679347826 0.520949005524861
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.520949005524862 0.522139536784741 0.522392077562327
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.523566147540983 0.523843166666667 0.524708571428572
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.525000575342465 0.526126702702702 0.526442884615384
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.527552520325203 0.527552520325204 0.527893140495867
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.528245210084033 0.528986086956521 0.528986086956522
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.529351408839779 0.530049731903485 0.532907142857143
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.53333391780822 0.53377495821727 0.534347432432432
##       0                2                1                 1
##       1                0                0                 0
##        y_rate_len
## earlybf 0.53479912087912 0.534799120879121 0.535795528455285
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.536272396694215 0.536765294117647 0.537753812154695
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.537753812154697 0.538715395095368 0.541667260273973
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.544038536585365 0.544038536585366 0.544651652892562
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.544898101604277 0.545516902173913 0.546156215469613
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.547003324250682 0.547669113573407 0.547827661290323
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.548497868852459 0.549190416666667 0.550788891891892
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.552281544715447 0.553030909090909 0.55303090909091
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.553782309782609 0.55455861878453 0.555291253405995
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.556808442622951 0.557502857142857 0.557502857142858
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.55833394520548 0.559867829670329 0.55986782967033
##       0                2                 1                1
##       1                0                 0                0
##        y_rate_len
## earlybf 0.56116371657754 0.561410165289255 0.561410165289256
##       0                1                 1                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.562047717391304 0.562961022099448 0.563579182561308
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.564180725806452 0.564520470914128 0.565119016393444
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.565701428571428 0.565701428571429 0.56626835106383
##       0                 2                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.566667287671233 0.566667287671234 0.567230351351351 0.5677784
##       0                 2                 1                 2         1
##       1                 0                 0                 0         0
##        y_rate_len
## earlybf 0.568224065934066 0.568767560975609 0.569296524064171
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.569789421487603 0.569789421487604 0.570313124999999
##       0                 1                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.570313125000001 0.570822788203753 0.571363425414364
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.571363425414366 0.571867111716621 0.572357258064516
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.572946149584487 0.573429590163935 0.575451081081081
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.575889519999999 0.576138050139276 0.576580302197801
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.577010569105691 0.579765828729282 0.580155040871935
##       0                 3                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.581371828254847 0.581371828254848 0.581740163934426
##       0                 1                 2                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.582098571428572 0.582629746478873 0.58298675 0.58333397260274
##       0                 1                 1          1                8
##       1                 0                 0          0                0
##        y_rate_len
## earlybf 0.58367181081081 0.584610668523677 0.584936538461538
##       0                2                 1                 5
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.585253577235772 0.585253577235773 0.586547933884297
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.58713201072386 0.587885798319327 0.588168232044199
##       0                1                 1                 5
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.588442970027247 0.588710322580645 0.589537162921348
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.589797506925208 0.590050737704918 0.590297142857142
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.590297142857143 0.591435833333333 0.591667315068493
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.591667315068494 0.593083286908078 0.593292774725274
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.593496585365854 0.593694946524064 0.594927190082644
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.594927190082645 0.595109347826087 0.596405882352941
##       0                 4                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.596570635359115 0.596570635359117 0.59673089918256
##       0                 2                 1                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.596730899182562 0.596886854838709 0.598223185595569
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.598361311475409 0.59836131147541 0.598495714285714
##       0                 1                2                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.598495714285715 0.599884916666666 0.600000657534246
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.600000657534247 0.60011327027027 0.600113270270271
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.601555905292479 0.60155590529248 0.60164901098901
##       0                 2                1                2
##       1                 0                0                0
##        y_rate_len
## earlybf 0.601649010989011 0.603236229050279 0.603306446280991
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.603306446280992 0.603374755434782 0.604973038674032
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.604973038674033 0.605018828337874 0.606648864265928
##       0                 3                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.606671885245901 0.608334 0.608334000000001 0.609982601626017
##       0                 2        8                 3                 5
##       1                 0        0                 0                 0
##        y_rate_len
## earlybf 0.610005247252747 0.610005247252748 0.61002852367688
##       0                 3                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.611595844504021 0.611640163043478 0.611685702479339
##       0                 1                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.61168570247934 0.611732513966481 0.613239919354839
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.613306757493188 0.61337544198895 0.613375441988951
##       0                 4                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.614805638297872 0.614892857142857 0.614982459016393
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.614982459016394 0.615074542936288 0.61655472972973
##       0                 2                 2                3
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.616667342465753 0.616667342465754 0.618093368983957
##       0                 1                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.618093368983958 0.618225609756098 0.618361483516483
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.618361483516484 0.618501142061281 0.619750455764075
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.619905570652174 0.620064958677685 0.620064958677686
##       0                 3                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.620228798882681 0.621416451612903 0.621594686648501
##       0                 2                 2                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.621777845303867 0.621777845303868 0.621966134453782
##       0                 2                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.623091428571428 0.623293032786885 0.624775459459459
##       0                 2                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.625000684931507 0.626468617886178 0.62646861788618
##       0                 5                 2                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.62671771978022 0.62817097826087 0.628444214876033
##       0               12                1                 1
##       1                0                0                 0
##        y_rate_len
## earlybf 0.629882615803814 0.630180248618785 0.631603606557377
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.631603606557378 0.631925900277008 0.632996189189189
##       0                 1                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.63333402739726 0.633334027397261 0.63368125 0.63471162601626
##       0                1                 2          1                1
##       1                0                 0          0                0
##        y_rate_len
## earlybf 0.635073956043956 0.635073956043957 0.635446378830084
##       0                 5                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.636059678284182 0.636059678284183 0.636436385869565
##       0                 1                 1                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.63682347107438 0.636823471074381 0.637221368715084
##       0                6                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.637769516129032 0.637769516129033 0.638170544959128
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.638582651933701 0.638582651933702 0.639074281914893
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.639488571428571 0.639914180327868 0.639914180327869
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.640351578947368 0.640351578947369 0.640801264044944
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.641667369863013 0.641667369863014 0.642130333333333
##       0                 2                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.642130333333334 0.642491791443851 0.642954634146341
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.643430192307692 0.643918997214485 0.644214289544236
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.644701793478261 0.645202727272727 0.645946048387096
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.646458474114441 0.646985055248619 0.647163829787234
##       0                 4                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.647526386554623 0.647687142857142 0.64822475409836
##       0                 1                 1                5
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.648777257617729 0.649437648648649 0.650000712328767
##       0                 2                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.650000712328768 0.650579416666666 0.650579416666667
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.651197642276422 0.651197642276423 0.651786428571428
##       0                 1                 3                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.65178642857143 0.65236890080429 0.652391615598886
##       0                3                3                 1
##       1                0                0                 0
##        y_rate_len
## earlybf 0.652967201086957 0.653581983471074 0.654122580645161
##       0                 1                 7                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.654213938547486 0.654746403269754 0.654746403269755
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.655387458563536 0.655387458563537 0.655885714285714
##       0                 6                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.656046470588236 0.656535327868852 0.656535327868853 0.65700072
##       0                 2                 1                 2          1
##       1                 0                 0                 0          0
##        y_rate_len
## earlybf 0.657202936288088 0.657658378378378 0.65833405479452
##       0                 2                 3                3
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.658334054794521 0.659440650406504 0.659742507042254
##       0                 4                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.660142664835164 0.660142664835165 0.660523512064343
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.660523512064344 0.660864233983287 0.661232608695652
##       0                 1                 2                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.661961239669421 0.661961239669422 0.662299112903225
##       0                 3                 4                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.662710223463687 0.663034332425068 0.663789861878452
##       0                 2                 5                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.663789861878453 0.664084285714285 0.664084285714286
##       0                 3                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.66456655462185 0.664845901639344 0.665628614958448
##       0                1                 9                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.665628614958449 0.665879108108108 0.666433314606741
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.666667397260274 0.666890213903742 0.666890213903743
##       0                 7                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.667477583333334 0.667683658536585 0.668498901098901
##       0                 1                 3                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.668678123324397 0.669336852367688 0.669498016304347
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.669498016304349 0.670340495867769 0.670475645161289
##       0                 1                12                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.67047564516129 0.671322261580381 0.671322261580382
##       0                5                 1                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.671432473404255 0.67219226519337 0.672282857142857
##       0                 1                9                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.673156475409836 0.673156475409837 0.67322296 0.674054293628809
##       0                 5                 2          2                 4
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.674099837837838 0.675000739726027 0.675000739726028
##       0                 2                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.675023021390374 0.675926666666666 0.675926666666667
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.67683273458445 0.676832734584451 0.676855137362637
##       0                2                 1                 4
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.676855137362638 0.676878676056337 0.677763423913044
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.677809470752089 0.678652177419355 0.678719752066115
##       0                 2                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.678719752066116 0.679522021276595 0.679610190735694
##       0                 5                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.679610190735695 0.680481428571428 0.680481428571429
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.680594668508287 0.680594668508288 0.681467049180327
##       0                 3                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.681467049180328 0.681606722689076 0.682320567567567
##       0                 3                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.682320567567569 0.682479972299169 0.68247997229917
##       0                 1                 3                6
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.683155828877006 0.68333408219178 0.683334082191781
##       0                 2                1                 6
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.684169674796748 0.684169674796749 0.68437575 0.684375750000001
##       0                 4                 1          3                 1
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.684987345844504 0.685211373626374 0.686028831521739
##       0                 1                10                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.68602883152174 0.68628208913649 0.686282089136491
##       0                1                1                 1
##       1                0                0                 0
##        y_rate_len
## earlybf 0.686828709677419 0.68682870967742 0.687099008264462
##       0                 2                4                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.687099008264463 0.687611569148936 0.687898119891008
##       0                 2                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.688997071823203 0.688997071823205 0.689777622950819
##       0                 3                 5                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.690541297297297 0.690905650969528 0.690905650969529
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.691288636363636 0.691667424657534 0.691667424657535
##       0                 2                 8                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.692412682926829 0.69241268292683 0.692824833333334
##       0                 3                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.693141957104558 0.69356760989011 0.694294239130434
##       0                 2                5                 5
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.694294239130435 0.694754707520892 0.69547826446281
##       0                 1                 1                6
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.695478264462811 0.695701117021276 0.69597533898305
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.696186049046321 0.696186049046322 0.696695363128491
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.696695363128492 0.696878571428571 0.697399475138121
##       0                 1                 3                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.697399475138123 0.69755632 0.698088196721311 0.698088196721312
##       0                 1          1                 1                 3
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.698646890756303 0.698762027027027 0.699331329639889
##       0                 2                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.699421443850267 0.699421443850268 0.700000767123287
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.700000767123288 0.700609382022472 0.700655691056911
##       0                 5                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.701273916666666 0.701273916666668 0.701296568364611
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.701923846153845 0.701923846153847 0.70255964673913
##       0                 6                11                6
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.702582929577464 0.703181774193548 0.703227325905292
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.703227325905293 0.703790664893617 0.703857520661156
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.703857520661157 0.704473978201635 0.705077142857142
##       0                 4                10                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.705077142857144 0.705191648044692 0.705801878453038
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.705801878453039 0.706398770491803 0.706563569405099
##       0                 4                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.706982756756756 0.706982756756757 0.707554251336897
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.707554251336899 0.707757008310249 0.70775700831025
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.708334109589041 0.708898699186991 0.708898699186993
##       0                 5                 4                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.709451179624665 0.709723 0.710280082417582 0.710825054347826
##       0                 2        1                 4                 4
##       1                 0        0                 0                 0
##        y_rate_len
## earlybf 0.710825054347827 0.711358306451612 0.711358306451613
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.711880212765957 0.712236776859504 0.712761907356948
##       0                 3                13                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.712761907356949 0.713275714285713 0.713275714285714
##       0                 3                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.713687932960894 0.714204281767956 0.714709344262295
##       0                 1                 6                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.714709344262296 0.715180198300283 0.715203486486486
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.715203486486487 0.715687058823529 0.71568705882353
##       0                 1                 4                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.716182686980609 0.716667452054794 0.716667452054795
##       0                 9                 5                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.717141707317073 0.717605790884718 0.718172083333333
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.718636318681318 0.718636318681319 0.719090461956521
##       0                 3                 8                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.719090461956522 0.719534838709677 0.720172562674095
##       0                10                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.720616033057851 0.720616033057852 0.721049836512261
##       0                 6                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.721049836512262 0.721474285714285 0.721474285714287 0.72188968
##       0                 7                 5                 1          1
##       1                 0                 0                 0          0
##        y_rate_len
## earlybf 0.722606685082872 0.722606685082874 0.723019918032786
##       0                 4                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.723019918032787 0.723424216216216 0.723424216216217
##       0                 7                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.72381986631016 0.723819866310161 0.724207142857143
##       0                1                 2                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.72460836565097 0.725000794520547 0.725000794520548
##       0                1                 3                 9
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.725384715447154 0.725384715447155 0.72624143258427
##       0                 3                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.726621166666666 0.726621166666667 0.726992554945054
##       0                 2                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.726992554945055 0.727355869565217 0.727355869565218
##       0                 6                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.727711370967741 0.727711370967742 0.728059308510638
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.728995289256197 0.728995289256198 0.729337765667575
##       0                 1                 5                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.729672857142856 0.729672857142858 0.730680502793297
##       0                 4                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.731009088397789 0.73100908839779 0.731330491803278
##       0                 2                9                 7
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.73133049180328 0.731644945945945 0.731644945945946
##       0                3                 2                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.732727226890756 0.733034044321329 0.73303404432133
##       0                 1                 2                3
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.733334136986301 0.733334136986302 0.733627723577235
##       0                11                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.733627723577236 0.733915013404826 0.734196206896551
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.735070249999999 0.73507025 0.735348791208791 0.735621277173912
##       0                 1          2                 9                 2
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.735621277173914 0.735887903225806 0.736148856382978
##       0                 2                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.737117799442896 0.737117799442897 0.737374545454545
##       0                 1                 1                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.737374545454546 0.737625694822888 0.737625694822889
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.737871428571429 0.73811192 0.739411491712707 0.73964106557377
##       0                 3          1                 3                5
##       1                 0          0                 0                0
##        y_rate_len
## earlybf 0.739641065573771 0.739865675675676 0.741459722991689
##       0                 8                 5                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.741459722991691 0.741667479452054 0.741667479452055
##       0                 2                 5                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.741870731707317 0.74206962466488 0.743329466292135
##       0                 4                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.743519333333333 0.743519333333334 0.743705027472527
##       0                 6                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.743705027472528 0.743886684782609 0.74406443548387
##       0                11                10                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.744064435483872 0.744238404255318 0.745590417827298
##       0                 5                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.745590417827299 0.745753801652892 0.745753801652893
##       0                 1                 2                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.745913623978202 0.746069999999999 0.746070000000001
##       0                 8                 4                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.747529067796609 0.747673072625698 0.747813895027624
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.747813895027625 0.747951639344262 0.748086405405405
##       0                 6                13                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.748218288770052 0.748218288770054 0.749767394957983
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.749885401662049 0.74988540166205 0.750000821917808
##       0                 2                6                10
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.750113739837398 0.750113739837399 0.750224235924932
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.750224235924933 0.751968416666667 0.752061263736264
##       0                 1                 1                12
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.752152092391304 0.752152092391305 0.752240967741936
##       0                 5                 3                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.754063036211698 0.7540630362117 0.75413305785124
##       0                 2               1                8
##       1                 0               0                0
##        y_rate_len
## earlybf 0.754201553133514 0.754201553133516 0.754268571428572 0.75433416
##       0                 5                 1                 6          4
##       1                 0                 0                 0          0
##        y_rate_len
## earlybf 0.756121355932204 0.7561693575419 0.756216298342541
##       0                 1               2                 5
##       1                 0               0                 0
##        y_rate_len
## earlybf 0.756262213114754 0.756262213114755 0.756307135135134
##       0                 6                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.756307135135135 0.756351096256684 0.756394126984126
##       0                 1                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.758287478991596 0.75831108033241 0.758334164383561
##       0                 1                8                 9
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.758334164383562 0.75835674796748 0.758378847184986
##       0                 1                3                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.760417499999999 0.7604175 0.760417500000001 0.762467142857143
##       0                 2        14                 3                 4
##       1                 0         0                 0                 0
##        y_rate_len
## earlybf 0.762489482288827 0.762489482288829 0.762512314049586
##       0                 2                 3                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.762512314049587 0.7625356545961 0.76255952112676
##       0                 4               5                1
##       1                 0               0                0
##        y_rate_len
## earlybf 0.764483903743315 0.764527864864865 0.764527864864866
##       0                 1                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.764572786885245 0.764572786885246 0.764618701657458
##       0                 2                 9                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.764618701657459 0.764665642458101 0.766468567639257
##       0                 7                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.766599756097561 0.766667506849314 0.766667506849315
##       0                 6                 3                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.76673675900277 0.766736759002771 0.76680756302521
##       0                7                 4                1
##       1                0                 0                0
##        y_rate_len
## earlybf 0.766879971671387 0.76850704787234 0.768594032258064
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.768682907608695 0.768682907608697 0.768773736263735
##       0                 3                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.768773736263736 0.768866583333333 0.768866583333334 0.7705564
##       0                16                 2                 2         1
##       1                 0                 0                 0         0
##        y_rate_len
## earlybf 0.770665714285714 0.770665714285715 0.770777411444141
##       0                 3                 2                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.770891570247933 0.770891570247934 0.771008272980501
##       0                 3                 9                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.771008272980502 0.771127605633803 0.772616711229946
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.772748594594594 0.772748594594595 0.772883360655737
##       0                 2                 1                11
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.772883360655739 0.773021104972376 0.773161927374301
##       0                 2                10                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.773161927374302 0.774688069705094 0.774842764227642
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.774842764227643 0.775000849315068 0.775000849315069
##       0                 3                11                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.775162437673129 0.77516243767313 0.776770564516129
##       0                 2                6                 5
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.776948315217391 0.776948315217392 0.777129972527472
##       0                 4                 4                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.777129972527474 0.777315666666667 0.778864285714286
##       0                 4                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.779065340599454 0.779065340599455 0.779270826446281
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.779270826446282 0.779480891364903 0.779695690140845
##       0                 4                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.780969324324324 0.781193934426229 0.78119393442623
##       0                 2                 2                4
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.781423508287293 0.781658212290503 0.782842680965147
##       0                 6                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.783085772357724 0.783334191780821 0.783334191780822
##       0                 3                 3                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.78358811634349 0.783588116343491 0.783847731092436
##       0                4                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.784113229461757 0.784947096774193 0.784947096774194
##       0                 1                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.785213722826087 0.785486208791208 0.785486208791209 0.78576475
##       0                 7                 4                 6          3
##       1                 0                 0                 0          0
##        y_rate_len
## earlybf 0.785764750000001 0.786778639999999 0.78677864 0.787062857142857
##       0                 1                 2          1                 6
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.787062857142858 0.787353269754768 0.787650082644627
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.787650082644629 0.787953509749304 0.788263774647888
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.788882326203209 0.789190054054054 0.789190054054055
##       0                 8                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.789504508196721 0.789825911602209 0.78982591160221
##       0                11                 1                5
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.790154497206704 0.790154497206705 0.790672838196287
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.7909972922252 0.790997292225201 0.791328780487804
##       0               1                 5                 1
##       1               0                 0                 0
##        y_rate_len
## earlybf 0.791328780487806 0.791667534246575 0.79201379501385
##       0                 4                11                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.792013795013851 0.793123629032257 0.793123629032258
##       0                 5                 1                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.793479130434782 0.793479130434783 0.793842445054945
##       0                 5                 4                14
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.794213833333333 0.794213833333334 0.79488976 0.795261428571429
##       0                 1                 2          1                 5
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.795641198910081 0.796029338842975 0.796426128133705
##       0                 5                10                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.796831859154929 0.797015133689839 0.797410783783783
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.797410783783784 0.797815081967213 0.797815081967214
##       0                 6                10                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.798228314917127 0.798650782122905 0.799151903485254
##       0                 6                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.799151903485256 0.799571788617886 0.800000876712328
##       0                 1                 7                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.800000876712329 0.800439473684211 0.800887899159663
##       0                 4                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.800887899159664 0.801300161290322 0.801300161290323
##       0                 1                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.801744538043477 0.801744538043478 0.802198681318681
##       0                 5                 3                11
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.802198681318682 0.802662916666667 0.80346 0.803929128065395
##       0                 3                 4       2                 4
##       1                 0                 0       0                 0
##        y_rate_len
## earlybf 0.804408595041322 0.804408595041323 0.804898746518106
##       0                 6                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.80514794117647 0.805147941176471 0.805631513513513
##       0                2                 1                 6
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.805631513513514 0.806125655737704 0.806125655737705
##       0                 1                 1                14
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.806630718232044 0.806630718232045 0.807147067039106
##       0                 2                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.807306514745308 0.807814796747967 0.808334219178081
##       0                 1                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.808334219178082 0.80886515235457 0.808865152354571
##       0                 8                6                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.808954787234042 0.809407983193277 0.809476693548387
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.810009945652174 0.810009945652175 0.810554917582417
##       0                 4                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.810554917582418 0.811112 0.811112000000001 0.811658571428571
##       0                 7        5                 1                 1
##       1                 0        0                 0                 0
##        y_rate_len
## earlybf 0.811658571428572 0.812217057220708 0.812217057220709
##       0                 3                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.812787851239668 0.81278785123967 0.813280748663102
##       0                 2               12                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.813371364902506 0.813852243243243 0.813852243243244
##       0                 2                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.814436229508196 0.814436229508198 0.81503312154696
##       0                11                 3                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.815033121546962 0.815461126005362 0.815643351955307
##       0                 6                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.815643351955308 0.816057804878048 0.816057804878049
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.816667561643835 0.816667561643836 0.817044335106382
##       0                10                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.81729083102493 0.817290831024931 0.817653225806452
##       0                1                 9                 6
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.81827535326087 0.818911153846154 0.818911153846155
##       0                4                13                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.819223120000001 0.819561083333332 0.819561083333334
##       0                 2                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.819857142857143 0.820225617977528 0.820504986376021
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.820504986376022 0.821167107438016 0.821167107438017
##       0                 6                 9                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.821413556149732 0.821843983286907 0.821843983286908
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.822072972972973 0.822746803278688 0.822746803278689
##       0                 8                 3                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.823435524861878 0.823435524861879 0.823615737265416
##       0                 8                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.824139636871509 0.82430081300813 0.825000904109588
##       0                 2               10                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.825000904109589 0.825133882978724 0.825716509695291
##       0                 8                 2                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.825716509695292 0.825829758064516 0.825829758064517
##       0                 1                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.826540760869565 0.827267390109889 0.827267390109891 0.82733424
##       0                10                 3                 9          1
##       1                 0                 0                 0          0
##        y_rate_len
## earlybf 0.828010166666666 0.828055714285714 0.828769634831461
##       0                 5                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.828792915531335 0.829546363636363 0.829546363636364
##       0                10                11                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.830293702702702 0.830293702702703 0.830316601671309
##       0                 4                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.83105737704918 0.831770348525469 0.831837928176796
##       0               15                 3                 5
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.832543821138211 0.832543821138212 0.83263592178771
##       0                 2                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.833334246575342 0.83400629032258 0.834006290322581
##       0                12                2                 5
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.83414218836565 0.834142188365651 0.83480616847826
##       0                2                 2                4
##       1                0                 0                0
##        y_rate_len
## earlybf 0.834806168478262 0.834968235294119 0.83544536 0.835445360000001
##       0                 2                 1          2                 1
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.835623626373626 0.836254285714285 0.836254285714286
##       0                16                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.836459249999999 0.83645925 0.837080844686648 0.837080844686649
##       0                 2          1                 4                 1
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.837679171122994 0.837925619834711 0.838514432432432
##       0                 2                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.838514432432433 0.83878922005571 0.838789220055711
##       0                 1                1                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.839367950819672 0.839367950819673 0.839924959785523
##       0                 9                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.839924959785524 0.840240331491713 0.840786829268293
##       0                 1                15                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.841132206703911 0.841312978723405 0.841667589041095
##       0                 2                 1                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.841667589041097 0.842044237288135 0.842182822580645
##       0                 8                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.842182822580646 0.842567867036011 0.843071576086957
##       0                 1                 5                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.843979862637362 0.843979862637363 0.844452857142857
##       0                11                 5                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.844908333333333 0.845368773841962 0.845811978609626
##       0                 5                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.846304876033057 0.846304876033058 0.846735162162162
##       0                 9                 8                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.847261838440111 0.847678524590163 0.847678524590164
##       0                 3                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.848079571045577 0.848642734806629 0.848642734806631
##       0                 1                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.849029837398374 0.849029837398375 0.849402526595745
##       0                 4                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.849628491620112 0.850000931506848 0.85000093150685
##       0                 2                 6               11
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.850359354838709 0.85035935483871 0.850993545706371
##       0                 1                6                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.850993545706372 0.851336983695652 0.8516676 0.852008403361345
##       0                 2                 7         1                 1
##       1                 0                 0         0                 0
##        y_rate_len
## earlybf 0.852336098901098 0.852336098901099 0.852651428571428
##       0                 3                 8                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.852651428571429 0.85295507936508 0.853357416666666
##       0                 5                1                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.853357416666667 0.853656702997275 0.853656702997276
##       0                 3                 7                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.853944786096257 0.854684132231404 0.854684132231405
##       0                 2                 3                11
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.854955891891891 0.854955891891892 0.855734456824513
##       0                 1                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.855989098360656 0.855989098360657 0.85623418230563
##       0                 9                 1                3
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.857045138121546 0.857045138121547 0.857272845528455
##       0                 1                10                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.857272845528456 0.858124776536312 0.858334273972602
##       0                 1                 3                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.858334273972604 0.858535887096774 0.85941922437673
##       0                 2                 3                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.859419224376732 0.859602391304347 0.859602391304348
##       0                 3                 2                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.860692335164835 0.860692335164836 0.86085 0.8618065
##       0                14                 1       5         4
##       1                 0                 0       0         0
##        y_rate_len
## earlybf 0.861944632152588 0.861944632152589 0.862077593582888
##       0                 2                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.863063388429752 0.863063388429753 0.863176621621622
##       0                10                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.864207075208913 0.864207075208914 0.864299672131147
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.864299672131148 0.864388793565683 0.864388793565684
##       0                 9                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.865447541436464 0.865447541436465 0.865515853658537
##       0                 6                 1                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.865581622340426 0.866621061452514 0.866667616438355
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.866667616438357 0.866712419354838 0.867844903047091
##       0                10                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.867867798913043 0.86788984 0.869048571428571 0.869048571428572
##       0                 5          1                 9                10
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.870232561307902 0.870255583333333 0.871397351351351
##       0                 7                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.871397351351352 0.871442644628098 0.8714426446281
##       0                 1                 2              11
##       1                 0                 0               0
##        y_rate_len
## earlybf 0.871489719101122 0.871489719101124 0.872543404825736
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.872543404825737 0.872610245901639 0.872679693593315
##       0                 1                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.873758861788617 0.873758861788619 0.87384994475138
##       0                 2                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.873849944751382 0.874888951612902 0.874888951612903
##       0                 5                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.87500095890411 0.875117346368715 0.876133206521739
##       0               15                 2                 6
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.87613320652174 0.876270581717451 0.876270581717452
##       0                2                 1                 7
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.877247142857142 0.877247142857143 0.877404807692308
##       0                 1                 5                12
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.878520490463215 0.878520490463216 0.878704666666667
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.879618081081081 0.879821900826446 0.880698016085791
##       0                 4                10                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.880920819672131 0.880920819672132 0.881152311977716
##       0                 8                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.882001869918698 0.882001869918699 0.882252348066298
##       0                 3                 1                12
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.883065483870967 0.883334301369862 0.883334301369864
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.883613631284915 0.884112079999999 0.88411208 0.884398614130434
##       0                 2                 2          1                 2
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.884398614130435 0.884696260387812 0.885445714285714
##       0                 3                 8                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.885761043956043 0.885761043956044 0.885761043956045
##       0                 7                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.886088739495798 0.88647601604278 0.886808419618528
##       0                 2                1                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.886808419618529 0.88715375 0.887838810810811 0.888201157024793
##       0                 4          3                 3                 4
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.888201157024794 0.888577752808988 0.888852627345844
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.888852627345845 0.889231393442622 0.889231393442623
##       0                 1                 2                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.889624930362117 0.889850265957447 0.89024487804878
##       0                 3                 2                4
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.890654751381215 0.891080788732395 0.891242016129031
##       0                 7                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.891242016129033 0.891667643835615 0.891667643835617
##       0                 1                 5                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.892109916201117 0.8922232 0.89266402173913 0.893121939058171
##       0                 1         2                3                 5
##       1                 0         0                0                 0
##        y_rate_len
## earlybf 0.893121939058172 0.893597966101695 0.893644285714285
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.893644285714286 0.894117280219779 0.89411728021978
##       0                 4                 3                5
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.894608823529412 0.895096348773842 0.895602833333333
##       0                 1                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.895602833333334 0.89605954054054 0.896059540540541
##       0                 1                2                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.896580413223139 0.896580413223141 0.897007238605898
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.897541967213115 0.897541967213116 0.897939813829787
##       0                 3                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.897939813829788 0.898097548746518 0.898487886178861
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.898487886178862 0.899057154696133 0.899418548387097
##       0                 2                 5                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.90000098630137 0.900000986301371 0.90033432 0.900606201117318
##       0               10                 2          1                 1
##       1                0                 0          0                 0
##        y_rate_len
## earlybf 0.900929429347825 0.900929429347827 0.901547617728531
##       0                 3                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.901547617728532 0.901842857142857 0.902190254237288
##       0                 2                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.902473516483516 0.902473516483517 0.902741631016042
##       0                 9                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.902741631016043 0.903384277929155 0.903384277929156
##       0                 2                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.904051916666666 0.90428027027027 0.904959669421487
##       0                 1                5                 4
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.904959669421488 0.905161849865951 0.905161849865952
##       0                 2                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.905665786516853 0.905852540983606 0.905852540983607
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.906029361702128 0.906570167130919 0.906730894308943
##       0                 1                 2                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.907459558011049 0.907595080645161 0.907595080645162
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.908334328767123 0.908334328767124 0.908445439999999
##       0                 3                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.909194836956522 0.909973296398892 0.909973296398893
##       0                 6                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.910041428571428 0.910041428571429 0.910829752747252
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.910829752747253 0.910874438502673 0.910874438502674
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.911672207084469 0.911694190981432 0.912501 0.912501000000001
##       0                 8                 1        8                 4
##       1                 0                 0        0                 0
##        y_rate_len
## earlybf 0.913316461126004 0.913316461126006 0.913338925619835
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.914163114754098 0.914209803370787 0.914973902439024
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.914973902439025 0.915771612903226 0.915861961325966
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.915861961325967 0.915957443181818 0.91655656 0.916667671232877
##       0                 3                 1          1                12
##       1                 0                 0          0                 0
##        y_rate_len
## earlybf 0.91678504225352 0.917460244565217 0.917460244565218
##       0                1                 5                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.91759877094972 0.918239999999999 0.91824 0.918398975069251
##       0                1                 1       5                 3
##       1                0                 0       0                 0
##        y_rate_len
## earlybf 0.918398975069253 0.919007245989304 0.919185989010989
##       0                 8                 2                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.919960136239781 0.919960136239783 0.920721729729729
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.92072172972973 0.920950083333333 0.920950083333334
##       0                2                 1                 3
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.921471072386059 0.921718181818182 0.922208457446809
##       0                 2                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.92247368852459 0.923216910569106 0.923515403899721
##       0                9                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.92394814516129 0.924264364640884 0.92500101369863
##       0                2                 5                6
##       1                0                 0                0
##        y_rate_len
## earlybf 0.925001013698631 0.925725652173913 0.926095055865922
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.926438571428571 0.926824653739612 0.927542225274725
##       0                 5                 6                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.927542225274726 0.928248065395094 0.928248065395096
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.928942459459459 0.929399166666667 0.930097438016528
##       0                 1                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.93009743801653 0.930784262295081 0.930784262295082
##       0                1                 3                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.931459918699187 0.931459918699188 0.931988022284123
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.932124677419354 0.932124677419355 0.932666767955801
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.933334356164384 0.93342253968254 0.933991059782608
##       0                 5                1                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.935250332409972 0.935250332409973 0.935272860962566
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.935898461538462 0.936535994550408 0.937163189189189
##       0                 8                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.93716318918919 0.937209243697479 0.937780294906166
##       0                4                 1                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.937848249999999 0.937848250000001 0.938476694214876
##       0                 2                 2                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.939094836065574 0.939094836065575 0.939702926829268
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.939702926829269 0.940301209677419 0.940460640668524
##       0                 5                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.941069171270717 0.941069171270718 0.941667698630137
##       0                 1                 2                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.941667698630138 0.942256467391305 0.942835714285714
##       0                 1                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.943405668449197 0.943676011080333 0.944254697802198
##       0                 1                 5                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.944823923705722 0.945383918918919 0.945934906166219
##       0                 3                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.946297333333334 0.946855950413223 0.946855950413224
##       0                 1                 7                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.947405409836065 0.947405409836066 0.94794593495935
##       0                 1                 3                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.948477741935483 0.948933259052925 0.949471574585635
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.949471574585636 0.95000104109589 0.950001041095891 0.950521875
##       0                 2                1                 5           5
##       1                 0                0                 0           0
##        y_rate_len
## earlybf 0.951034285714285 0.951034285714286 0.951583910614524
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.952101689750692 0.952610934065933 0.952610934065935
##       0                 3                 3                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.953111852861035 0.953604648648649 0.954089517426274
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.955235206611571 0.955715983606557 0.95618894308943
##       0                 3                 3                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.956654274193549 0.957405877437327 0.957873977900553
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.958334383561644 0.958787282608695 0.958787282608696
##       0                 7                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.959232857142857 0.95967128342246 0.960080195530726
##       0                 2                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.960527368421052 0.960527368421053 0.96096717032967
##       0                 3                 1                7
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.961399782016348 0.961825378378379 0.962244128686327
##       0                 5                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.962769495798319 0.963195499999999 0.9631955 0.963614462809917
##       0                 1                 1         1                 6
##       1                 0                 0         0                 0
##        y_rate_len
## earlybf 0.964026557377049 0.96402655737705 0.964431951219511
##       0                 3                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.964431951219512 0.964830806451613 0.96627638121547
##       0                 4                 1                4
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.966667726027397 0.966667726027398 0.967052690217392
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.968576480446928 0.968953047091413 0.969323406593406
##       0                 1                 3                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.969323406593407 0.969687711171661 0.969687711171662
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.970398739946381 0.970745744680851 0.971993719008264
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.971993719008265 0.97233713114754 0.972337131147541
##       0                 1                2                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.972674959349593 0.972674959349594 0.973007338709677 0.9733344
##       0                 1                 1                 2         1
##       1                 0                 0                 0         0
##        y_rate_len
## earlybf 0.974351114206128 0.974678784530386 0.97500106849315
##       0                 4                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.975001068493151 0.97563 0.975936898395722 0.977378725761772
##       0                 3       1                 1                 1
##       1                 0       0                 0                 0
##        y_rate_len
## earlybf 0.977679642857143 0.977975640326976 0.978266837837837
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.978266837837838 0.978553351206434 0.979520847457627
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.980093666666666 0.98037297520661 0.980372975206612
##       0                 1                3                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.980647704918033 0.980647704918034 0.980917967479675
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.981183870967742 0.982823732590529 0.98282373259053
##       0                 1                 3                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.983081187845304 0.983334410958904 0.983334410958905
##       0                 3                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.983583505434782 0.983583505434783 0.983828571428571
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.984069705882352 0.98430700265252 0.985569050279329
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.985804404432132 0.985804404432133 0.986035879120879
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.986487567567568 0.98854275 0.988752231404958 0.988752231404959
##       0                 4          2                 4                 1
##       1                 0          0                 0                 0
##        y_rate_len
## earlybf 0.988958278688525 0.989160975609756 0.989360403225806
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.989360403225807 0.991105955056179 0.991296350974931
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.991483591160222 0.991667753424658 0.991848913043478
##       0                 1                 4                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.992027142857142 0.994230083102493 0.994230083102494
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.994392115384615 0.994392115384616 0.994551498637602
##       0                 2                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.994708297297297 0.994862573726541 0.994862573726542
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.996849831932773 0.997131487603305 0.997131487603306
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.997268852459016 0.997403983739837 0.997403983739838
##       0                 6                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.999768969359331 0.999885994475137 0.999885994475139
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 1.00000109589041 1.00011432065217 1.00033532085562
##       0                9                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.00256162011173 1.00265576177285 1.00274835164835
##       0                1                2                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.00283942779291 1.00283942779292 1.00292902702703
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.00551074380165 1.00557942622951 1.00571346774194
##       0                2                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.00824158774373 1.00828839779006 1.00833443835616
##       0                1                2                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.00837972826087 1.01110458791209 1.01112735694823
##       0                1                6                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.01117179624665 1.01389 1.01662285714286 1.01664513586956
##       0                2      15                1                2
##       1                0       0                0                0
##        y_rate_len
## earlybf 1.01666778082192 1.01669080110497 1.01671420612813 1.0193264075067
##       0                3                3                1               1
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.01941528610354 1.01946082417582 1.01950711911357
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.01955418994413 1.02200112 1.02213300813008 1.02220057377049
##       0                1          1                5                1
##       1                0          0                0                0
##        y_rate_len
## earlybf 1.02226925619835 1.02233908333333 1.02482142857143
##       0                5                2                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.02491054347826 1.02500112328767 1.02509320441989
##       0                5                2                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.02748101876676 1.02759121621622 1.02770321525885
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.02781706043956 1.02793279778393 1.02805047486033
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.02817014084507 1.03037601626016 1.03051114754098
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.03064851239669 1.0306485123967 1.03333446575342 1.03333446575343
##       0                2               1                1                3
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.03349560773481 1.03382603932584 1.03581194594595
##       0                1                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.03599114441417 1.0361732967033 1.03841959677419 1.03861902439024
##       0                2               5                1                2
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.03882172131148 1.03902776859504 1.04099935828877
##       0                6                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.04121857142857 1.04144135869565 1.04166780821918
##       0                1                1                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.04189801104972 1.04427907356948 1.04452953296703
##       0                1                3                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.04478415512465 1.04633448 1.04659612903226 1.04713229508197
##       0                1          1                1                1
##       1                0          0                0                0
##        y_rate_len
## earlybf 1.04740702479339 1.04768633333333 1.04970676630435
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05000115068493 1.05030041436464 1.05256700272479 1.0525670027248
##       0                2                1                1               1
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.05288576923077 1.05421517045455 1.05477266129032
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05578628099173 1.05578628099174 1.05649042016807
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05726497326203 1.05761571428571 1.05797217391304
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05833449315069 1.05870281767956 1.06009946380697
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.06047413513514 1.06085493188011 1.0612420054945 1.06124200549451
##       0                1                5               1                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.06163551246537 1.06294919354839 1.06416553719008
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.06539778074866 1.06581428571429 1.06666783561644
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.06710522099448 1.06754991643454 1.06914286103542
##       0                1                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.06959824175824 1.07206401639344 1.07254479338843
##       0                3                4                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.07353058823529 1.07401285714286 1.07450298913043
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.07500117808219 1.07550762430939 1.07640868632708
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.07743079019074 1.07795447802198 1.08037459016393
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.08276839673913 1.08333452054795 1.08391002762431
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.08456329758713 1.08509014044944 1.08513632432432
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.08571871934605 1.08631071428571 1.08691254847645
##       0                1                3                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.08807707317073 1.08868516393443 1.08930330578512
##       0                1                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.08979620320856 1.0916678630137 1.09231243093923 1.09296777158774
##       0                2               2                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.09400664850136 1.09466695054945 1.09632008130081
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.09699573770492 1.09768256198347 1.09792901069519
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.09838083333333 1.09929921195652 1.10087252010724
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.10157778378378 1.10302318681319 1.10376390581717
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.10456308943089 1.10606181818182 1.10680714285714
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.10833454794521 1.11280609756098 1.11613100840336
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.11666789041096 1.11751964088398 1.11801924324324
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.12372808333333 1.12465109243698 1.12500123287671
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.12715836512262 1.1280918956044 1.13000589385475 1.13023803278688
##       0                1               2                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.13119958677686 1.13533086350975 1.13544629427793 1.1355568
##       0                1                1                1         1
##       1                0                0                0         0
##        y_rate_len
## earlybf 1.13644813186813 1.13746662049862 1.14062625 1.14164557640751
##       0                1                1          1                1
##       1                0                0          0                0
##        y_rate_len
## earlybf 1.14166791780822 1.14373422343324 1.14589229916898 1.1478
##       0                1                1                1      1
##       1                0                0                0      0
##        y_rate_len
## earlybf 1.14907533333333 1.1528910483871 1.15715706521739 1.16106758064516
##       0                3               1                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.16151684065934 1.16226414634146 1.16348032786885
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.16987307692308 1.17116933518006 1.17309586776859
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.18010147540984 1.18147512396694 1.18473886740332
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.18658554945055 1.19314127071823 1.19494178571429
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.19672262295082 1.20329802197802 1.2048720498615 1.20503319672131
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.20519 1.21172219512195 1.21499214876033 1.21501491847826
##       0       1                1                1                1
##       1       0                0                0                0
##        y_rate_len
## earlybf 1.23618673796791 1.23672296703297 1.23981114130435
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.24012991735537 1.25343543956044 1.25489663934426
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.26118024390244 1.26320721311475 1.2771653038674 1.27801260504202
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.28556770718232 1.29291694822888 1.31888130081301 1.330730625
##       0                1                1                1           1
##       1                0                0                0           0
##        y_rate_len
## earlybf 1.35278693370166 1.45398510989011 1.49576629120879
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.52500167123288 1.59830380697051 1.81330326923077
##       0                1                1                1
##       1                0                0                0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##        y_rate_len
## earlybf -1.00274835164835 -0.420656489361703 -0.339851396648045
##       0                 1                  1                  1
##       1                 0                  0                  0
##        y_rate_len
## earlybf -0.199453770491803 -0.152083500000001 -0.147973135135134
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_len
## earlybf -0.0504144198895023 -0.0501374175824171 -0.0334249450549455
##       0                   1                   1                   1
##       1                   0                   0                   0
##        y_rate_len
## earlybf 0.0325312299465222 0.0334249450549443 0.0341760674157308
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_len
## earlybf 0.114471451612901 0.120292033898303 0.203910837988826
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.226507340425533 0.231431413043479 0.235267292817678
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.236574333333334 0.249317213114754 0.257495873015874
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.270370666666667 0.271881117318437 0.272149421052632
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.284112032967033 0.287268833333331 0.289682857142857
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.29594627027027 0.297554673913043 0.30586625698324
##       0                1                 1                1
##       1                0                 0                0
##        y_rate_len
## earlybf 0.305866256983242 0.31238772972973 0.323581914893617
##       0                 1                1                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.330616304347825 0.330616304347826 0.332422950819672
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.33442445026178 0.349044098360655 0.349044098360657
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.352900939226518 0.354056825396826 0.354861500000001
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.355750877192982 0.363677934782607 0.365665245901637
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.365665245901639 0.367674395604396 0.370150317460317
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.37383653631285 0.376120483870967 0.378060677966102 0.38020875
##       0                2                 1                 1          1
##       1                0                 0                 0          0
##        y_rate_len
## earlybf 0.382381371428569 0.384386868131868 0.386243809523808
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.386510552486189 0.388298297872341 0.392473548387097
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.39749096590909 0.401099340659342 0.411036486486486
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.413270380434783 0.414773181818182 0.417811813186813
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.418430793650795 0.422905989304814 0.427477945945945
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.432055397727273 0.432149836065573 0.432149836065574
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.432149836065575 0.434524285714286 0.43692497237569
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.439171604278075 0.441532741935484 0.441806815642457
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.444288876404495 0.446332010869566 0.451236758241759
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.453014680851063 0.453729779005525 0.455437219251336
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.457885806451612 0.459418906250001 0.460360864864864
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.464254894736841 0.465392131147541 0.465392131147542
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.46794923076923 0.469193776595744 0.469193776595746
##       0                2                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.470534585635359 0.472798445595855 0.473148666666666
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.474238870967742 0.475791955307262 0.477749214659686
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.479393641304346 0.479393641304349 0.48116813559322
##       0                 3                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.482013278688526 0.484661703296704 0.485372872340425 0.4866672
##       0                 1                 1                 3         1
##       1                 0                 0                 0         0
##        y_rate_len
## earlybf 0.487339392265193 0.487339392265194 0.490046833333332
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.492784525139666 0.493243783783785 0.495924456521738
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.498634426229508 0.501374175824176 0.501551968085108
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.504048171428572 0.504144198895028 0.504234064171122
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.506944999999999 0.506945000000001 0.509685243243242
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.509685243243245 0.509777094972067 0.51245527173913
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.512455271739131 0.512839709302327 0.514991746031746
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.515255573770493 0.515537288135593 0.518086648351647
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.518466477272727 0.520499679144383 0.520499679144385
##       0                 2                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.520949005524863 0.523843166666666 0.526126702702703
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.526769664804468 0.528290052631578 0.528986086956521
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.533626315789474 0.535748693181817 0.535838238341968
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.53583823834197 0.536765294117647 0.537753812154697
##       0                1                 2                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.540741333333333 0.540741333333334 0.542568162162162
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.543762234636872 0.545516902173913 0.547178730158731
##       0                 2                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.548207965116278 0.548497868852459 0.54849786885246
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.551413859649123 0.551511593406595 0.55303090909091
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.55455861878453 0.554558618784531 0.556004193548388
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.557639500000002 0.560754804469274 0.560754804469276
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.562047717391303 0.562047717391304 0.562621040462428
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.563272222222222 0.563905112359551 0.565119016393444
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.56626835106383 0.567091016949152 0.567358134715025
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.568224065934064 0.568224065934067 0.571363425414363
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.571363425414364 0.573572057142859 0.574537666666665
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.574537666666668 0.575451081081081 0.576316421052633
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.577747374301674 0.577747374301677 0.578578532608696
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.579365714285713 0.579365714285716 0.580993146067414
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.580993146067415 0.580993146067417 0.581740163934426
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.58244744680851 0.584275593220338 0.584275593220339
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.584936538461537 0.584936538461538 0.58615515625
##       0                 1                 4             1
##       1                 0                 0             0
##        y_rate_len
## earlybf 0.586988947368421 0.587595340909089 0.587595340909092
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.588168232044199 0.588710322580644 0.588710322580646
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.591435833333333 0.59189254054054 0.592325210526314
##       0                 2                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.592325210526315 0.594739944134078 0.595109347826088
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.595459206349207 0.595791030927835 0.598081179775281
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.598361311475409 0.59836131147541 0.598361311475411
##       0                 1                3                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.59862654255319 0.601460169491525 0.60164901098901
##       0                1                 2                1
##       1                0                 0                0
##        y_rate_len
## earlybf 0.601649010989011 0.601649010989012 0.601827754010693
##       0                 3                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.601827754010696 0.604973038674032 0.604973038674035
##       0                 2                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.605063387096773 0.608333999999999 0.608334 0.611552698412698
##       0                 1                 3        2                 1
##       1                 0                 0        0                 0
##        y_rate_len
## earlybf 0.611552698412699 0.611732513966479 0.611732513966481
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.614982459016392 0.614982459016393 0.614982459016394
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.615169213483145 0.615169213483146 0.61536676300578
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.618093368983957 0.618361483516484 0.618644745762711
##       0                 4                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.618644745762712 0.621777845303867 0.621777845303868
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.624342789473683 0.624342789473685 0.624775459459459
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.625232166666665 0.625232166666667 0.62571497142857
##       0                 1                 3                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.628170978260869 0.628725083798883 0.629311034482758
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.630984734042554 0.631603606557377 0.631603606557379
##       0                 2                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.632257247191012 0.634358983957219 0.63435898395722
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.635073956043956 0.636998952879581 0.637769516129031
##       0                 5                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.637769516129033 0.638582651933701 0.638582651933704
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.639441988636364 0.640351578947368 0.641216918918919
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.64121691891892 0.642130333333333 0.642130333333334
##       0                2                 3                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.642130333333335 0.643739682539683 0.644118352941175
##       0                 2                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.644701793478261 0.644701793478262 0.645717653631284
##       0                 2                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.645717653631286 0.646157875647667 0.646791896551722
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.646791896551725 0.647163829787234 0.648224754098359
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.64822475409836 0.648224754098362 0.649345280898876
##       0                1                 3                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.650530578034683 0.650624598930481 0.651786428571427
##       0                 4                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.651786428571428 0.65178642857143 0.653013898305084
##       0                 1                4                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.65412258064516 0.654122580645161 0.655387458563534
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.655387458563536 0.655387458563537 0.656360368421054
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.657658378378378 0.658139122807018 0.659028500000001
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.659833174603174 0.662710223463686 0.662710223463687
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.662710223463688 0.663342925531914 0.663342925531916
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.664845901639344 0.665365312499999 0.6653653125 0.66643331460674
##       0                 6                 1            2                2
##       1                 0                 0            0                0
##        y_rate_len
## earlybf 0.666433314606742 0.666890213903742 0.666890213903743
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.6684989010989 0.668498901098901 0.67019847457627
##       0               1                 6                1
##       1               0                 0                0
##        y_rate_len
## earlybf 0.670475645161289 0.67219226519337 0.672369157894735
##       0                 3                7                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.674099837837837 0.674099837837838 0.674099837837839
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.675926666666667 0.677763423913043 0.677763423913044
##       0                 7                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.677763423913045 0.677857885714287 0.679522021276596
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.679702793296089 0.679702793296091 0.68120734375
##       0                 5                 2             1
##       1                 0                 0             0
##        y_rate_len
## earlybf 0.681467049180327 0.681467049180328 0.681467049180329
##       0                 8                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.681753620689656 0.683155828877003 0.683155828877006
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.683521348314607 0.684773874345549 0.685211373626373
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.685211373626374 0.685211373626375 0.68682870967742
##       0                 1                 4                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.687383050847458 0.688377947368421 0.688997071823203
##       0                 2                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.688997071823205 0.688997071823206 0.690541297297297
##       0                 2                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.690541297297298 0.692020158730158 0.692020158730161
##       0                 2                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.692824833333332 0.692824833333335 0.693437720207253
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.694294239130433 0.694294239130434 0.694294239130435
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.695701117021276 0.695701117021277 0.695701117021278
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.696695363128491 0.696695363128493 0.698088196721311
##       0                 3                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.698088196721312 0.699234482758619 0.699421443850267
##       0                 4                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.700609382022471 0.701923846153844 0.701923846153845
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.701923846153847 0.703181774193548 0.703276300578035
##       0                 6                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.704567627118643 0.704567627118644 0.705542010309278
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.705801878453037 0.705801878453038 0.705801878453039
##       0                 2                 4                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.706982756756756 0.70736511627907 0.708113650793651
##       0                 1                1                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.708113650793652 0.708570852272729 0.709197668393782
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.709722999999998 0.709723 0.710825054347826 0.710825054347827
##       0                 1        3                 1                 1
##       1                 0        0                 0                 0
##        y_rate_len
## earlybf 0.711880212765958 0.712619828571428 0.713687932960892
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.713687932960894 0.714709344262295 0.714709344262296
##       0                 3                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.715687058823528 0.716623821989529 0.717697415730338
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.718636318681318 0.718636318681319 0.718636318681321
##       0                 5                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.719534838709676 0.719534838709678 0.720395526315789
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.721752203389828 0.721752203389831 0.722606685082872
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.722606685082874 0.722606685082875 0.723424216216215
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.723424216216217 0.724207142857143 0.725049244186048
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.725853068181819 0.726621166666666 0.727355869565217
##       0                 1                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.729289298245616 0.7300008 0.731330491803277 0.731330491803278
##       0                 1         1                 3                 3
##       1                 0         0                 0                 0
##        y_rate_len
## earlybf 0.73133049180328 0.731952673796791 0.732548795811517
##       0                2                 3                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.73254879581152 0.733579235294119 0.734785449438202
##       0                1                 1                 3
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.734785449438203 0.734785449438204 0.73534879120879
##       0                 1                 2                4
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.735348791208791 0.735348791208792 0.735887903225806
##       0                 1                 7                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.736404315789473 0.736404315789474 0.738440115606934
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.738936779661016 0.738936779661019 0.739411491712706
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.739411491712707 0.739411491712708 0.739865675675676
##       0                 1                 6                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.739865675675677 0.740300634920634 0.740300634920635
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.743135284090909 0.743519333333332 0.743519333333334
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.743886684782609 0.74388668478261 0.744238404255318
##       0                 6                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.744575468749998 0.747381771428572 0.747381771428573
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.747673072625697 0.747673072625698 0.747673072625699
##       0                 3                 3                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.747951639344261 0.747951639344262 0.748218288770052
##       0                 1                12                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.748218288770055 0.751677068965517 0.751873483146068
##       0                 2                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.752061263736263 0.752061263736264 0.752240967741934
##       0                 2                 9                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.752240967741936 0.752578144329896 0.756022023121387
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.756121355932202 0.756121355932204 0.756216298342541
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.756307135135134 0.756307135135135 0.756307135135137
##       0                 7                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.756394126984127 0.756477512953367 0.760417499999999 0.7604175
##       0                 3                 1                 8        11
##       1                 0                 0                 0         0
##        y_rate_len
## earlybf 0.760417500000001 0.764398743455497 0.764398743455498
##       0                 6                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.764483903743314 0.764483903743315 0.764483903743316
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.764572786885245 0.764572786885246 0.764665642458101
##       0                 5                 1                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.764762742857141 0.768256855670104 0.768421894736842
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.768421894736844 0.768594032258064 0.768594032258065
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.768773736263735 0.768773736263736 0.768773736263738
##       0                 6                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.768961516853933 0.772237461139897 0.772487619047619
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.772487619047621 0.772748594594593 0.772748594594594
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.772748594594595 0.773021104972375 0.773021104972377
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.77330593220339 0.773603930635837 0.773603930635839
##       0                5                 2                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.776259531250001 0.776596595744682 0.776948315217389
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.776948315217391 0.776948315217392 0.777315666666666
##       0                 2                 9                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.777315666666667 0.777699715909091 0.780749518716577
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.780749518716578 0.781193934426228 0.781193934426229
##       0                 3                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.78119393442623 0.781658212290502 0.781658212290503
##       0                5                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.781658212290504 0.782143714285714 0.783935567010309
##       0                 2                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.784430684210526 0.784430684210527 0.784947096774193
##       0                 2                 2                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.784947096774195 0.785486208791207 0.785486208791208
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.785486208791209 0.786049550561797 0.786049550561798
##       0                 9                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.786049550561799 0.786638793103448 0.787997409326425
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.78858111111111 0.788581111111112 0.789190054054054
##       0                2                 4                 6
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.789825911602209 0.78982591160221 0.790490508474575
##       0                 1                8                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.790490508474576 0.790490508474578 0.792101562499999 0.7921015625
##       0                 2                 1                 2            2
##       1                 0                 0                 0            0
##        y_rate_len
## earlybf 0.79277569148936 0.792775691489361 0.792775691489363
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.793479130434782 0.793479130434784 0.794213833333331
##       0                 8                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.794213833333333 0.794213833333334 0.794981931818181
##       0                 4                 4                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.794981931818182 0.795785755813953 0.796248691099476
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.797015133689839 0.79701513368984 0.797815081967213
##       0                 1                4                 9
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.797815081967214 0.798650782122903 0.798650782122905
##       0                 2                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.799524685714285 0.799524685714286 0.799524685714287
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.799614278350517 0.800439473684211 0.801300161290321
##       0                 1                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.801300161290322 0.801300161290323 0.802198681318681
##       0                 1                 6                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.802198681318682 0.802198681318683 0.803137584269661
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.803137584269662 0.803137584269663 0.803757357512953
##       0                 1                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.803757357512954 0.804119655172413 0.804674603174603
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.80514794117647 0.805631513513512 0.805631513513513
##       0                1                 2                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.805631513513514 0.806630718232044 0.806630718232046
##       0                 6                12                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.807675084745761 0.807675084745762 0.807675084745763
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.808954787234041 0.808954787234042 0.810009945652173
##       0                 1                 4                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.810009945652174 0.810009945652175 0.811112 0.811112000000001
##       0                 3                 4        6                 1
##       1                 0                 0        0                 0
##        y_rate_len
## earlybf 0.811112000000002 0.812173664921465 0.812173664921466
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.812173664921467 0.812264147727273 0.813280748663102
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.813280748663103 0.814436229508195 0.814436229508196
##       0                 1                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.814436229508198 0.815292989690722 0.815643351955307
##       0                12                 1                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.815643351955308 0.816448263157894 0.816448263157895
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.816905657142855 0.81765322580645 0.817653225806452
##       0                 1                3                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.818911153846152 0.818911153846154 0.818911153846155
##       0                 9                 4                14
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.820225617977528 0.82022561797753 0.820768095238094
##       0                 8                1                 3
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.820768095238095 0.821600517241377 0.821600517241379
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.822072972972972 0.822072972972973 0.823435524861877
##       0                 1                 6                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.823435524861878 0.823435524861879 0.823785625 0.824859661016949
##       0                 1                 7           1                 3
##       1                 0                 0           0                 0
##        y_rate_len
## earlybf 0.824859661016951 0.825133882978722 0.825133882978725
##       0                 1                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.82634965317919 0.826540760869565 0.828010166666665
##       0                1                 3                 4
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.828010166666666 0.828010166666668 0.828098638743456
##       0                 4                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.829546363636363 0.829546363636364 0.829546363636365
##       0                 3                 5                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.831057377049179 0.83105737704918 0.831057377049181
##       0                 3               12                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.832457052631579 0.832635921787708 0.832635921787709
##       0                 1                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.83263592178771 0.83400629032258 0.834006290322582
##       0                6                5                 1
##       1                0                0                 0
##        y_rate_len
## earlybf 0.834286628571431 0.83527725388601 0.835623626373625
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.835623626373626 0.835623626373628 0.836861587301585
##       0                21                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.836861587301588 0.837313651685392 0.837313651685394
##       0                 5                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.838514432432432 0.838514432432433 0.838514432432434
##       0                 9                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.840240331491712 0.840240331491713 0.840240331491714
##       0                 1                18                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.841312978723402 0.841312978723403 0.841312978723405
##       0                 1                 3                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.842044237288134 0.842044237288136 0.842308615384614
##       0                 5                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.843071576086956 0.843071576086957 0.843071576086958
##       0                 8                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.844023612565445 0.844023612565446 0.844908333333333
##       0                 3                 1                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.844908333333334 0.845811978609625 0.845811978609626
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.846828579545456 0.847678524590163 0.847678524590164
##       0                 5                 5                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.847678524590165 0.848465842105263 0.84962849162011
##       0                 3                 1                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.849628491620112 0.850359354838709 0.85035935483871
##       0                 8                 1                9
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.851667599999999 0.851667600000001 0.852336098901098
##       0                 2                 2                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.8523360989011 0.852955079365079 0.85295507936508
##       0               9                 6                1
##       1               0                 0                0
##        y_rate_len
## earlybf 0.852955079365081 0.853802105263159 0.854401685393258
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.854955891891892 0.855469687499999 0.8554696875 0.855469687500001
##       0                13                 1            1                 1
##       1                 0                 0            0                 0
##        y_rate_len
## earlybf 0.856562241379309 0.85656224137931 0.856562241379311
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.857045138121546 0.857045138121547 0.857045138121548
##       0                 9                 2                 6
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.857492074468085 0.857492074468087 0.859228813559321
##       0                 3                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.859228813559322 0.859602391304346 0.859602391304347
##       0                 4                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.859602391304348 0.859948586387433 0.861513468208093
##       0                12                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.861806499999999 0.8618065 0.861806500000001 0.862077593582887
##       0                 3         3                 1                 9
##       1                 0         0                 0                 0
##        y_rate_len
## earlybf 0.864110795454545 0.864299672131146 0.864299672131147
##       0                 5                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.864299672131148 0.864474631578947 0.864474631578948
##       0                12                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.866522267441859 0.866621061452513 0.866621061452514
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.866621061452515 0.866712419354838 0.86671241935484
##       0                 1                 9                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.866797150259067 0.86904857142857 0.869048571428571
##       0                 2                3                 7
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.869048571428572 0.87131171875 0.871311718750001
##       0                13             2                 1
##       1                 0             0                 0
##        y_rate_len
## earlybf 0.871397351351351 0.871397351351352 0.871489719101122
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.871489719101125 0.873671170212765 0.873671170212766
##       0                 2                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.873671170212767 0.873849944751379 0.87384994475138
##       0                 3                 1                5
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.873849944751382 0.874043103448276 0.875873560209423
##       0                11                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.875873560209424 0.876133206521739 0.87613320652174
##       0                 4                 7                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.876133206521741 0.876413389830507 0.876413389830509
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.878007835051546 0.878007835051547 0.878343208556148
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.878343208556149 0.878343208556151 0.878704666666665
##       0                 1                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.878704666666666 0.878704666666667 0.880483421052632
##       0                 1                11                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.880920819672131 0.880920819672132 0.880920819672133
##       0                 8                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.881393011363635 0.881904319526628 0.882557098445595
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.882557098445596 0.882557098445597 0.883065483870966
##       0                 1                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.883065483870969 0.883613631284915 0.883613631284917
##       0                 3                 3                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.884206395348837 0.884206395348838 0.885142063492063
##       0                 1                 1                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.885761043956043 0.885761043956045 0.885761043956046
##       0                19                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.887153749999999 0.887838810810809 0.887838810810811
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.887838810810812 0.888577752808989 0.889377192982456
##       0                 3                11                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.889850265957447 0.890654751381215 0.890654751381216
##       0                 6                15                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.890654751381217 0.891523965517243 0.891798534031413
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.891798534031414 0.891798534031415 0.892664021739129
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.89266402173913 0.892664021739131 0.893597966101695
##       0                3                 9                 3
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.893686546391752 0.894608823529411 0.894608823529412
##       0                 1                 2                10
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.894608823529413 0.895602833333333 0.895602833333334
##       0                 1                10                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.895602833333335 0.896492210526315 0.896492210526317
##       0                 2                 4                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.896677283236993 0.896677283236996 0.897541967213113
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.897541967213115 0.897541967213116 0.898317046632125
##       0                 1                 9                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.898675227272728 0.899418548387097 0.900606201117318
##       0                 2                 6                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.90060620111732 0.901235555555555 0.901235555555556
##       0                2                 2                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.901235555555557 0.901890523255815 0.902473516483515
##       0                 1                 1                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.902473516483516 0.902473516483517 0.902995781249999
##       0                 5                13                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.90299578125 0.903810514285714 0.903810514285715 0.90428027027027
##       0             3                 1                 3                6
##       1             0                 0                 0                0
##        y_rate_len
## earlybf 0.904280270270271 0.905665786516853 0.905665786516855
##       0                 1                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.906029361702127 0.906029361702128 0.906029361702129
##       0                 4                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.907459558011048 0.907459558011049 0.907459558011051
##       0                 7                 2                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.907723507853402 0.907723507853404 0.909004827586207
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.909194836956522 0.909194836956523 0.909365257731958
##       0                11                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.910782542372881 0.910874438502673 0.910874438502674
##       0                 5                 1                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.910874438502675 0.912500999999998 0.912500999999999 0.912501
##       0                 1                 1                 2        5
##       1                 0                 0                 0        0
##        y_rate_len
## earlybf 0.912501000000001 0.914163114754097 0.914163114754098
##       0                 7                 4                21
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.9141631147541 0.914259190751446 0.915771612903225
##       0               1                 2                 7
##       1               0                 0                 0
##        y_rate_len
## earlybf 0.915771612903226 0.915957443181818 0.915957443181819
##       0                 3                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.917329047619046 0.917329047619047 0.917329047619048
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.917598770949719 0.91759877094972 0.917598770949722
##       0                 4                1                 7
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.917900414201185 0.9188378125 0.918837812500001 0.919185989010988
##       0                 1            1                 1                 3
##       1                 0            0                 0                 0
##        y_rate_len
## earlybf 0.919185989010989 0.920300153846152 0.920721729729729
##       0                25                 1                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.92072172972973 0.920721729729731 0.921191485714285
##       0                1                 3                 3
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.921191485714286 0.922208457446807 0.922208457446808
##       0                 2                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.922208457446809 0.922753820224718 0.922753820224719
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.92275382022472 0.923648481675392 0.924264364640883
##       0                1                 5                 4
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.924264364640884 0.924264364640885 0.924952280701754
##       0                18                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.925043969072166 0.925725652173912 0.925725652173913
##       0                 1                 8                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.925725652173914 0.926485689655172 0.927140053475934
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.927140053475936 0.927967118644066 0.927967118644067
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.927967118644069 0.928509789473684 0.928509789473686
##       0                 1                 6                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.929399166666665 0.929399166666667 0.929399166666668
##       0                 2                23                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.929836943005181 0.929836943005182 0.930784262295081
##       0                 1                 1                15
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.930784262295082 0.930784262295083 0.932124677419353
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.932124677419354 0.932124677419355 0.933239659090908
##       0                 3                 7                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.933239659090909 0.93323965909091 0.933422539682539
##       0                 1                3                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.93342253968254 0.933422539682541 0.934591340782122
##       0                2                 3                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.934591340782123 0.934679843749999 0.934679843750001
##       0                14                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.935898461538461 0.935898461538462 0.935898461538463
##       0                17                 6                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.937163189189187 0.93716318918919 0.937258779069767
##       0                 1                7                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.938387553191489 0.93838755319149 0.938387553191491
##       0                 3                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.938572457142856 0.938572457142857 0.938572457142858
##       0                 1                 3                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.939573455497381 0.939573455497382 0.939841853932584
##       0                 1                 2                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.940722680412371 0.941069171270717 0.941069171270718
##       0                 2                13                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.94106917127072 0.942256467391303 0.942256467391304
##       0                8                 2                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.942256467391305 0.943405668449197 0.9434056684492
##       0                 9                 7               2
##       1                 0                 0               0
##        y_rate_len
## earlybf 0.943966551724136 0.943966551724139 0.944518578947367
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.944518578947369 0.945151694915253 0.945151694915254
##       0                 2                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.945596891191709 0.94559689119171 0.945596891191711
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.946297333333332 0.946297333333334 0.946297333333335
##       0                11                 4                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.947405409836064 0.947405409836065 0.947405409836066
##       0                 1                 3                22
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.948477741935483 0.949423005780345 0.949423005780348
##       0                 6                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.949516031746031 0.949516031746033 0.950521875 0.951583910614524
##       0                 5                 8           7                 7
##       1                 0                 0           0                 0
##        y_rate_len
## earlybf 0.951583910614527 0.952610934065932 0.952610934065933
##       0                 2                 4                 9
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.952610934065935 0.953604648648648 0.953604648648649
##       0                15                 6                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.953604648648651 0.954566648936169 0.954566648936171
##       0                 1                 4                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.954942906976743 0.954942906976745 0.955498429319372
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.955953428571427 0.955953428571429 0.956929887640448
##       0                 1                 3                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.95692988764045 0.956929887640451 0.957873977900551
##       0                3                 2                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.957873977900552 0.957873977900553 0.958787282608695
##       0                 8                12                25
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.958787282608696 0.958787282608697 0.959671283422458
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.95967128342246 0.959671283422461 0.960527368421051
##       0                2                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.960527368421053 0.960527368421054 0.961356839378237
##       0                 5                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.961447413793104 0.96233627118644 0.963195499999998
##       0                 3                5                 4
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.963195499999999 0.9631955 0.964026557377049 0.96402655737705
##       0                 4        16                13                6
##       1                 0         0                 0                0
##        y_rate_len
## earlybf 0.964026557377051 0.964830806451611 0.964830806451613
##       0                 1                 4                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.964830806451614 0.965609523809524 0.965609523809525
##       0                 6                10                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.966363906249999 0.96636390625 0.966363906250001
##       0                 2             1                 1
##       1                 0             0                 0
##        y_rate_len
## earlybf 0.967004913294798 0.967095076923077 0.96780409090909
##       0                 1                 1                4
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.967804090909091 0.967804090909092 0.968576480446925
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.968576480446927 0.968576480446928 0.969323406593406
##       0                 5                 8                22
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.969323406593407 0.969323406593408 0.970046108108107
##       0                 5                 3                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.970046108108108 0.970046108108109 0.97074574468085
##       0                 3                 9                2
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.970745744680851 0.97142340314136 0.971423403141361
##       0                 6                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.971423403141363 0.973334399999999 0.9733344 0.973334400000001
##       0                 2                 4         1                 3
##       1                 0                 0         0                 0
##        y_rate_len
## earlybf 0.974017921348314 0.974017921348315 0.974678784530386
##       0                 2                 4                15
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.974678784530387 0.975318097826086 0.975318097826087
##       0                 4                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.975318097826088 0.975936898395721 0.975936898395722
##       0                10                 3                12
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.976536157894736 0.976536157894737 0.976536157894738
##       0                 3                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.978928275862069 0.97892827586207 0.979520847457625
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.979520847457627 0.980093666666666 0.980093666666667
##       0                 3                21                 4
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.980093666666669 0.980647704918031 0.980647704918033
##       0                 1                 6                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.980647704918034 0.981183870967741 0.981183870967742
##       0                16                 3                11
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.981703015873015 0.981703015873016 0.981703015873017 0.9822059375
##       0                 2                 2                 4            2
##       1                 0                 0                 0            0
##        y_rate_len
## earlybf 0.982693384615384 0.984586820809248 0.98458682080925
##       0                 2                 2                1
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.98508630681818 0.985086306818181 0.985086306818182
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.985569050279329 0.98556905027933 0.985569050279332
##       0                 9                5                 2
##       1                 0                0                 0
##        y_rate_len
## earlybf 0.986035879120878 0.986035879120879 0.98603587912088
##       0                 8                 5               13
##       1                 0                 0                0
##        y_rate_len
## earlybf 0.986487567567566 0.986487567567568 0.986924840425531
##       0                 2                13                 3
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.986924840425532 0.986924840425533 0.987348376963349
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.98734837696335 0.987348376963351 0.990715371428569
##       0                1                 3                 1
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.990715371428572 0.991105955056179 0.991105955056182
##       0                 3                 8                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.99148359116022 0.991483591160221 0.991483591160222
##       0               11                 4                20
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.991848913043477 0.991848913043478 0.992202513368983
##       0                 1                23                 8
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.992202513368984 0.992202513368985 0.992544947368421
##       0                 2                 3                 7
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.992876735751295 0.992876735751296 0.996409137931035
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.996705423728813 0.996705423728814 0.996705423728815
##       0                 4                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.996991833333332 0.996991833333333 0.996991833333334
##       0                 6                 3                17
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.997268852459015 0.997268852459016 0.997268852459018
##       0                 2                18                 1
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.99753693548387 0.997536935483871 0.997536935483872
##       0                7                 5                 2
##       1                0                 0                 0
##        y_rate_len
## earlybf 0.997796507936506 0.997796507936507 0.997796507936508
##       0                 1                 1                 5
##       1                 0                 0                 0
##        y_rate_len
## earlybf 0.99804796875 0.998047968750001 1.0021687283237 1.00236852272727
##       0             4                 2               4                4
##       1             0                 0               0                0
##        y_rate_len
## earlybf 1.00256162011173 1.00274835164835 1.00292902702703
##       0               10               40               15
##       1                0                0                0
##        y_rate_len
## earlybf 1.00310393617021 1.00327335078534 1.0034375257732 1.00799529069767
##       0                8                5               1                5
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.00809634285714 1.00819398876404 1.00819398876405
##       0                5                6                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.00828839779006 1.00837972826087 1.00846812834224
##       0               33               29                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.00846812834225 1.0085537368421 1.00855373684211 1.00863668393782
##       0                8               9                2                3
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.01389 1.0191162371134 1.01919832460733 1.01928303191489
##       0      79               1                3                7
##       1       0               0                0                0
##        y_rate_len
## earlybf 1.0192830319149 1.01937048648649 1.01946082417582 1.01946082417583
##       0               2               13               22               12
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.01955418994413 1.01955418994414 1.01965073863636
##       0               18                1                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.01975063583815 1.02456252631579 1.02473374331551
##       0                4                6               12
##       1                0                0                0
##        y_rate_len
## earlybf 1.02491054347826 1.02509320441989 1.02528202247191
##       0               24               26                9
##       1                0                0                0
##        y_rate_len
## earlybf 1.02547731428571 1.02973203125 1.02998349206349 1.03024306451613
##       0                2             2                7               15
##       1                0             0                0                0
##        y_rate_len
## earlybf 1.03051114754098 1.03078816666667 1.03107457627119
##       0               23               15                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.03137086206896 1.03137086206897 1.03479494845361
##       0                2                5                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.03512329842932 1.03546212765957 1.03546212765958
##       0                2                3                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.03581194594595 1.03617329670329 1.0361732967033 1.03654675977654
##       0               14                3              29               11
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.03693295454545 1.0373325433526 1.04015658031088 1.04057131578947
##       0                4               3                3                6
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.04099935828877 1.04144135869565 1.04189801104972
##       0                7               25               21
##       1                0                0                0
##        y_rate_len
## earlybf 1.04237005617977 1.04237005617978 1.04285828571428
##       0                8                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.04285828571429 1.04336354651163 1.0455740625 1.04607698412698
##       0                4                1            3               10
##       1                0                0            0                0
##        y_rate_len
## earlybf 1.04659612903226 1.04713229508197 1.04768633333333
##       0               15               21               19
##       1                0                0                0
##        y_rate_len
## earlybf 1.04825915254237 1.04885172413793 1.05047365979381
##       0               10                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05104827225131 1.05164122340425 1.05164122340426 1.0522534054054
##       0                4                1                9               5
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.05225340540541 1.05288576923077 1.05353932960894
##       0               12               29               13
##       1                0                0                0
##        y_rate_len
## earlybf 1.05421517045454 1.05421517045455 1.05491445086705
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.05591652849741 1.05658010526316 1.05726497326203
##       0                1                7               17
##       1                0                0                0
##        y_rate_len
## earlybf 1.05797217391304 1.05870281767956 1.05945808988764
##       0               21               16               14
##       1                0                0                0
##        y_rate_len
## earlybf 1.06023925714286 1.0610476744186 1.06141609375 1.06217047619048
##       0                3               2             3               10
##       1                0               0             0                0
##        y_rate_len
## earlybf 1.06294919354839 1.06375344262295 1.0645845 1.06544372881356
##       0               14               31        20                9
##       1                0                0         0                0
##        y_rate_len
## earlybf 1.0663325862069 1.0669732460733 1.06782031914894 1.06869486486486
##       0               2               3                9               11
##       1               0               0                0                0
##        y_rate_len
## earlybf 1.06959824175824 1.07053189944134 1.07149738636364
##       0               32               10                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.07167647668394 1.0724963583815 1.07258889473684 1.07353058823529
##       0                3               2                7               13
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.0735305882353 1.07450298913043 1.07450298913044 1.07550762430939
##       0               4               23                1               27
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.07628323076923 1.0765461235955 1.07654612359551 1.077258125
##       0                1               9                2           1
##       1                0               0                0           0
##        y_rate_len
## earlybf 1.07762022857143 1.07826396825397 1.07873180232558
##       0                4                9                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.07930225806452 1.08037459016393 1.08037459016394
##       0               11               29                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.08148266666667 1.08262830508475 1.08289821989529
##       0               20                4                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.08381344827586 1.08399941489362 1.08513632432432
##       0                1                8               15
##       1                0                0                0
##        y_rate_len
## earlybf 1.08513632432433 1.08631071428571 1.08631071428572
##       0                3               39                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.08743642487047 1.08752446927374 1.08859768421053
##       0                2               21               13
##       1                0                0                0
##        y_rate_len
## earlybf 1.08877960227273 1.08979620320855 1.08979620320856
##       0                7                1               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.09007826589595 1.09103380434783 1.09142276470588
##       0                5               28                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.09231243093923 1.09310015625 1.09363415730337 1.09435746031746
##       0               30             4                7               15
##       1                0             0                0                0
##        y_rate_len
## earlybf 1.0950012 1.09565532258064 1.09565532258065 1.09641593023256
##       0         4                4               13                1
##       1         0                0                0                0
##        y_rate_len
## earlybf 1.09699573770492 1.09838083333333 1.09882319371728
##       0               28               15                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.09981288135593 1.1001785106383 1.10157778378378 1.10302318681319
##       0                8              10               19               36
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.10319637305699 1.103196373057 1.10451703910614 1.10451703910615
##       0                5              1                2                8
##       1                0              0                0                0
##        y_rate_len
## earlybf 1.10460647368421 1.10606181818182 1.10747984615385
##       0                7               22                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.10756461956522 1.1076601734104 1.1089421875 1.10911723756906
##       0               29               3            4               21
##       1                0               0            0                0
##        y_rate_len
## earlybf 1.11045095238095 1.11072219101123 1.11072219101124
##       0                8                1                9
##       1                0                0                0
##        y_rate_len
## earlybf 1.11200838709677 1.11200838709678 1.11238217142857 1.1136168852459
##       0               17                3                3              24
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.11474816753927 1.115279 1.11635760638298 1.11699745762712
##       0               11       15                6               15
##       1                0        0                0                0
##        y_rate_len
## earlybf 1.11801924324324 1.11801924324325 1.11877517241379
##       0               16                2                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.11973565934066 1.12061526315789 1.12150960893855
##       0               33                4               12
##       1                0                0                0
##        y_rate_len
## earlybf 1.12232743315508 1.12334403409091 1.12409543478261 1.12478421875
##       0               14               10               22             5
##       1                0                0                0             0
##        y_rate_len
## earlybf 1.12524208092485 1.12524208092486 1.12592204419889 1.1259220441989
##       0                1                2               10              24
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.12654444444444 1.12654444444445 1.1278102247191 1.1283614516129
##       0                7                1              20              15
##       1                0                0               0               0
##        y_rate_len
## earlybf 1.12886721649485 1.12976314285714 1.13023803278688
##       0                1                6               22
##       1                0                0                0
##        y_rate_len
## earlybf 1.13023803278689 1.13067314136126 1.13178418604651
##       0                9                8                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.13217716666666 1.13217716666667 1.13253670212766 1.1328668877551
##       0                3               23               11               1
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.1341820338983 1.13418203389831 1.1344607027027 1.13471626943005
##       0               3                6              15                3
##       1               0                0               0                0
##        y_rate_len
## earlybf 1.13644813186813 1.13662405263158 1.13840280701754
##       0               31                8                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.13850217877095 1.13859304812834 1.14062625 1.14263793650794
##       0               14               18         31               11
##       1                0                0          0                0
##        y_rate_len
## earlybf 1.14272685082873 1.14282398843931 1.14454592783505
##       0               35                5                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.14471451612903 1.14489825842697 1.14509929411765
##       0               15                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.14659811518325 1.14685918032787 1.14714411428571
##       0                2               27                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.14714411428572 1.14871579787234 1.14907533333333
##       0                1                5               23
##       1                0                0                0
##        y_rate_len
## earlybf 1.14907533333334 1.15047621761658 1.15090216216216
##       0                1                1               26
##       1                0                0                0
##        y_rate_len
## earlybf 1.15136661016949 1.15263284210526 1.1531606043956 1.15316060439561
##       0                9               11              20               16
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.15373689655172 1.15373689655173 1.1548586631016 1.15485866310161
##       0                1                2               4                2
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.15549474860335 1.15619035087719 1.15646828125 1.15715706521739
##       0               15                1             2               31
##       1                0                0             0                0
##        y_rate_len
## earlybf 1.15790846590909 1.15873142857143 1.15953165745856
##       0                5                4               26
##       1                0                0                0
##        y_rate_len
## earlybf 1.16022463917526 1.16106758064516 1.16198629213483
##       0                1               13                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.16252308900524 1.16348032786885 1.16452508571429
##       0                4               34                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.16489489361702 1.1659735 1.16623616580311 1.16715244186047
##       0               14        23                7                1
##       1                0         0                0                0
##        y_rate_len
## earlybf 1.16734362162162 1.16855118644068 1.16864163157895
##       0               19                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.16987307692308 1.17112427807487 1.17121775862069 1.1723103125
##       0               30                8                3            4
##       1                0                0                0            0
##        y_rate_len
## earlybf 1.17248731843575 1.17248731843576 1.17368788043478
##       0                9                9               21
##       1                0                0                0
##        y_rate_len
## earlybf 1.17397789473684 1.17482492063492 1.17519068181818
##       0                1               14                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.17590335051546 1.1763364640884 1.17742064516129 1.17798780346821
##       0                2              34                9                2
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.17844806282722 1.17844806282723 1.1790743258427 1.18010147540984
##       0                2                6               8               32
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.1810739893617 1.18190605714286 1.18199611398964 1.18287166666667
##       0              10                4                7               19
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.18378508108108 1.18465042105263 1.18483656976744
##       0               14                9                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.18547138461538 1.18573576271186 1.18573576271187
##       0                1                7                6
##       1                0                0                0
##        y_rate_len
## earlybf 1.18658554945055 1.18738989304813 1.18815234375 1.18869862068966
##       0               29               12             3                1
##       1                0                0             0                0
##        y_rate_len
## earlybf 1.18947988826816 1.19021869565217 1.19091841269841
##       0               21               22                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.19158206185567 1.19176543859649 1.19247289772727
##       0                1                1                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.19314127071823 1.19377370967742 1.19437303664921
##       0               35                9                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.19616235955056 1.19672262295082 1.19725308510638
##       0                7               15               15
##       1                0                0                0
##        y_rate_len
## earlybf 1.19775606217616 1.19775606217617 1.19928702857143
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.19976983333333 1.20022654054054 1.20065921052631
##       0               19               13                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.20065921052632 1.20106969230769 1.20252069767442
##       0               10                2                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.20292033898305 1.20329802197802 1.20365550802139 1.203994375
##       0                5               29                9           3
##       1                0                0                0           0
##        y_rate_len
## earlybf 1.20617948275862 1.20647245810056 1.20674951086956
##       0                1               14               16
##       1                0                0                0
##        y_rate_len
## earlybf 1.20674951086957 1.2070119047619 1.20975511363636 1.20994607734806
##       0                7               8                3                3
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.20994607734807 1.21012677419355 1.2102980104712 1.21029801047121
##       0               26               10               4                2
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.21315161849711 1.21325039325843 1.2133437704918 1.21334377049181
##       0                1               18              25                3
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.21343218085106 1.21351601036269 1.216668 1.21983640625
##       0                7                2       37             3
##       1                0                0        0             0
##        y_rate_len
## earlybf 1.21992112299465 1.22001049450549 1.2200104945055 1.22010491525424
##       0               16               19               8                4
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.22293948453608 1.2231053968254 1.22328032608696 1.22346502793296
##       0                1               9               19               17
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.22366034482759 1.22622298429319 1.22647983870968 1.2267508839779
##       0                2                2               12              26
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.22703732954545 1.22703732954546 1.22734052631579
##       0                5                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.22961127659574 1.22961127659575 1.22996491803279
##       0                1                1               32
##       1                0                0                0
##        y_rate_len
## earlybf 1.23033842696629 1.23073352601156 1.23267678947368
##       0               10                2                8
##       1                0                0                0
##        y_rate_len
## earlybf 1.23310945945946 1.23356616666667 1.23404897142857 1.2356784375
##       0               12               24                5            6
##       1                0                0                0            0
##        y_rate_len
## earlybf 1.23618673796791 1.23618673796792 1.23672296703297
##       0                3                2               19
##       1                0                0                0
##        y_rate_len
## earlybf 1.23728949152542 1.23788895348837 1.23861819587629
##       0                8                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.23919888888889 1.23981114130435 1.24045759776536
##       0               10               22               13
##       1                0                0                0
##        y_rate_len
## earlybf 1.24114120689655 1.24214795811518 1.24283290322581
##       0                4                1               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.24355569060773 1.24355569060774 1.24431954545454
##       0               19                7                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.24431954545455 1.24503590673575 1.24512807017544
##       0                6                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.24579037234042 1.24579037234043 1.24658606557377
##       0                2                3               25
##       1                0                0                0
##        y_rate_len
## earlybf 1.24742646067416 1.24786461538462 1.24831543352601
##       0               12                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.24868557894737 1.24955091891892 1.25046433333333
##       0                3               10               16
##       1                0                0                0
##        y_rate_len
## earlybf 1.25142994285714 1.25152046875 1.25245235294118 1.25343543956044
##       0                8             6               10               24
##       1                0             0                0                0
##        y_rate_len
## earlybf 1.25429690721649 1.25447406779661 1.25529238095238
##       0                2                5                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.25557308139535 1.25634195652174 1.25745016759776
##       0                1               12               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.25745016759777 1.25807293193717 1.25862206896552
##       0                9                5                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.25918596774193 1.25918596774194 1.26036049723757
##       0                4               10               29
##       1                0                0                0
##        y_rate_len
## earlybf 1.26079585492228 1.26160176136364 1.26196946808511
##       0                3                5                8
##       1                0                0                0
##        y_rate_len
## earlybf 1.26320721311475 1.26320721311476 1.26451449438202
##       0               14                5               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.26469436842105 1.26599237837838 1.2673625 1.26871796791444
##       0                4               14        24               11
##       1                0                0         0                0
##        y_rate_len
## earlybf 1.26881091428571 1.27014791208791 1.27138587301587 1.2716586440678
##       0                2               30                9               7
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.27287277173913 1.27325720930232 1.27399790575916
##       0               19                1                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.27444273743017 1.27553903225806 1.27553903225807
##       0               15                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.27610293103448 1.27655580310881 1.2771653038674 1.27814856382979
##       0                2                2              26                7
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.27888397727273 1.27982836065574 1.28070315789474
##       0                7               21                6
##       1                0                0                0
##        y_rate_len
## earlybf 1.28160252808989 1.28243383783784 1.28347924855491
##       0                9               14                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.28426066666667 1.2849835828877 1.28619188571428 1.28619188571429
##       0               15               8                1                3
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.28686038461538 1.28747936507936 1.28747936507937
##       0               21                1                8
##       1                0                0                0
##        y_rate_len
## earlybf 1.28884322033898 1.28940358695652 1.28992287958115
##       0                8               14                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.29143530726257 1.29189209677419 1.29231575129534
##       0                7                9                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.29358379310345 1.29397011049724 1.29432765957447
##       0                1               17                8
##       1                0                0                0
##        y_rate_len
## earlybf 1.29616619318182 1.29644950819672 1.29671194736842
##       0                2               12                9
##       1                0                0                0
##        y_rate_len
## earlybf 1.29849070175439 1.29869056179775 1.2988752972973 1.2990465625
##       0                1                9              13            1
##       1                0                0               0            0
##        y_rate_len
## earlybf 1.30115883333333 1.30124919786096 1.30133304123711
##       0               14               10                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.30357285714286 1.30584785340314 1.30593440217391
##       0               31                2               22
##       1                0                0                0
##        y_rate_len
## earlybf 1.30602779661017 1.30807569948186 1.30824516129032
##       0                6                1                9
##       1                0                0                0
##        y_rate_len
## earlybf 1.30842787709497 1.30862546511628 1.31025784615385
##       0               12                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.31050675531915 1.31077491712707 1.31106465517241 1.3127207368421
##       0                5               14                1               2
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.31272073684211 1.3130706557377 1.31307065573771 1.31344840909091
##       0                1               8                6                6
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.31488859375 1.31531675675676 1.31577859550562 1.31627824561403
##       0             2               15                4                1
##       1             0                0                0                0
##        y_rate_len
## earlybf 1.31701175257732 1.31751481283422 1.31751481283423 1.318057
##       0                1                4                1       10
##       1                0                0                0        0
##        y_rate_len
## earlybf 1.31966634920635 1.32028532967033 1.32095382857143
##       0                5               24                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.32177282722513 1.3224652173913 1.32246521739131 1.32321237288135
##       0                3              14                2                5
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.32321237288136 1.32383564766839 1.32459822580645
##       0                3                1                8
##       1                0                0                0
##        y_rate_len
## earlybf 1.32542044692737 1.32585615384615 1.32668585106383 1.3275797237569
##       0                8                1                6               3
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.32757972375691 1.32854551724138 1.32872952631579
##       0               20                3                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.32969180327869 1.330730625 1.33175821621622 1.33269046391753
##       0               18           5               17                1
##       1                0           0                0                0
##        y_rate_len
## earlybf 1.33286662921348 1.33378042780748 1.33378042780749
##       0                6                1                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.33406578947368 1.33495516666667 1.33575984126984
##       0                2               17                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.33622497109827 1.3369978021978 1.3383348 1.33899603260869
##       0                1              28         2               10
##       1                0               0         0                0
##        y_rate_len
## earlybf 1.3389960326087 1.33959559585492 1.34039694915254 1.34095129032258
##       0               9                3                7                7
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.34241301675977 1.34241301675978 1.34286494680851
##       0                3                7                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.34399372093023 1.34438453038674 1.34473831578947
##       0                1               17                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.34631295081967 1.34657265625 1.34801284090909 1.34819967567567
##       0               12             3                5                2
##       1                0             0                0                0
##        y_rate_len
## earlybf 1.34819967567568 1.34995466292135 1.35004604278075
##       0                8                5                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.35185333333333 1.35362277486911 1.35371027472527
##       0               22                3               23
##       1                0                0                0
##        y_rate_len
## earlybf 1.35371027472528 1.35380687861272 1.35535554404145
##       0                5                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.35552684782609 1.35730435483871 1.35758152542373
##       0               11               13                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.35904404255319 1.35940558659218 1.36074710526316
##       0                9               11                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.36118933701657 1.36118933701658 1.36167784883721 1.3624146875
##       0               11                3                2            1
##       1                0                0                0            0
##        y_rate_len
## earlybf 1.36293409836066 1.36350724137931 1.36464113513513
##       0               11                4                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.36529505681818 1.36631165775401 1.36704269662921
##       0                5                8                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.36794682539683 1.3687515 1.3695477486911 1.36964087719298
##       0                3        15               3                1
##       1                0         0               0                0
##        y_rate_len
## earlybf 1.37042274725275 1.37138878612717 1.37205766304348
##       0               13                1               13
##       1                0                0                0
##        y_rate_len
## earlybf 1.37309674285714 1.37365741935484 1.37476610169491
##       0                3                7                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.37476610169492 1.37522313829787 1.37639815642458
##       0                6                4                6
##       1                0                0                0
##        y_rate_len
## earlybf 1.37675589473684 1.37799414364641 1.37825671875 1.37955524590164
##       0                1               14             2               12
##       1                0                0             0                0
##        y_rate_len
## earlybf 1.38098810344828 1.38108259459459 1.3810825945946 1.38257727272727
##       0                2                7               6                7
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.38404031746032 1.38413073033708 1.38547272251309
##       0                5                5                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.38564966666667 1.38713521978022 1.38858847826087
##       0                7               10               12
##       1                0                0                0
##        y_rate_len
## earlybf 1.38897069364162 1.39001048387097 1.39047771428571
##       0                1                8                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.39140223404255 1.3919506779661 1.39276468421053 1.39339072625698
##       0                4               1                6                4
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.39409875 1.39479895027624 1.39479895027625 1.39617639344262
##       0          1               14                2               15
##       1          0                0                0                0
##        y_rate_len
## earlybf 1.39704610465116 1.39752405405405 1.39846896551724
##       0                2               10                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.39884288770053 1.39884288770054 1.39985948863636
##       0                2                2                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.39985948863637 1.40013380952381 1.40121876404494
##       0                3                2                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.40139769633508 1.40254783333333 1.40254783333334
##       0                3                9                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.40263538860103 1.40384769230769 1.40511929347826 1.4063635483871
##       0                1               16               10               7
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.40758132978723 1.40877347368421 1.40913525423729 1.40994078125
##       0                5                2                2             1
##       1                0                0                0             0
##        y_rate_len
## earlybf 1.41038329608938 1.41038329608939 1.41160375690608
##       0                5                2               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.41279754098361 1.41396551351351 1.41510850267379 1.4151085026738
##       0               11               12                1               2
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.41594982758621 1.4162273015873 1.41714170454545 1.41714170454546
##       0                1               6                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.41732267015707 1.41839533678756 1.419446 1.42056016483516
##       0                2                1        9                7
##       1                0                0        0                0
##        y_rate_len
## earlybf 1.42165010869565 1.42271661290322 1.42271661290323
##       0               10                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.42376042553191 1.42376042553192 1.42413450867052 1.4247822631579
##       0                5                1                2               2
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.4257828125 1.42631983050847 1.42631983050848 1.42737586592179
##       0            1                1                1                3
##       1            0                0                0                0
##        y_rate_len
## earlybf 1.42840856353591 1.42941868852459 1.43040697297297
##       0               15               11               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.43137411764706 1.43232079365079 1.43241436046512
##       0                1                8                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.43324764397906 1.43415528497409 1.43442392045455
##       0                3                2                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.43539483146067 1.43539483146068 1.43634416666667
##       0                2                4                9
##       1                0                0                0
##        y_rate_len
## earlybf 1.43727263736264 1.43818092391304 1.43906967741935
##       0               12                7                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.43906967741936 1.43993952127659 1.4399395212766 1.44079105263158
##       0                1                1               4                5
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.44171641618497 1.44244144329897 1.44350440677966
##       0                2                2                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.44436843575419 1.44521337016574 1.44521337016575
##       0                6                2                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.44603983606557 1.44684843243243 1.44763973262032
##       0               12                7                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.44841428571429 1.44917261780105 1.44991523316062
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.45091155172414 1.45324233333333 1.45398510989011
##       0                1                8               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.45471173913043 1.45471173913044 1.45542274193548
##       0                6                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.45611861702128 1.45679984210526 1.457466875 1.45812015463918
##       0                5                2           1                1
##       1                0                0           0                0
##        y_rate_len
## earlybf 1.4600016 1.46068898305085 1.46136100558659 1.46201817679558
##       0         4                2                5                9
##       1         0                0                0                0
##        y_rate_len
## earlybf 1.46266098360656 1.46328989189189 1.46390534759358
##       0               14                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.46567518134715 1.46778261627907 1.46898835227273 1.4695708988764
##       0                1                1                2               2
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.46957089887641 1.4701405 1.47069758241758 1.47124255434782
##       0                3         5                9                5
##       1                0         0                0                0
##        y_rate_len
## earlybf 1.47124255434783 1.47177580645161 1.47229771276596
##       0                4                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.47280863157895 1.47330890625 1.47688023121387 1.47738257142857
##       0                1             1                1                2
##       1                0             0                0                0
##        y_rate_len
## earlybf 1.47835357541899 1.47882298342541 1.47928213114754
##       0                5                3               12
##       1                0                0                0
##        y_rate_len
## earlybf 1.47973135135135 1.48017096256685 1.48060126984127
##       0                5                3                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.48102256544503 1.48627056818182 1.48665893258427
##       0                1                2                5
##       1                0                0                0
##        y_rate_len
## earlybf 1.48703866666667 1.48741005494505 1.48741005494506
##       0                6                4                7
##       1                0                0                0
##        y_rate_len
## earlybf 1.48777336956522 1.48812887096774 1.48847680851064
##       0               11                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.48881742105263 1.4891509375 1.48947757731959 1.49476354285714
##       0                1            2                1                2
##       1                0            0                0                0
##        y_rate_len
## earlybf 1.49505813559322 1.4953461452514 1.49562779005525 1.49590327868852
##       0                3               4                8               12
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.49590327868853 1.49617281081081 1.49643657754011
##       0                1                3                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.49669476190476 1.50294282352941 1.50355278409091
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.50374696629213 1.50374696629214 1.50393683333333
##       0                2                1                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.50412252747253 1.50430418478261 1.50448193548387
##       0               10                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.50465590425532 1.50482621052631 1.51214451428571
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.51224271186441 1.5123387150838 1.51243259668508 1.51252442622951
##       0                1               4               10                5
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.51261427027027 1.51270219251337 1.51278825396825
##       0                1                3                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.51287251308901 1.520835 1.52855497461929 1.52879748691099
##       0                2       38                1                1
##       1                0        0                0                0
##        y_rate_len
## earlybf 1.52896780748663 1.52905572972973 1.52914557377049
##       0                3                2               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.52923740331492 1.5293312849162 1.52942728813559 1.53684378947368
##       0                8               3                1                2
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.53718806451613 1.53736581521739 1.53754747252747
##       0                2                3               10
##       1                0                0                0
##        y_rate_len
## earlybf 1.53773316666667 1.53792303370786 1.53792303370787
##       0                6                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.53811721590909 1.54497523809524 1.54523342245989
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.54549718918919 1.54576672131147 1.54576672131148
##       0                6                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.54604220994475 1.5463238547486 1.54661186440678 1.54690645714286
##       0                3               5                5                2
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.55187244897959 1.5525190625 1.55319319148936 1.55354112903226
##       0                1            1                1                2
##       1                0            0                0                0
##        y_rate_len
## earlybf 1.55389663043478 1.55425994505494 1.55425994505495
##       0                4                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.55463133333333 1.55501106741573 1.56106873015873
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.56149903743315 1.56149903743316 1.56193864864865
##       0                2                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.56238786885246 1.56284701657459 1.563316424581 1.56331642458101
##       0                6                6              1                1
##       1                0                0              0                0
##        y_rate_len
## earlybf 1.56379644067796 1.56428742857143 1.56478976878613
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.56530385964912 1.56937228723404 1.56989419354839
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.57042744565217 1.57097241758242 1.5715295 1.5720991011236
##       0                4                6         3               2
##       1                0                0         0               0
##        y_rate_len
## earlybf 1.57657240837696 1.57716222222222 1.57776465240642
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.57838010810811 1.57900901639344 1.57965182320442
##       0                1                4                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.58098101694915 1.58354984536082 1.58487015789474
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.58555138297872 1.58624725806452 1.58695826086956
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.58768489010989 1.58842766666667 1.58918713483146
##       0                6                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.59482156756757 1.59563016393443 1.59645662983425
##       0                4                8                6
##       1                0                0                0
##        y_rate_len
## earlybf 1.59730156424581 1.59816559322034 1.60004515625 1.60087894736842
##       0                2                3             1                2
##       1                0                0             0                0
##        y_rate_len
## earlybf 1.6017304787234 1.60173047872341 1.60260032258064 1.60260032258065
##       0               1                2                2                1
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.60348907608695 1.60348907608696 1.60439736263736
##       0                1                6                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.60532583333333 1.60627516853932 1.60627516853933
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.60662569230769 1.60934920634921 1.61029588235294
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.61126302702703 1.61225131147541 1.61326143646409
##       0                1                5                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.61688773684211 1.61753549132948 1.61790957446808
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.62001989130435 1.62110983516484 1.622224 1.62336320224719
##       0                3                1        2                2
##       1                0                0        0                0
##        y_rate_len
## earlybf 1.62434732984293 1.62452829545454 1.62452829545455 1.6254426984127
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.62770448648649 1.62887245901639 1.63006624309392
##       0                3                2                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.63128670391061 1.63253474576271 1.63381131428572
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.63408867021276 1.63408867021277 1.63511739884393 1.6353064516129
##       0                1                2                1               2
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.63782230769231 1.63912216666667 1.64027230366492
##       0                5                3                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.64045123595506 1.64181051136364 1.64282711229947
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.64414594594595 1.64549360655738 1.64687104972376
##       0                2                1                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.64827927374302 1.64890531578947 1.6497193220339 1.65119228571429
##       0                1                1               2                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.65165951612903 1.65308152173913 1.65453478021978
##       0                2                2                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.65602033333333 1.65619727748691 1.65762968253968
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.65909272727273 1.6605874054054 1.66058740540541 1.66211475409836
##       0                2               1                1                2
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.66341328125 1.66367585635359 1.66961233695652 1.67055450777202
##       0             2                3                2                1
##       1             0                0                0                0
##        y_rate_len
## earlybf 1.67124725274725 1.6721222513089 1.6729185 1.67372317460317
##       0                4               1         4                2
##       1                0               0         0                0
##        y_rate_len
## earlybf 1.67372317460318 1.67702886486487 1.67816275862069
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.67873590163934 1.67873590163935 1.68048066298343
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.68092289473684 1.68408847457627 1.68595422857143
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.68614315217391 1.68786312138728 1.68795972527472
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.68804722513089 1.68981666666667 1.69171533707865
##       0                2                2                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.69347032432432 1.69535704918033 1.69728546961326
##       0                1                1                4
##       1                0                0                0
##        y_rate_len
## earlybf 1.70071870967742 1.7026739673913 1.7046721978022 1.70591015873016
##       0                1               1               2                1
##       1                0               0               0                0
##        y_rate_len
## earlybf 1.70760421052632 1.70788957219251 1.70880337078652
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.70991178378378 1.71197819672131 1.71409027624309
##       0                2                3                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.71707177419355 1.71845762711864 1.71920478260869
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.71989717277487 1.72071617142857 1.72138467032967 1.723613
##       0                1                1                4        2
##       1                0                0                0        0
##        y_rate_len
## earlybf 1.72589140449438 1.72635324324324 1.72822159090909
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.73060534482758 1.73089508287293 1.73324212290503
##       0                1                1                3
##       1                0                0                0
##        y_rate_len
## earlybf 1.73564220338983 1.73573559782609 1.73809714285714
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.74042080213904 1.74060884393064 1.74522049180328
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.74769988950276 1.75480961538462 1.7566864171123 1.75923616216216
##       0                1                2               2                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.76184163934426 1.7645046961326 1.76841279069767 1.76879722826087
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 1.77567762162162 1.77846278688525 1.78130950276243
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.78248403225806 1.78248403225807 1.78304793103448
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.78359706806283 1.78532804347826 1.78921764705882
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.79024005714286 1.79211908108108 1.79298442105263
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.79587962765957 1.79811430939226 1.79883709677419
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.80185885869565 1.80378104651163 1.80494703296703
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.80856054054054 1.81093647398844 1.81463267045455 1.8149191160221
##       0                2                1                1               1
##       1                0                0                0               0
##        y_rate_len
## earlybf 1.81838967391304 1.82165950549451 1.82823781914894
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.83172392265193 1.83837197802198 1.84494737704918
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## earlybf 1.85075158730159 1.85219011173184 1.8605960106383 1.86156852459016
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 1.8653335359116 1.86684507936508 1.87432637837838 1.90316782122905
##       0               2                1                1                1
##       1               0                0                0                0
##        y_rate_len
## earlybf 1.90541396551724 1.91143196721311 1.91190685714286
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.92467254237288 1.93255276243094 1.94467426229508 1.94856984375
##       0                1                1                1             1
##       1                0                0                0             0
##        y_rate_len
## earlybf 1.95063619565217 1.95289039772727 1.95653367567568
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 1.96236774193548 1.97207175824176 1.98062232558139
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.01638797752809 2.02229951351351 2.03329027173913
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.03338160220994 2.03347601123595 2.04912505263158
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.05018640883978 2.05518243243243 2.05563412087912
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.06274172413793 2.08806535135135 2.10843034090909
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.13738972972973 2.16579643979058 2.18462486187845
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.29345171122995 2.30632120879121 2.33848822580645
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.35329205263158 2.4030873480663 2.40467104712042 2.57495873015873
##       0                2               1                1                1
##       1                0               0                0                0
##        y_rate_len
## earlybf 2.60474502762431 2.60483441489362 2.64057065934066
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## earlybf 2.65728313186813 2.67730328125 2.68876906077348 2.89682857142857
##       0                1             1                1                1
##       1                0             0                0                0
##        y_rate_len
## earlybf 2.94355161290323 3.08995047619048 3.0920844198895 3.17249451612903
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## earlybf 3.31818545454545 3.61620766666667 4.36344282722513
##       0                1                1                1
##       1                0                0                0
```




# Results Detail

## Results Plots
![](/tmp/6b9bcc1f-bb06-463c-bed0-a608e12fe7b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b9bcc1f-bb06-463c-bed0-a608e12fe7b1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.5535976   3.4472439   3.6599512
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.5136998   3.4391551   3.5882445
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                4.0930244   3.9548379   4.2312109
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                3.9960126   3.8519694   4.1400559
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.5851627   3.4607693   3.7095561
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.5705126   3.4694889   3.6715363
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.7567775   3.6661318   3.8474232
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.5556255   3.4600235   3.6512274
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.3906621   3.2603018   3.5210225
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.2907963   3.2189668   3.3626258
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.2950847   3.1891913   3.4009781
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.4009453   3.2996375   3.5022532
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.3325440   3.0960290   3.5690590
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.5059172   3.4253286   3.5865058
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                2.6670082   2.5750961   2.7589204
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                3.1902411   3.1063574   3.2741248
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.6031693   3.5746782   3.6316604
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.5076098   3.4438493   3.5713703
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                3.3870142   3.2973143   3.4767142
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                3.3079080   3.2675783   3.3482377
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                3.3395705   3.3094252   3.3697159
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                3.4611027   3.4330356   3.4891698
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.7197234   3.7093616   3.7300852
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                2.5939426   2.5707393   2.6171459
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                3.6276422   3.5725237   3.6827607
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.6422548   3.6048247   3.6796848
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9689681   1.8999083   2.0380278
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9605851   1.8959455   2.0252247
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1011152   1.9924372   2.2097932
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.2033645   2.0888522   2.3178768
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.8690067   1.7596062   1.9784073
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.8937921   1.8227580   1.9648261
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.9859065   1.9190504   2.0527627
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.9389171   1.8713641   2.0064701
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0931947   1.9824981   2.2038913
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.9927309   1.9148274   2.0706345
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.8697307   1.7641554   1.9753060
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.8526965   1.7512710   1.9541220
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9202411   1.7562575   2.0842246
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8114196   1.7372997   1.8855395
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                2.0343181   1.9679046   2.1007316
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                2.0952018   1.9604758   2.2299278
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.9432353   1.8996907   1.9867798
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.3040048   1.2181334   1.3898762
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.9560188   1.8788651   2.0331726
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.9746287   1.9370651   2.0121922
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.6975915   1.6535736   1.7416094
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7726894   1.7075591   1.8378196
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.9780223   1.9489889   2.0070556
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.9657201   1.9395058   1.9919345
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9205698   1.9101077   1.9310320
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.3450389   1.3132197   1.3768580
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.8527317   1.8091783   1.8962851
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.8940202   1.8585737   1.9294666
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.0506145   1.0149381   1.0862909
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.0617119   1.0271944   1.0962294
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.3760782   1.3096837   1.4424727
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3984606   1.3348097   1.4621116
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.1488057   1.1050181   1.1925934
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                1.1020157   1.0689253   1.1351062
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.2664828   1.2293312   1.3036345
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.2974373   1.2643617   1.3305130
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.1899607   1.1252449   1.2546766
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.2174140   1.1799974   1.2548307
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.1977858   1.1537069   1.2418647
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.1870933   1.1467669   1.2274196
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9987572   0.9289849   1.0685296
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0029259   0.9643036   1.0415483
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0987361   1.0867439   1.1107282
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.9215028   0.8960434   0.9469623
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.2946477   1.2625816   1.3267137
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.2300792   1.2120705   1.2480880
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1617141   1.1388820   1.1845461
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.1446626   1.1140590   1.1752661
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.1880406   1.1720048   1.2040763
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.1896312   1.1748213   1.2044411
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.2061708   1.1911434   1.2211983
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.1995448   1.1869843   1.2121052
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8553460   0.8299395   0.8807524
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8416242   0.8212009   0.8620475
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9672611   0.9336139   1.0009083
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0005712   0.9600767   1.0410657
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8774721   0.8547197   0.9002245
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8826895   0.8618804   0.9034987
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8217259   0.8004500   0.8430018
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.7980361   0.7754877   0.8205845
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8828150   0.8459983   0.9196318
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8334083   0.8098024   0.8570141
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8355276   0.8063755   0.8646797
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8510302   0.8239302   0.8781302
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6404805   0.6031361   0.6778250
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7689962   0.7441062   0.7938862
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.8733582   0.8579283   0.8887881
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8693470   0.8568936   0.8818003
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8353850   0.8167937   0.8539762
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8976288   0.8790889   0.9161687
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.9344271   0.8952109   0.9736433
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.8378274   0.8021793   0.8734755
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8499898   0.8420116   0.8579680
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8447656   0.8385282   0.8510029


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
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.2032186   1.1928228   1.2136143
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
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8491886   0.8437514   0.8546258


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0398978   -0.1687124    0.0889168
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0970117   -0.2937616    0.0997381
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0146501   -0.1742544    0.1449542
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.2011520   -0.3259205   -0.0763836
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0998658   -0.2486390    0.0489074
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.1058606   -0.0180413    0.2297625
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1733732   -0.0764945    0.4232409
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.5232329    0.4096464    0.6368194
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0955595   -0.1573182   -0.0338007
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0791062   -0.1763756    0.0181631
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.1215322    0.0811107    0.1619537
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -1.1257808   -1.1511157   -1.1004459
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0146126   -0.0519804    0.0812056
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0083829   -0.1023596    0.0855937
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.1022493   -0.0556240    0.2601226
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0247853   -0.1056537    0.1552243
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0469895   -0.1260534    0.0320745
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.1004638   -0.2333469    0.0324193
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0170342   -0.1640874    0.1300190
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1088215   -0.2885018    0.0708589
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0608837   -0.0881168    0.2098843
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.6392305   -0.7427321   -0.5357289
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0186098   -0.0653015    0.1025211
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0750979   -0.0025398    0.1527356
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0123022   -0.0503137    0.0257094
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.5755310   -0.6084748   -0.5425872
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0412885   -0.0126067    0.0951836
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0110973   -0.0398147    0.0620093
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0223824   -0.0695859    0.1143508
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0467900   -0.0986550    0.0050750
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0309545   -0.0198908    0.0817998
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.0274533   -0.0466634    0.1015700
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0106925   -0.0395703    0.0181853
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0041687   -0.0676276    0.0759649
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1772332   -0.1969397   -0.1575268
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0645684   -0.0988470   -0.0302899
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0170515   -0.0535766    0.0194736
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0015906   -0.0197125    0.0228938
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0066261   -0.0254647    0.0122125
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0137218   -0.0463193    0.0188757
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0333100   -0.0102620    0.0768821
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                  0.0052174   -0.0217934    0.0322283
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0236898   -0.0560931    0.0087136
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0494068   -0.0918897   -0.0069238
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0155026   -0.0235779    0.0545831
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1285157    0.0834821    0.1735493
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0040112   -0.0231651    0.0151426
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0622438    0.0375360    0.0869517
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0965997   -0.1579261   -0.0352732
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0052242   -0.0146698    0.0042213
