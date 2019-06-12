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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           67     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            27     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           27      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        25      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38           27     131
Birth       ki0047075b-MAL-ED          INDIA                          <32            44     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        60     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        39      61
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      80
Birth       ki0047075b-MAL-ED          PERU                           <32            27      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        26      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           53      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           21      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        19      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           152     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        31     187
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13390
Birth       ki1119695-PROBIT           BELARUS                        <32         10724   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2060   13390
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          245     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32           380     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       198     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          328    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          2079    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       537    2944
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1125    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        77     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15183
6 months    ki1119695-PROBIT           BELARUS                        <32         12176   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2306   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          275     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          300    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1829    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2624
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
24 months   ki1119695-PROBIT           BELARUS                        >=38          178    3909
24 months   ki1119695-PROBIT           BELARUS                        <32          3143    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       588    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32           492    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       247    1024
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          270    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1666    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2371
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
![](/tmp/2009bce8-9457-410e-8ed6-b45e35618cc8/fd510591-e53a-4d44-a213-ac8656ecd396/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7855620   -1.0441780   -0.5269460
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7348455   -1.0938708   -0.3758202
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3593827   -1.6094483   -1.1093171
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9516729   -1.4948395   -0.4085064
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5466896   -0.8678227   -0.2255564
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5035616   -1.1180251    0.1109019
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9291583   -1.5538912   -0.3044255
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3199437    1.1647693    1.4751182
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2702372    0.0335188    0.5069556
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3418596   -0.4390757   -0.2446435
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9632046   -1.2330144   -0.6933948
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0758321   -0.4513936    0.2997294
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2362452   -1.5594160   -0.9130744
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2368941   -0.4976722    0.0238841
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0434679   -1.2592435   -0.8276922
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8062497   -1.4856427   -0.1268567
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5913493   -1.8820258   -1.3006729
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5064150   -1.6224324   -1.3903976
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6705674   -1.8704988   -1.4706361
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0470435   -0.0430562    0.1371432
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8472700   -2.0072847   -1.6872554
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0651455   -1.1508963   -0.9793948
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4165974   -1.6711319   -1.1620628
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9198632   -2.2380591   -1.6016673
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2994503   -0.0179776    0.6168781
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7478486   -2.0735111   -1.4221861
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4329049   -2.0083017   -0.8575081
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5716807   -1.8493251   -1.2940363
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9172722   -1.7931325   -0.0414119
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5947656   -2.8555611   -2.3339702
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3196611   -0.5868642   -0.0524580
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7633981   -2.9055365   -2.6212597
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3797871   -2.5239601   -2.2356141
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6434026   -2.1736641   -1.1131411


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9778621   -1.1318533   -0.8238709
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7238235   -0.9850427   -0.4626043
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9720611   -1.1477959   -0.7963262
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7244262   -0.9767822   -0.4720703
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9256250   -1.1260052   -0.7252448
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7181579   -0.9588306   -0.4774852
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.7745652   -1.0958030   -0.4533274
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3342255    1.1742855    1.4941656
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1377035    0.0520086    0.2233984
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2468988   -0.2865742   -0.2072233
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1979000   -1.3314769   -1.0643231
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0554008   -0.1690575    0.2798592
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1894617   -1.3346428   -1.0442806
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7256962   -0.9111717   -0.5402207
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3300201   -1.5375346   -1.1225056
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9083333   -1.1234247   -0.6932420
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9567550   -2.0984173   -1.8150926
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.1588608   -0.0651474    0.3828689
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8373292   -1.9909581   -1.6837003
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5030380   -1.6956243   -1.3104516
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.6960127   -1.8853995   -1.5066258
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4697191   -1.6840618   -1.2553764
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.7318500   -2.9253580   -2.5383420
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8513770   -2.9170436   -2.7857104
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3958878   -2.4412250   -2.3505506
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.7689189   -1.9714091   -1.5664287


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1923001   -0.3918105    0.0072103
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0110220   -0.3096315    0.3316755
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3873217    0.1557832    0.6188602
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2272467   -0.2909631    0.7454564
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3789354   -0.6750450   -0.0828258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2145963   -0.8197507    0.3905581
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1545931   -0.2699420    0.5791282
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0142818   -0.0461488    0.0747124
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1325337   -0.3587578    0.0936904
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0949608    0.0024543    0.1874673
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2346954   -0.4776527    0.0082619
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1312330   -0.1742628    0.4367287
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0467835   -0.2321281    0.3256951
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4888021   -0.7492033   -0.2284009
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2865522   -0.5462532   -0.0268513
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1020836   -0.7625910    0.5584237
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1168660   -0.1177522    0.3514842
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1057773   -0.0179218    0.2294765
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2281168   -0.4289358   -0.0272977
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0695695   -0.0208546    0.1599936
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0404347   -0.1002399    0.1811094
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0769810   -0.1536347   -0.0003273
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2045347   -0.4702462    0.0611767
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0368918   -0.3078977    0.2341141
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1405895   -0.4315134    0.1503344
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0894806   -0.3908422    0.2118811
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0701331   -0.5618635    0.4215973
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1243319   -0.3848368    0.1361729
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5524469   -1.3827596    0.2778658
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1370844   -0.3405538    0.0663851
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1941768    0.0148338    0.3735197
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0879788   -0.2186220    0.0426644
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0161007   -0.1533395    0.1211381
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1255163   -0.5902229    0.3391903
