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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1               484    1401
Birth       ki1101329-Keneba           GAMBIA                         0               917    1401
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               447     583
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               433     577
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
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
![](/tmp/0e8fadf1-2c9f-4c1e-a636-154f59e96d1a/726197ee-93d8-4670-9b28-29aed8379a54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.1153084   -1.2780856   -0.9525313
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.6399284   -1.0775087   -0.2023481
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -1.1555396   -1.3092943   -1.0017850
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.4677441   -0.7835661   -0.1519220
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.8182903   -0.9825749   -0.6540056
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0320984   -0.0582622    0.1224589
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.5465179   -1.5692237   -1.5238121
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.4944596   -1.5834565   -1.4054626
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.1593170   -1.3193734   -0.9992607
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2052697   -0.2015104    0.6120498
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -1.3172769   -1.5892670   -1.0452869
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.5538039   -0.7174182   -0.3901896
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.1709327   -1.3242764   -1.0175890
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.9598173   -2.1556994   -1.7639352
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.1520964   -1.2598652   -1.0443276
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.9288697   -1.0124837   -0.8452556
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.3290883   -1.4397978   -1.2183788
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.6543841   -1.8474029   -1.4613653
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2749143   -1.2998628   -1.2499658
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3165345   -1.3580791   -1.2749899
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.9018906   -2.0606356   -1.7431456
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0566015   -0.1280685    0.2412715
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -1.8006640   -1.9300323   -1.6712957
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.3490592   -1.5350796   -1.1630388
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -1.5713368   -1.7338482   -1.4088253
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.5545483   -1.6508591   -1.4582374
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.4928265   -1.5782389   -1.4074141
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.8396648   -1.9912523   -1.6880774
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.0923536   -2.2786959   -1.9060113
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.9893606   -2.0289182   -1.9498030
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7569025   -1.7986626   -1.7151423


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed          -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED         INDIA        observed             observed          -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED         NEPAL        observed             observed          -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.9311719   -1.0458986   -0.8164451
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0162027   -0.0517648    0.0841702
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED         PERU         observed             observed          -1.7294949   -1.8488722   -1.6101177
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5721046   -1.6251725   -1.5190368
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7762003   -1.8148628   -1.7375378


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0835768   -0.0479993    0.2151530
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0864145   -0.4831015    0.3102726
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed           0.1304870    0.0294961    0.2314780
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.2287265   -0.5344406    0.0769875
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.1128816   -0.2271587    0.0013955
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0158957   -0.0785565    0.0467651
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0037735   -0.0155271    0.0079801
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0262836   -0.0633691    0.0108019
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0547184   -0.1688018    0.0593650
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1542490   -0.5166559    0.2081579
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed           0.0979163   -0.1437703    0.3396030
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0057706   -0.1343741    0.1228329
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.1383672   -0.2600114   -0.0167231
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.2406531   -0.3925029   -0.0888033
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0649924   -0.0212420    0.1512267
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0042411   -0.0733086    0.0648264
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0061162   -0.0777546    0.0655221
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.0147885   -0.1437898    0.1733668
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0355257   -0.0459367   -0.0251147
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0409426   -0.0670042   -0.0148810
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0513869   -0.1843372    0.0815633
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0147672   -0.0900614    0.0605270
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0459432   -0.0893575   -0.0025289
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0746099   -0.0585411    0.2077609
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.1581582   -0.2815253   -0.0347911
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0315696   -0.0759862    0.0128470
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0792782   -0.1493193   -0.0092371
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0554741   -0.1839143    0.0729661
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.1317716   -0.0138926    0.2774358
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0228485   -0.0518568    0.0061598
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0192978   -0.0370634   -0.0015323
