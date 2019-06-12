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

agecat      studyid                    country                        predfeed6    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               114    219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               105    219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                26    168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               142    168
Birth       ki0047075b-MAL-ED          INDIA                          1                15    187
Birth       ki0047075b-MAL-ED          INDIA                          0               172    187
Birth       ki0047075b-MAL-ED          NEPAL                          1                22    165
Birth       ki0047075b-MAL-ED          NEPAL                          0               143    165
Birth       ki0047075b-MAL-ED          PERU                           1               104    249
Birth       ki0047075b-MAL-ED          PERU                           0               145    249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1    115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114    115
Birth       ki1000109-EE               PAKISTAN                       1                 0      1
Birth       ki1000109-EE               PAKISTAN                       0                 1      1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              5982   7550
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1568   7550
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               142    170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                28    170
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               123    235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               112    235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                35    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               174    209
6 months    ki0047075b-MAL-ED          INDIA                          1                18    232
6 months    ki0047075b-MAL-ED          INDIA                          0               214    232
6 months    ki0047075b-MAL-ED          NEPAL                          1                29    235
6 months    ki0047075b-MAL-ED          NEPAL                          0               206    235
6 months    ki0047075b-MAL-ED          PERU                           1               113    269
6 months    ki0047075b-MAL-ED          PERU                           0               156    269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               239    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2    244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               242    244
6 months    ki1000109-EE               PAKISTAN                       1               220    376
6 months    ki1000109-EE               PAKISTAN                       0               156    376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     43
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                43     43
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404    546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142    546
6 months    ki1148112-LCNI-5           MALAWI                         1                47    272
6 months    ki1148112-LCNI-5           MALAWI                         0               225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              6455   8247
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1792   8247
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               861   1079
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               218   1079
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               112    209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                97    209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                29    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               140    169
24 months   ki0047075b-MAL-ED          INDIA                          1                17    224
24 months   ki0047075b-MAL-ED          INDIA                          0               207    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                28    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               199    227
24 months   ki0047075b-MAL-ED          PERU                           1                84    198
24 months   ki0047075b-MAL-ED          PERU                           0               114    198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3    227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2    212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               210    212
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359    479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120    479
24 months   ki1148112-LCNI-5           MALAWI                         1                34    184
24 months   ki1148112-LCNI-5           MALAWI                         0               150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3288   4239
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               951   4239
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               860   1074
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               214   1074


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
![](/tmp/cda1cba5-e030-483a-9478-3cfe425485cd/e729a062-8025-4faa-8f22-a1969178a4a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.8695009   -1.0525411   -0.6864608
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0382047   -0.2984579    0.3748673
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6330913   -1.0974482   -0.1687343
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4393268   -0.8340028   -0.0446509
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0130070   -0.1635930    0.1896070
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7538826   -0.7833505   -0.7244146
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.4403708   -0.6835486   -0.1971930
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.2738629   -0.4591619   -0.0885639
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4616030    1.0617923    1.8614138
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4417462   -0.8886123    0.0051199
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.5005339    0.0208452    0.9802226
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.1453728    0.9707768    1.3199689
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.4694235   -0.6107437   -0.3281033
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.5669592   -0.6857838   -0.4481345
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.2260765    0.0107342    0.4414189
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.5577327   -0.5879861   -0.5274793
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3694978   -0.4532514   -0.2857441
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.6912312   -0.8722312   -0.5102313
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.3834760   -0.0401314    0.8070835
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.7797093   -1.1170620   -0.4423567
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1872925   -0.5717171    0.1971320
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.2938960    0.1190545    0.4687375
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0570436   -1.1642700   -0.9498172
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1573450   -0.3925938    0.0779037
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2487282   -1.3053549   -1.1921016
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.1041652   -1.2815643   -0.9267660


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0430924   -0.1600210    0.0738362
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7669854   -0.7938211   -0.7401498
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3155294   -0.4783099   -0.1527490
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5893258   -0.6167702   -0.5618814
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3928452   -0.4714518   -0.3142387
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1430051    0.0254144    0.2605957
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.2929417   -1.3253338   -1.2605497
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2435289   -1.3099081   -1.1771496


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1230105   -0.2616661    0.0156452
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.3691167    0.0622700    0.6759634
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4104916   -0.8623853    0.0414020
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4832792   -0.8535822   -0.1129763
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0560994   -0.1946891    0.0824903
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0131029   -0.0253816   -0.0008241
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed           0.1248414   -0.0387306    0.2884134
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1273700   -0.0095710    0.2643110
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4898805   -0.8576240   -0.1221370
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2611274   -0.6970873    0.1748325
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3837821   -0.8265084    0.0589442
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.0899267   -0.2213356    0.0414822
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2518531   -0.3521747   -0.1515315
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0345457   -0.1216771    0.0525857
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.1666808   -0.0114920    0.3448537
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0315931   -0.0451463   -0.0180399
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0233474   -0.0615265    0.0148316
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1403477   -0.2799304   -0.0007651
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0631512   -0.3020033    0.4283056
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.1593755   -0.4915332    0.1727823
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1830158   -0.5376128    0.1715812
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1508910   -0.2722128   -0.0295692
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0799084   -0.1502780   -0.0095389
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0802255   -0.0811643    0.2416152
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0442135   -0.0922033    0.0037763
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.1393637   -0.2898590    0.0111316
