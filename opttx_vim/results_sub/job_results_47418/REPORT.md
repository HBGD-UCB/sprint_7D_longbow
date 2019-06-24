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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    n_cell       n
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
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
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
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7e4570af-fb3d-4874-9640-d4df391c7fe9/a071aa17-4685-4e70-bf88-a8ed1b359e95/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9058073   -1.0813956   -0.7302190
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0650986   -0.1924500    0.3226472
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6241304   -1.1381648   -0.1100961
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5134644   -0.9322497   -0.0946792
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0136885   -0.1691414    0.1965185
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7155543   -0.7368844   -0.6942242
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.2451818   -0.3493325   -0.1410310
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.2911598   -0.4520961   -0.1302236
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4343855    1.0377047    1.8310663
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4041817   -0.8962710    0.0879077
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.4310173   -0.0042613    0.8662958
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.2264519    1.0468407    1.4060630
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.4635494   -0.6067823   -0.3203164
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.4669861   -0.5880892   -0.3458829
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.2935440    0.1204939    0.4665941
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.5674090   -0.5889932   -0.5458247
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3435175   -0.3900683   -0.2969667
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7004874   -0.8726852   -0.5282895
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2748168   -0.1667829    0.7164165
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.8947047   -1.1514675   -0.6379418
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.2478609   -0.6549094    0.1591876
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.2472641    0.0706997    0.4238285
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0485193   -1.1548476   -0.9421911
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0549422   -0.2146789    0.1047946
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2992365   -1.3407045   -1.2577685
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.1877074   -1.2372734   -1.1381413


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0430924   -0.1600210    0.0738362
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1430051    0.0254144    0.2605957
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2337581   -1.2679680   -1.1995482


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0867041   -0.2261332    0.0527250
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.3422228    0.1035985    0.5808471
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4194524   -0.9155244    0.0766195
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4091416   -0.8015147   -0.0167685
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0567809   -0.2016958    0.0881341
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0078516   -0.0159582    0.0002549
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.1287045   -0.2229897   -0.0344193
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1446669    0.0096939    0.2796399
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4626630   -0.8280265   -0.0972995
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2986919   -0.7778599    0.1804761
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3142655   -0.7169138    0.0883828
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1710058   -0.3036022   -0.0384093
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2577272   -0.3584357   -0.1570188
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.1345188   -0.2233357   -0.0457019
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.0992133   -0.0291208    0.2275475
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0257711   -0.0360186   -0.0155237
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0536773   -0.0738584   -0.0334962
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1310916   -0.2621158   -0.0000674
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1718104   -0.2133767    0.5569976
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0443801   -0.3062054    0.2174452
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1224475   -0.4985875    0.2536925
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1042590   -0.2261791    0.0176610
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0884327   -0.1587084   -0.0181569
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0221774   -0.0876662    0.0433114
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0001046   -0.0359935    0.0362027
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0460507   -0.0856796   -0.0064219
