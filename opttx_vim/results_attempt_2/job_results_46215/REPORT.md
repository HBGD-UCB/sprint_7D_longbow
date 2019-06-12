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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               175     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               163     175
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     190
Birth       ki0047075b-MAL-ED          INDIA                          0               185     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               159     170
Birth       ki0047075b-MAL-ED          PERU                           1                10     256
Birth       ki0047075b-MAL-ED          PERU                           0               246     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     211
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15068   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              4014   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               617     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               150     767
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13199   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3483   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3319    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               940    4259
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               433     577
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6665    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1877    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3276    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               898    4174


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
![](/tmp/1ff79dd7-beef-42ce-a180-81a39ead84f0/d93e96d0-061a-4096-9a9a-c5210cac72ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8674021   -1.0441486   -0.6906557
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.9083982   -1.5097353   -0.3070611
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -1.0162615   -1.1637642   -0.8687588
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0135465   -0.2268463    0.2539393
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.9147882   -1.0312945   -0.7982820
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0476925   -0.0412040    0.1365891
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.5365225   -1.5595973   -1.5134476
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.4933077   -1.5822004   -1.4044151
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.4384155   -1.6158291   -1.2610019
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.4201927   -0.3453880    1.1857733
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -1.5333816   -1.7005392   -1.3662240
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.3506887   -0.6619048   -0.0394726
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.2789306   -1.3874970   -1.1703641
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.9636789   -2.1561792   -1.7711785
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.0579546   -1.1752885   -0.9406207
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.8974635   -0.9853221   -0.8096048
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.3209843   -1.4446229   -1.1973456
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.5259856   -1.6951194   -1.3568518
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2762729   -1.3012466   -1.2512992
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3226529   -1.3670174   -1.2782884
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.9239711   -2.0695224   -1.7784198
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0023725   -0.2234872    0.2187421
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -1.8270970   -1.9536190   -1.7005750
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.1147169   -1.5066358   -0.7227981
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -1.7154228   -1.8375803   -1.5932653
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.5335528   -1.6390591   -1.4280465
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.5076437   -1.5926858   -1.4226017
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.8857152   -2.0445096   -1.7269208
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.1139818   -2.2660541   -1.9619095
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.9921154   -2.0318300   -1.9524009
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7582630   -1.8000818   -1.7164442


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
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1643295   -0.3202707   -0.0083882
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1820553   -0.3861344    0.7502451
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0087911   -0.0432120    0.0256298
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.7100171   -0.9810189   -0.4390152
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.0163837   -0.0420109    0.0092436
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0314898   -0.0947237    0.0317441
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0137689   -0.0266070   -0.0009309
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0274354   -0.0643989    0.0095281
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.2243800    0.0797684    0.3689916
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3691719   -1.0977440    0.3594001
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed           0.3140210    0.1890208    0.4390211
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.2088858   -0.5097211    0.0919495
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0303693   -0.0711749    0.0104362
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.2367916   -0.3849897   -0.0885934
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0291495   -0.1211016    0.0628027
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0356473   -0.1068178    0.0355231
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0142203   -0.0988839    0.0704434
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1136100   -0.2401860    0.0129660
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0341671   -0.0445589   -0.0237752
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0348242   -0.0639421   -0.0057064
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0293064   -0.1164153    0.0578025
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0442068   -0.1093470    0.1977606
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0195101   -0.0501204    0.0111002
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.1597324   -0.5448675    0.2254027
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.0140721   -0.0375342    0.0093899
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0525650   -0.1157866    0.0106566
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0644609   -0.1349038    0.0059820
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0094237   -0.1419400    0.1230926
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.1533998    0.0450153    0.2617842
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0200937   -0.0477517    0.0075644
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0179373   -0.0358825    0.0000079
