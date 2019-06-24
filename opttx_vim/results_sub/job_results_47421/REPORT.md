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

**Intervention Variable:** exclfeed6

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
* month
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
* delta_month
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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                53     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               166     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               157     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     187
Birth       ki0047075b-MAL-ED          INDIA                          0               182     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               154     165
Birth       ki0047075b-MAL-ED          PERU                           1                10     249
Birth       ki0047075b-MAL-ED          PERU                           0               239     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1               451    1336
Birth       ki1101329-Keneba           GAMBIA                         0               885    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12371   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3049   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               519     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               114     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               178     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               193     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 6     232
6 months    ki0047075b-MAL-ED          INDIA                          0               226     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                15     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     235
6 months    ki0047075b-MAL-ED          PERU                           1                11     269
6 months    ki0047075b-MAL-ED          PERU                           0               258     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               242     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               243     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               446     582
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13162   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3493   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3318    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               942    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               156     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 5     224
24 months   ki0047075b-MAL-ED          INDIA                          0               219     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                15     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               212     227
24 months   ki0047075b-MAL-ED          PERU                           1                 8     198
24 months   ki0047075b-MAL-ED          PERU                           0               190     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               434     578
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     479
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6641    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1872    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3262    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               897    4159


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a3aee941-952b-4a9d-8e0d-fdaec038654a/0ea00d05-e62c-4f71-b122-b74c4c1a56d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8304544   -1.0913072   -0.5696017
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.5893934    0.1914819    0.9873050
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.5240151   -1.2730424    0.2250121
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.3908431   -0.7084951   -0.0731911
Birth       ki0047075b-MAL-ED         PERU         optimal              observed           0.1694542   -0.3911798    0.7300882
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           1.6203134    1.4746956    1.7659311
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7149885   -0.7363288   -0.6936483
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3367892   -0.4515973   -0.2219811
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.2246756   -0.4716037    0.0222525
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.3879345    0.8381644    1.9377046
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.8230874   -0.9516794   -0.6944954
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.1460442   -0.4399598    0.1478714
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           1.0417496    0.6273379    1.4561613
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.4774173   -0.6162559   -0.3385787
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7024985   -1.0772887   -0.3277082
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0017583   -0.1650555    0.1685721
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0242778   -0.1213718    0.0728162
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.5606125   -0.6948726   -0.4263523
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.5729083    0.3338721    0.8119444
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.5626157   -0.5840949   -0.5411365
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3429236   -0.3901540   -0.2956932
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.7758094   -0.9159896   -0.6356292
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.7598758    0.1834995    1.3362521
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.9613720   -1.2286951   -0.6940488
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.3248094   -0.8530065    0.2033876
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.0504232   -0.0729162    0.1737626
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7888822   -0.9433972   -0.6343672
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.7491475   -0.8325413   -0.6657537
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0346198   -1.1470056   -0.9222340
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.0601277   -0.2223815    0.1021261
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2574345   -1.3002701   -1.2145989
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.2060081   -1.2629903   -1.1490259


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED         INDIA        observed             observed          -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED         NEPAL        observed             observed          -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.0430924   -0.1600210    0.0738362
Birth       ki1101329-Keneba          GAMBIA       observed             observed           1.6904416    1.6057966    1.7750867
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed           0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED         PERU         observed             observed           1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE              PAKISTAN     observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.1997850   -0.2531586   -0.1464114
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5          MALAWI       observed             observed           0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED         PERU         observed             observed           0.1430051    0.0254144    0.2605957
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.2337581   -1.2679680   -1.1995482


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1620570   -0.3987618    0.0746478
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1820720   -0.5670606    0.2029165
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.5195677   -1.2646526    0.2255171
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.5317629   -0.8590098   -0.2045161
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.2125466   -0.7654476    0.3403544
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0701282   -0.0430551    0.1833115
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0084175   -0.0164797   -0.0003552
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0370971   -0.1293806    0.0551865
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0781827   -0.1151070    0.2714723
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.4162120   -0.9501795    0.1177555
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed           0.1202138    0.0488384    0.1915892
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.2627960   -0.0280755    0.5536675
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           0.0136965   -0.3960651    0.4234581
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.2438593   -0.3422793   -0.1454393
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0676124   -0.3469319    0.4821567
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2101289   -0.3583401   -0.0619177
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1755072   -0.2553936   -0.0956208
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0408924   -0.1380656    0.0562808
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1801509   -0.3835838    0.0232820
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0305644   -0.0403104   -0.0208184
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0542712   -0.0766764   -0.0318661
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0557695   -0.1302083    0.0186693
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3132486   -0.8534833    0.2269861
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed           0.0222872   -0.2137443    0.2583186
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0454989   -0.5573137    0.4663158
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.0925819    0.0342510    0.1509127
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0990590   -0.2339446    0.0358267
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0540854   -0.1215766    0.0134058
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.1023322   -0.1789928   -0.0256715
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.0169919   -0.0811303    0.0471465
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0416974   -0.0776286   -0.0057662
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0277500   -0.0711551    0.0156552
