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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           65     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        24      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38           26     128
Birth       ki0047075b-MAL-ED          INDIA                          <32            43     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        59     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        37      59
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      78
Birth       ki0047075b-MAL-ED          PERU                           <32            26      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        25      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           135     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        28     166
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13333
Birth       ki1119695-PROBIT           BELARUS                        <32         10676   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2051   13333
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15179
6 months    ki1119695-PROBIT           BELARUS                        <32         12174   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3848
24 months   ki1119695-PROBIT           BELARUS                        <32          3094    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

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
![](/tmp/a28a41c1-2a5e-4b01-8c6e-e07182a994ce/3c4d6934-e141-49c9-a664-78c6f5004bda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8393370   -1.1921482   -0.4865258
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6742632    0.2768082    1.0717182
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9282005   -1.4823584   -0.3740426
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8593448   -1.1753713   -0.5433183
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2225996   -0.0577861    0.5029852
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2306046   -0.0465628    0.5077719
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7379651    0.0882878    1.3876423
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0547975   -1.2117716   -0.8978234
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.3343751   -1.5157802   -1.1529700
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7144991   -0.9450659   -0.4839323
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2336057   -0.0861613    0.5533727
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8309044    0.1962264    1.4655825
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6624122   -1.1077469   -0.2170776
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0962355   -0.5013398    0.3088688
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.4169535    0.9114366    1.9224703
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0249625   -0.5633203    0.5133952
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4333049   -0.1304050    0.9970148
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7077075   -0.9908767   -0.4245383
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.5828073   -1.8431482   -1.3224664
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6810394    0.6158998    0.7461790
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3189171    0.1780043    0.4598300
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3077375   -0.4721212   -0.1433537
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4633070    0.2192280    0.7073860
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4269117   -1.6492465   -1.2045769
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1955051   -0.4427326    0.8337427
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7655729   -1.1097069   -0.4214390
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1620769   -0.5315865    0.2074327
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0671714   -0.1569850    0.2913277
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1820068   -0.4352597    0.7992734
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3097297    0.0392194    0.5802400
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7507628    0.6374358    0.8640898
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2121382   -0.3583627   -0.0659137
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6468979   -0.7416764   -0.5521194
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2217575   -0.2278173    0.6713323


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0282143   -1.1991720   -0.8572566
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4923077    0.1981785    0.7864369
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1116406   -1.2776411   -0.9456401
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7467797   -0.9945570   -0.4990023
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0162821   -0.2170871    0.1845230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1318667   -0.1289649    0.3926982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7968182    0.4398380    1.1537983
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1410673   -1.3516550   -0.9304795
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5783069    0.5185614    0.6380524
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6846323    0.5733690    0.7958955
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.1982432   -0.4246666    0.0281801


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1888773   -0.4916662    0.1139116
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1819555   -0.5359421    0.1720311
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1834401   -0.6953635    0.3284832
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1125652   -0.1289754    0.3541057
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2388816   -0.5007922    0.0230290
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0987379   -0.2969143    0.0994385
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0588531   -0.6047431    0.7224493
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0862698   -0.2101590    0.0376195
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2763343    0.1153657    0.4373028
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0164770   -0.2410750    0.2081210
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4313890   -0.7333777   -0.1294003
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1084838   -0.3880575    0.6050250
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0582710   -0.4679064    0.3513644
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2740625   -0.0670671    0.6151921
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4029173   -0.7970286   -0.0088060
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5403183    0.1013157    0.9793210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0701451   -0.4329960    0.5732863
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0436016   -0.1504717    0.2376749
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.5706494    0.3227338    0.8185650
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1027325   -0.1574875   -0.0479776
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1263257   -0.2520900   -0.0005614
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0199343   -0.1404117    0.1802802
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0425421   -0.1859429    0.2710270
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.5407528    0.3261651    0.7553404
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3486089   -0.2464886    0.9437063
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1321289   -0.4607672    0.1965093
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1217839   -0.4519918    0.2084241
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0532084   -0.1858331    0.2922498
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2718134   -0.3226287    0.8662555
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2330797   -0.4344077   -0.0317517
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0661305   -0.1890673    0.0568062
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0639471   -0.2001663    0.0722722
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0381395   -0.0500799    0.1263589
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.4200007   -0.7967707   -0.0432307
