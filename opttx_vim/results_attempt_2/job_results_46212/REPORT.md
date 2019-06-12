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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               119     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               112     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                27     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               148     175
Birth       ki0047075b-MAL-ED          INDIA                          1                15     190
Birth       ki0047075b-MAL-ED          INDIA                          0               175     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                23     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               147     170
Birth       ki0047075b-MAL-ED          PERU                           1               106     256
Birth       ki0047075b-MAL-ED          PERU                           0               150     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               118     119
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15096   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3986   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               619     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               148     767
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
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13223   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3459   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3332    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               927    4259
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6677    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1865    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3289    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               885    4174


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
![](/tmp/79422ac3-3c5d-4c08-9363-7d2f1efb7b41/cfa0ef0b-8c23-4638-8094-ac675d7216bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1446589   -1.3044063   -0.9849116
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.5880285   -1.0195666   -0.1564904
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.9887654   -1.1380078   -0.8395230
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4116316   -0.7192291   -0.1040342
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.9502983   -1.1123693   -0.7882273
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5338053   -1.5570879   -1.5105227
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4775431   -1.5654600   -1.3896261
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1504616   -1.3116588   -0.9892644
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1323255   -0.2825379    0.5471889
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.3060484   -1.4335385   -1.1785584
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.7404831   -0.8977889   -0.5831773
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.1986421   -1.3571216   -1.0401626
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.9440385   -2.1378258   -1.7502512
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2575581   -1.3651767   -1.1499394
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.6027797   -1.8139916   -1.3915678
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2765819   -1.3022986   -1.2508652
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3074964   -1.3603877   -1.2546051
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.9041569   -2.0644369   -1.7438769
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.2144099   -0.5046566    0.0758368
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8021216   -1.9316168   -1.6726264
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.2633144   -1.3921205   -1.1345082
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.6027884   -1.7834574   -1.4221194
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8334781   -1.9906205   -1.6763357
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -1.9642221   -2.1300537   -1.7983904
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -2.0059564   -2.0356260   -1.9762868
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7682884   -1.8212739   -1.7153029


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9311719   -1.0458986   -0.8164451
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7294949   -1.8488722   -1.6101177
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7762003   -1.8148628   -1.7375378


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1129273   -0.0162450    0.2420997
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1383144   -0.5335662    0.2569374
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0362873   -0.0917340    0.0191595
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.2848390   -0.5718335    0.0021555
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0191264   -0.1007392    0.1389920
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0164861   -0.0294971   -0.0034750
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0432001   -0.0817660   -0.0046342
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0635739   -0.1784836    0.0513358
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0813047   -0.4502010    0.2875915
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.0866878    0.0070766    0.1662990
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1809086    0.0824096    0.2794077
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1106578   -0.2365495    0.0152340
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2564320   -0.4068990   -0.1059649
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0776464   -0.1543035   -0.0009894
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0368159   -0.2029971    0.1293653
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0338581   -0.0451575   -0.0225588
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0499807   -0.0893602   -0.0106013
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0491206   -0.1830143    0.0847731
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2562443    0.0073153    0.5051732
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0444855   -0.0878171   -0.0011539
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.0111350   -0.0572595    0.0349895
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1267066   -0.2697257    0.0163126
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0616607   -0.1879172    0.0645957
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0036401   -0.1420196    0.1492997
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0062527   -0.0193738    0.0068684
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0079119   -0.0416807    0.0258569
