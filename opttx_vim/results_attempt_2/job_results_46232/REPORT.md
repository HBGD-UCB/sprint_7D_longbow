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
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            2      60
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg            50      60
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         8      60
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         2      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg         4958    6669
Birth       ki1119695-PROBIT           BELARUS                        <52 kg           543    6669
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      1168    6669
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           29     410
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg           311     410
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        70     410
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
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         4795    6448
6 months    ki1119695-PROBIT           BELARUS                        <52 kg           528    6448
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      1125    6448
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
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         1174    1582
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           114    1582
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       294    1582
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

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
```




# Results Detail

## Results Plots
![](/tmp/8f4eedd1-460e-4638-a707-2aa0914e72e2/ee320b47-f1af-40b4-be35-25d3704d77e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6765929   -0.9588010   -0.3943848
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0617957   -0.1970824    0.3206739
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7553640   -1.1281472   -0.3825808
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7348497   -0.9985929   -0.4711064
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0286917   -0.2666679    0.2092844
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0156703   -0.2341333    0.2654739
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0310515    0.6689507    1.3931523
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1647668   -1.4928012   -0.8367324
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3787010   -0.4202770   -0.3371250
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0578494   -0.2568244    0.3725233
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9137419    0.6221351    1.2053487
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5047959   -0.7469774   -0.2626143
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3809448    0.1488055    0.6130841
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3219119    1.1108907    1.5329330
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6356368    0.4398022    0.8314714
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5156621    0.3098342    0.7214900
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5390796   -1.0833421    0.0051829
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4433483   -0.6784717   -0.2082248
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2064741   -0.0205349    0.4334831
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2608312    0.0795749    0.4420875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1266101    0.0591155    0.1941047
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5764788    0.5090255    0.6439321
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4160265    0.3795737    0.4524794
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7376320    0.5585580    0.9167060
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9456671   -1.2051326   -0.6862015
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5535714    0.2961067    0.8110361
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4988693   -0.7638142   -0.2339244
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1147886   -0.3268027    0.0972255
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2974194    0.0743223    0.5205165
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4807639    0.3418269    0.6197009
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2547252    0.0652518    0.4441985
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5484702   -0.7846375   -0.3123029
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5410267   -0.7649399   -0.3171136
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1682082   -0.3670448    0.0306283
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8266910    0.6821164    0.9712655
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0226530   -1.2186174   -0.8266886
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2769115    0.0312234    0.5225995


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
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1838417   -1.5179872   -0.8496961
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4819806   -0.5108811   -0.4530800
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.8006585   -0.9951895   -0.6061275
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5806095    0.5057299    0.6554891
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8080520    0.6569945    0.9591095
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0467082   -0.1287046    0.0352882


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2958534   -0.5566995   -0.0350073
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3214429    0.1121547    0.5307311
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3145334   -0.6485545    0.0194876
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1778450   -0.3831428    0.0274529
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0374049   -0.2338285    0.1590186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0502720   -0.2608306    0.1602865
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2360515   -0.5392872    0.0671842
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0190749   -0.0454354    0.0072856
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1032796   -0.1329160   -0.0736432
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1976454   -0.4854149    0.0901240
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0507533   -0.1745443    0.2760509
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1939985   -0.4252393    0.0372424
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2698996   -0.4577811   -0.0820181
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2655332   -0.4349589   -0.0961075
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1065939   -0.2344980    0.0213102
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0013892   -0.1801299    0.1829083
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2615789   -0.6624178    0.1392600
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0044381   -0.2155391    0.2244153
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4144632   -0.6183604   -0.2105659
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2310689   -0.3872223   -0.0749156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0485840   -0.0900857   -0.0070823
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0041307   -0.0265016    0.0347630
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1206874   -0.1466591   -0.0947157
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2857921   -0.4553154   -0.1162688
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1248416   -0.1153764    0.3650596
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1252976   -0.2771820    0.0265868
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4536971   -0.6989718   -0.2084224
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2616588   -0.4290384   -0.0942791
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1775189   -0.3697492    0.0147114
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0711485   -0.1494726    0.0071756
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2046317   -0.3650241   -0.0442393
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3631088   -0.5887358   -0.1374818
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3454724   -0.5448905   -0.1460543
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4421420   -0.6155874   -0.2686966
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0186389   -0.0781144    0.0408366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1638603   -0.3357339    0.0080133
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3236197   -0.5507970   -0.0964423
