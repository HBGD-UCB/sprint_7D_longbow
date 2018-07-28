---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

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

agecat      studyid                    country                        predexfd6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
6 months    ki1000109-EE               PAKISTAN                       0                  0       87     372
6 months    ki1000109-EE               PAKISTAN                       0                  1       67     372
6 months    ki1000109-EE               PAKISTAN                       1                  0       92     372
6 months    ki1000109-EE               PAKISTAN                       1                  1      126     372
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      371     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       76     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      118     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      294     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       51     577
Birth       ki1101329-Keneba           GAMBIA                         0                  0      864    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  1       25    1401
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
24 months   ki1101329-Keneba           GAMBIA                         0                  0      640    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      358    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  0      367    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      148    1513
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      104     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      327     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       77     546
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       61     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       59     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      202     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      158     480
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2475   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1511   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10565   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     4531   19082
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2343   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1116   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10155   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3068   16682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      924    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      941    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3426    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3251    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      496    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      389    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2012    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1277    4174
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      635    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      292    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2540    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      792    4259
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0       91     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      439     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      180     767


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          stunted
## predexfd6  0  1
##         0  0  0
##         1  7 12
##          stunted
## predexfd6 0 1
##         0 5 9
##         1 0 0
##          stunted
## predexfd6  0  1
##         0  0  0
##         1 12  7
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          stunted
## predexfd6  0  1
##         0 87 81
##         1  0  0
##          stunted
## predexfd6 0
##         0 0
##         1 7
```




# Results Detail

## Results Plots
![](/tmp/ad4e4a99-7453-49e6-92d6-ee20bc91be9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad4e4a99-7453-49e6-92d6-ee20bc91be9c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad4e4a99-7453-49e6-92d6-ee20bc91be9c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad4e4a99-7453-49e6-92d6-ee20bc91be9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1688278    0.1204163   0.2172393
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1688261    0.1204151   0.2172371
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                0.1631247    0.1104544   0.2157949
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                0.1771752    0.1235181   0.2308323
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1133237    0.0744057   0.1522417
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.1143119    0.0754545   0.1531693
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0552203    0.0432875   0.0671531
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0533953    0.0418158   0.0649749
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3166338    0.3090249   0.3242426
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3166221    0.3090126   0.3242315
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3088609    0.2721065   0.3456153
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3089385    0.2721845   0.3456925
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3696789    0.3013892   0.4379685
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2762623    0.2157709   0.3367538
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1919642    0.1399508   0.2439776
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.2162384    0.0726089   0.3598679
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2118478    0.1550695   0.2686262
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.0944363    0.0477702   0.1411023
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4708749    0.4023086   0.5394413
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5989553    0.5383631   0.6595475
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2957556    0.1850271   0.4064840
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3149598    0.2685165   0.3614031
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1746779    0.1417991   0.2075568
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1203879    0.0780335   0.1627423
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1510062    0.1324777   0.1695347
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1623337    0.1369261   0.1877413
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2372053    0.1713451   0.3030655
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1899765    0.1519503   0.2280026
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3452094    0.2839329   0.4064859
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.1385414    0.0435836   0.2334992
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2798339    0.2670675   0.2926003
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2421566    0.2335326   0.2507807
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2727161    0.2453317   0.3001005
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2408441    0.2251942   0.2564941
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3215523    0.2452181   0.3978865
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3781765    0.3021803   0.4541727
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4028214    0.3363631   0.4692798
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.0477012   -0.0726963   0.1680986
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2044194    0.1482973   0.2605415
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.0333537   -0.0919084   0.1586157
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3623711    0.2796798   0.4450623
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3550353    0.2640260   0.4460446
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3247238    0.2826846   0.3667630
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3417800    0.2735810   0.4099791
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3506213    0.3228308   0.3784118
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2830920    0.2505995   0.3155846
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4452523    0.3632698   0.5272348
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4357742    0.3851820   0.4863664
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4645978    0.3887351   0.5404604
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.1966791    0.1037683   0.2895899
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4757103    0.4557631   0.4956576
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4923420    0.4784749   0.5062091
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3972862    0.3644565   0.4301160
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3894709    0.3701853   0.4087566


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                0.1132812   0.0743812   0.1521813
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3585859   0.2916158   0.4255559
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3344349   0.3106543   0.3582155
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9999897   0.9999655   1.0000139
Birth       ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA        1                    0                 1.0861339   0.9996844   1.1800592
Birth       ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU         1                    0                 1.0087201   0.9936503   1.0240185
Birth       ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       1                    0                 0.9669511   0.9538488   0.9802334
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9999631   0.9999280   0.9999983
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0002512   0.9996657   1.0008371
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7473036   0.5711679   0.9777555
6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.1264518   0.5724132   2.2167444
6 months    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU         1                    0                 0.4457740   0.2600340   0.7641866
6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     1                    0                 1.2720051   1.0782624   1.5005596
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0649327   0.6879335   1.6485337
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6891992   0.4833930   0.9826279
6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.0750136   0.8885653   1.3005845
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8008946   0.5695265   1.1262553
6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       1                    0                 0.4013257   0.1988873   0.8098172
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8653585   0.8234323   0.9094195
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8831313   0.7911484   0.9858087
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1760964   0.8905797   1.5531488
24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        1                    0                 0.1184176   0.0094803   1.4791407
24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.1631629   0.0037683   7.0648384
24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.9797562   0.7170298   1.3387480
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0525254   0.8449080   1.3111601
24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8074011   0.7069266   0.9221559
24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9787131   0.7889237   1.2141597
24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       1                    0                 0.4233320   0.2574658   0.6960535
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0349618   0.9905706   1.0813422
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9803283   0.8982842   1.0698659


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000034    0.0000013    0.0000054
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0000332   -0.0000168    0.0000832
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0000424   -0.0003120    0.0002271
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0004542    0.0002051    0.0007033
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0000003   -0.0000088    0.0000082
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0001352   -0.0000039    0.0002743
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1867001   -0.2350611   -0.1383391
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0020013   -0.0094052    0.0134078
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 0.0037656   -0.0260149    0.0335460
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0479423   -0.0014090    0.0972936
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0183148   -0.1064003    0.1430298
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0134429   -0.0248087   -0.0020772
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0032075   -0.0128463    0.0064314
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0265826   -0.0814894    0.0283242
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0114083   -0.0126129    0.0354294
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0290246   -0.0393915   -0.0186577
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0181963   -0.0404180    0.0040254
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1425625    0.0895335    0.1955915
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0168214   -0.0003936    0.0340365
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0114396   -0.0082072    0.0310864
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0037852   -0.0513973    0.0438269
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0045656   -0.0142393    0.0233705
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0161864   -0.0309147   -0.0014581
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0068311   -0.0636176    0.0772797
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0221747   -0.0098059    0.0541553
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0150412   -0.0011765    0.0312589
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0018513   -0.0249216    0.0286242


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000199    0.0000085    0.0000312
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0002037   -0.0000974    0.0005047
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0003746   -0.0027522    0.0019974
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0081584    0.0039026    0.0123959
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0000009   -0.0000277    0.0000260
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0004375   -0.0000136    0.0008884
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0203379   -1.4474281   -0.6677774
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0103179   -0.0502765    0.0674164
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 0.0174645   -0.1307644    0.1462624
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0924069   -0.0077185    0.1825840
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0583142   -0.4299144    0.3798425
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0833749   -0.1565792   -0.0148040
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0217016   -0.0891159    0.0415400
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1262096   -0.4195170    0.1064932
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0319902   -0.0378259    0.0971097
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1157239   -0.1582692   -0.0747414
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0714925   -0.1623605    0.0122718
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.3071708    0.1841889    0.4116134
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0400851   -0.0020963    0.0804909
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0529958   -0.0428069    0.1399971
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0105559   -0.1524375    0.1138580
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0138651   -0.0448823    0.0693095
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0483993   -0.0935686   -0.0050957
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0151102   -0.1536704    0.1591984
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0455545   -0.0222393    0.1088523
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0306494   -0.0029016    0.0630780
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0046382   -0.0647550    0.0695088
