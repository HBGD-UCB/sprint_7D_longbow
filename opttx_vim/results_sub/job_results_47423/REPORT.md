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

**Intervention Variable:** predexfd6

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

agecat      studyid                    country                        predexfd6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               114     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               105     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               142     168
Birth       ki0047075b-MAL-ED          INDIA                          1                15     187
Birth       ki0047075b-MAL-ED          INDIA                          0               172     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                22     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               143     165
Birth       ki0047075b-MAL-ED          PERU                           1               104     249
Birth       ki0047075b-MAL-ED          PERU                           0               145     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12395   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3025   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               521     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               112     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               123     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               112     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               174     209
6 months    ki0047075b-MAL-ED          INDIA                          1                18     232
6 months    ki0047075b-MAL-ED          INDIA                          0               214     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                29     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               206     235
6 months    ki0047075b-MAL-ED          PERU                           1               113     269
6 months    ki0047075b-MAL-ED          PERU                           0               156     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               239     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               242     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13186   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3469   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3331    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               929    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                97     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     169
24 months   ki0047075b-MAL-ED          INDIA                          1                17     224
24 months   ki0047075b-MAL-ED          INDIA                          0               207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                28     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               199     227
24 months   ki0047075b-MAL-ED          PERU                           1                84     198
24 months   ki0047075b-MAL-ED          PERU                           0               114     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               210     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6653    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1860    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3275    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               884    4159


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
![](/tmp/1bf19d5a-d810-42d0-917e-2a846c1ecbd5/0b0d9b59-8204-4842-a43c-e7603b9c3133/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.9055127   -1.0796535   -0.7313719
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2011931   -0.1133601    0.5157462
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.5977498   -1.0989896   -0.0965100
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.4584137   -0.8380166   -0.0788107
Birth       ki0047075b-MAL-ED         PERU         optimal              observed           0.0688709   -0.0972722    0.2350140
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           1.7346265    1.5942789    1.8749742
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7158175   -0.7370906   -0.6945443
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3871227   -0.4830489   -0.2911964
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1787499   -0.3703391    0.0128394
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.4460015    1.0493210    1.8426821
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.4039820   -0.8111492    0.0031853
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.3585476   -0.0939157    0.8110108
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           1.2139594    1.0435153    1.3844036
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.4784993   -0.6172221   -0.3397765
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7024985   -1.0772887   -0.3277082
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0033159   -0.1649179    0.1715497
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0184396   -0.1156612    0.0787821
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.5286057   -0.6489629   -0.4082486
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.6417418    0.3946865    0.8887970
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.5638846   -0.5854905   -0.5422787
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3448320   -0.3916204   -0.2980436
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.6878709   -0.8645153   -0.5112265
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.6198385    0.1396687    1.1000084
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.7755019   -1.1224034   -0.4286003
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.1702119   -0.5658831    0.2254594
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.1565948   -0.0119340    0.3251236
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7942712   -0.9516832   -0.6368592
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.7465653   -0.8258788   -0.6672517
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0771877   -1.1765133   -0.9778620
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1376946   -0.3426883    0.0672991
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2765724   -1.3193631   -1.2337817
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.1769557   -1.2354168   -1.1184946


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
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0869987   -0.2251832    0.0511858
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2061284   -0.0561901    0.4684468
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.4458331   -0.9294385    0.0377723
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.4641924   -0.8194094   -0.1089753
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.1119633   -0.2409326    0.0170061
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0441849   -0.1544067    0.0660369
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0075885   -0.0156682    0.0004912
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed           0.0132364   -0.0373046    0.0637774
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0322570   -0.1003208    0.1648348
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.4742790   -0.8390265   -0.1095316
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.2988916   -0.6954500    0.0976668
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.2417958   -0.6575406    0.1739489
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.1585133   -0.2937974   -0.0232292
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.2427773   -0.3413059   -0.1442486
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0676124   -0.3469319    0.4821567
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2116865   -0.3612047   -0.0621682
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1813454   -0.2612786   -0.1014122
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0728992   -0.1498852    0.0040869
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.2489844   -0.4619393   -0.0360295
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0292955   -0.0390575   -0.0195336
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0523628   -0.0731419   -0.0315837
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1437081   -0.2795330   -0.0078831
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1732113   -0.5920238    0.2456012
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.1635830   -0.4967740    0.1696080
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.2000965   -0.5655573    0.1653643
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.0135897   -0.1367465    0.1095671
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0936700   -0.2315075    0.0441675
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0566677   -0.1214399    0.0081046
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0597643   -0.1206839    0.0011553
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0605750   -0.0669630    0.1881131
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0225595   -0.0592129    0.0140939
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0568024   -0.1012421   -0.0123627
