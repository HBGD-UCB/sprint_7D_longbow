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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          121     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            33     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        30     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           123     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        39     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           57     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            52     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           99     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           107     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        70     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          166     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        39     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           52     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           14     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           141     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        27     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         3      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5735   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2358   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2897   10990
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1019    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       212    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4171    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1675    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2096    7942
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          183     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       121     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578


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
![](/tmp/6ed591be-2b01-4a39-bc48-d8b5fb780d21/3a8eb7bd-6151-43ce-ac09-e93ca29c1f40/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8557625   -1.1361546   -0.5753705
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6552822   -0.8628424   -0.4477220
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6195131   -0.9379982   -0.3010280
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5148532   -0.7364188   -0.2932876
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7185508   -0.9180077   -0.5190938
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7852819   -0.9847424   -0.5858215
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5812934   -0.8659993   -0.2965874
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4135097   -1.9750020   -0.8520175
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3962011    1.2353751    1.5570271
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3529664   -0.3846903   -0.3212424
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9283561   -1.1658754   -0.6908368
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0980783   -0.0869823    0.2831390
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0101697   -1.2529748   -0.7673647
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3846097   -0.5607711   -0.2084484
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0874994   -1.2654009   -0.9095979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9545219   -1.1054022   -0.8036416
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4491142   -1.6906496   -1.2075788
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7016586   -0.9277659   -0.4755512
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3444657   -1.5581259   -1.1308055
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6933590   -0.8855911   -0.5011269
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0732096   -1.2284361   -0.9179831
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4394951   -0.5034531   -0.3755371
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1615473    0.0618452    0.2612493
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7104110   -0.7474983   -0.6733238
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.3366517   -1.5299277   -1.1433757
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4838131   -1.7573167   -1.2103095
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3283690   -0.0838333    0.7405712
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4434325   -1.7563566   -1.1305083
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0113157   -1.2232650   -0.7993665
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4846637   -1.7620674   -1.2072601
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4743892   -1.6322733   -1.3165051
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3941071   -2.6094288   -2.1787854
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.8530884   -2.1271593   -1.5790175
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0317106   -1.2185626   -0.8448586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0629497   -1.2089777   -0.9169217
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0619718   -0.3928229    0.2688792
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2029199   -2.3998444   -2.0059953
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5775029   -1.7719829   -1.3830230


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3716484   -1.5489439   -1.1943528
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3264008    1.1675653    1.4852363
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4974449   -0.5203958   -0.4744941
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006917   -1.4821813   -1.3192022
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8994195   -0.9257684   -0.8730707
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6584707   -1.7281551   -1.5887863
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4241972   -2.5387692   -2.3096253
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8747405   -1.9558403   -1.7936407


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1897659   -0.4537614    0.0742296
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0844460   -0.2097911    0.0408991
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4005374   -0.6931034   -0.1079714
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1904375   -0.3888916    0.0080166
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2200724   -0.3739805   -0.0661643
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0930890   -0.0639655    0.2501434
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3454835   -0.5947779   -0.0961890
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0418614   -0.4572394    0.5409621
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0698003   -0.0805523   -0.0590483
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1444786   -0.1668772   -0.1220800
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2773217   -0.5086171   -0.0460262
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0448652   -0.1511588    0.0614284
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2046671   -0.4373379    0.0280037
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1764496   -0.3289370   -0.0239622
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2397494   -0.3875405   -0.0919583
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1182793   -0.2060487   -0.0305100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0889928   -0.1108255    0.2888111
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6990332   -0.9007683   -0.4972981
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0629163   -0.2669541    0.1411214
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3914979   -0.5660795   -0.2169162
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1254687   -0.2589218    0.0079843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1029815   -0.1410877   -0.0648753
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0471591   -0.0662081   -0.0281100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1890085   -0.2154270   -0.1625900
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3218190   -0.5023274   -0.1413107
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4593001   -0.7205114   -0.1980888
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2865237   -0.6544408    0.0813933
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4004835   -0.6903567   -0.1106102
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2639036   -0.4380655   -0.0897417
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2654358   -0.5052707   -0.0256009
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1476407   -0.2391512   -0.0561301
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2117808   -0.3944959   -0.0290656
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3277061   -0.5834225   -0.0719897
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5522130   -0.7238507   -0.3805753
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3665834   -0.4994222   -0.2337446
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0693024   -0.1464706    0.0078659
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2212774   -0.3608471   -0.0817076
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2972375   -0.4841895   -0.1102856
