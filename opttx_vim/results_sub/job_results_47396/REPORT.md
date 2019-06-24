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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           144     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          117     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            31     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        28     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           121     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        38     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           56     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            48     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           97     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           104     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        68     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          165     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            37     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        28     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           124     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        26     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         2      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2688   10285
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1016    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       213    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           384     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4156    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1671    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2089    7916
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2957    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          167     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           129     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       117     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/facb5da7-dfdf-449a-b399-193e149fe204/deac07d8-02fe-4bfe-8dd3-43e026fdb557/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9043794   -1.1874715   -0.6212872
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3326320    0.0376747    0.6275893
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7698277   -1.1479382   -0.3917172
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7477458   -1.0078457   -0.4876459
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1275334   -0.3281667    0.0731000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1619871   -0.4490150    0.1250408
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0586933    0.7235082    1.3938784
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3896675   -0.7287322   -0.0506027
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1174217   -1.3291036   -0.9057397
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3792889   -0.4209043   -0.3376736
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1319876   -0.1991645    0.4631398
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0722459    0.7498402    1.3946517
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5198466   -0.7379063   -0.3017869
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3787688    0.1472703    0.6102672
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3147936    1.1071035    1.5224837
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7454166    0.4713257    1.0195076
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3766057    0.1667226    0.5864888
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5273353   -0.7708603   -0.2838102
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3293965   -0.5465512   -0.1122417
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2532770    0.0225482    0.4840059
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1997566    0.0359125    0.3636007
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0959890    0.0200953    0.1718827
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6054346    0.5479124    0.6629567
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4189973    0.3825562    0.4554384
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6882412    0.5115410    0.8649414
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8052382   -1.1308243   -0.4796521
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5631366    0.3011988    0.8250744
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5178622   -0.8179538   -0.2177707
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1157180   -0.3260329    0.0945969
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2195877    0.0198815    0.4192938
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4763762    0.3371340    0.6156183
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2410874    0.0587986    0.4233763
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5232654   -0.7612081   -0.2853226
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5091783   -0.7307155   -0.2876411
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2381526   -0.4360243   -0.0402810
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7242389    0.5984793    0.8499984
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0404632   -1.2344123   -0.8465141
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2725649    0.0237644    0.5213654


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2353086   -0.4984656    0.0278483
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1441825   -1.3547365   -0.9336286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4819806   -0.5108811   -0.4530800
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6674586   -0.8042294   -0.5306877
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2953392    0.2687669    0.3219114
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4518399    0.3806212    0.5230586
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6877387    0.5737746    0.8017027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0467082   -0.1287046    0.0352882


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0680670   -0.3315880    0.1954540
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0506066   -0.1638114    0.2650247
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3000697   -0.6371706    0.0370311
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1649488   -0.3682253    0.0383278
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0614367   -0.1069686    0.2298420
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1273853   -0.1030875    0.3578582
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2636933   -0.5513932    0.0240066
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1543588   -0.2299737    0.5386914
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0267609   -0.0544280    0.0009063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1026916   -0.1321773   -0.0732060
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2717836   -0.5745725    0.0310053
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1077507   -0.3852538    0.1697524
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1789477   -0.3988534    0.0409580
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2677236   -0.4553424   -0.0801047
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2584149   -0.4237578   -0.0930720
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2163738   -0.4437419    0.0109943
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1404456   -0.0511599    0.3320510
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1401233   -0.3268504    0.0466038
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1095137   -0.3155121    0.0964847
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4612661   -0.6696956   -0.2528366
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1699944   -0.3124139   -0.0275749
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0179629   -0.0710287    0.0351029
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0220274   -0.0352755   -0.0087793
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1236581   -0.1496265   -0.0976897
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2364013   -0.4035144   -0.0692882
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0155872   -0.3101297    0.2789552
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1348628   -0.2924819    0.0227563
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4347041   -0.7116960   -0.1577123
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2607294   -0.4275105   -0.0939482
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0996872   -0.2811754    0.0818011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0667608   -0.1447367    0.0112151
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1909940   -0.3458065   -0.0361814
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3883137   -0.6130110   -0.1636164
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3773209   -0.5741872   -0.1804546
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3721976   -0.5423525   -0.2020426
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0365002   -0.0843070    0.0113066
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1460501   -0.3153665    0.0232663
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3192731   -0.5495531   -0.0889930
