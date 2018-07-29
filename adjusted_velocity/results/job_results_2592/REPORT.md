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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        safeh20    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             237     237
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             564     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             634     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             720     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              35   20029
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19994   20029
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1805    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             124     124
0-3 months     ki0047075b-MAL-ED          INDIA                          0             194     194
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             170     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     171
0-3 months     ki0047075b-MAL-ED          PERU                           0             238     249
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     249
0-3 months     ki1114097-CONTENT          PERU                           0               1       6
0-3 months     ki1114097-CONTENT          PERU                           1               5       6
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             180     213
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     213
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             231     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             521     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             572     572
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             695     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              12   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           12561   12573
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1839    1839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141
3-6 months     ki0047075b-MAL-ED          INDIA                          0             229     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256
3-6 months     ki1114097-CONTENT          PERU                           0               3      57
3-6 months     ki1114097-CONTENT          PERU                           1              54      57
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     238
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             220     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             480     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             544     544
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             676     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              10    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            9822    9832
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3159    3159
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129
6-12 months    ki0047075b-MAL-ED          INDIA                          0             224     224
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             332     332
6-12 months    ki1148112-LCNI-5           MALAWI                         0              70     430
6-12 months    ki1148112-LCNI-5           MALAWI                         1             360     430
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             227     228
6-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     228
6-12 months    ki0047075b-MAL-ED          PERU                           0             219     228
6-12 months    ki0047075b-MAL-ED          PERU                           1               9     228
6-12 months    ki1114097-CONTENT          PERU                           0               3      57
6-12 months    ki1114097-CONTENT          PERU                           1              54      57
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             196     231
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     231
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     222
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154     222
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             206     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             419     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             457     457
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             495     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               7    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            4641    4648
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3635    3635
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110
12-24 months   ki0047075b-MAL-ED          INDIA                          0             225     225
12-24 months   ki1148112-LCNI-5           MALAWI                         0              48     307
12-24 months   ki1148112-LCNI-5           MALAWI                         1             259     307
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             223     224
12-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     224
12-24 months   ki0047075b-MAL-ED          PERU                           0             176     183
12-24 months   ki0047075b-MAL-ED          PERU                           1               7     183
12-24 months   ki1114097-CONTENT          PERU                           0               1      10
12-24 months   ki1114097-CONTENT          PERU                           1               9      10
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             196     229
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     229
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              64     206
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             142     206


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        y_rate_len
## safeh20 1.58842766666667 2.20035702127659 2.35814865168539
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.36214797872341 2.59738112359551 2.60231766666667 2.6739956043956
##       0                1                1                2               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 2.68190258064516 2.69602568181818 2.79409220930232
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.80769538461539 2.81023858695652 2.84112032967033
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.87268833333333 2.90648466666667 2.90797021978022
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.93678482758621 2.94139516483517 2.97331786516854
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.97407733333333 2.97482010989011 2.97554673913043
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.97625774193548 3.00787366666667 3.00896387096774 3.04167
##       0                1                1                1       4
##       1                0                0                0       0
##        y_rate_len
## safeh20 3.07546633333333 3.10779326086956 3.143059 3.17110276595745
##       0                1                3        2                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 3.17249451612903 3.17685533333333 3.17837426966292
##       0                2                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.20520064516129 3.20697815217391 3.21065166666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.21647862068966 3.21851127906977 3.23581914893617 3.2400397826087
##       0                1                1                2               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 3.24221967032967 3.244448 3.25893214285714 3.27310141304348
##       0                1        4                1                2
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.27824433333333 3.30616304347826 3.31507853932584
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.32136379310345 3.32794482352941 3.33922467391304
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.34249450549451 3.345837 3.37591945054945 3.37963333333333
##       0                4        4                1                3
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.39761010638298 3.40143741935484 3.41342966666666
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.41342966666667 3.4341435483871 3.43840956521739 3.43998392857143
##       0                2               2                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 3.44276934065934 3.447226 3.45178280898876 3.47619428571429
##       0                1        1                1                4
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.48102233333333 3.50453282608695 3.50961923076923
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.51481866666667 3.52013494382022 3.52557204545455
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.53226193548387 3.53759445652174 3.54304417582418 3.548615
##       0                1                3                3        3
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.55431101123595 3.56013647727273 3.57646912087912
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.60371771739131 3.60989406593407 3.61620766666667
##       0                1                3                4
##       1                0                0                0
##        y_rate_len
## safeh20 3.62266314606742 3.62411744680851 3.63038032258065
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.63677934782609 3.64331901098901 3.650004 3.6630864516129
##       0                1                4        3               1
##       1                0                0        0               0
##        y_rate_len
## safeh20 3.66984097826087 3.68380033333333 3.68578835294118
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.69101528089887 3.69839420454546 3.7101689010989 3.72519134831461
##       0                1                1               3                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 3.72849870967742 3.73596423913043 3.74359384615384
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.74359384615385 3.751393 3.76120483870968 3.77701879120879
##       0                1        2                1                2
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.78518933333333 3.7942481443299 3.8020875 3.81044373626374
##       0                1               1         3                1
##       1                0               0         0                0
##        y_rate_len
## safeh20 3.81898566666667 3.82661709677419 3.84049242424242
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.86189561797753 3.88657833333333 3.90127239130435
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.91071857142857 3.91534117021277 3.91571310344828
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.91907480769231 3.92037466666667 3.92473548387097
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.93433402173913 3.94034522727273 3.94414351648352 3.954171
##       0                3                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.95744161290323 3.96739565217391 3.97756846153846
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.99014774193548 4.00947409090909 4.01099340659341
##       0                1                1                3
##       1                0                0                0
##        y_rate_len
## safeh20 4.02059827586207 4.02285387096774 4.03351891304348 4.0778432967033
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 4.09964217391304 4.12097225806452 4.12315266666667
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.13270380434783 4.1418485106383 4.14469318681319 4.16576543478261
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 4.17811813186813 4.18638451612903 4.20365629213483
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.21154307692308 4.23188869565217 4.23892308510638 4.258338
##       0                2                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 4.27200842696629 4.28598954545455 4.31720903225806
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.33107358695652 4.33525379310345 4.34524285714286 4.359727
##       0                1                1                2        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 4.39719684782609 4.47706483146067 4.52870866666667
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.63009766666667 4.67949230769231 4.83287566666667 5.576395
##       0                1                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 2.46535357894737 2.58865531914894 2.71105369565217
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.94139516483516 2.94139516483517 2.97554673913043
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.00896387096774 3.07546633333333 3.14194483516483 3.143059
##       0                1                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.20697815217391 3.244448 3.30053553191489 3.30331903225806
##       0                1        1                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.37963333333333 3.4093443956044 3.41342966666667 3.43840956521739
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 3.44276934065934 3.447226 3.45178280898876 3.46684967741935
##       0                2        1                2                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.50961923076923 3.51481866666667 3.52704287234043
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.54304417582418 3.57065608695652 3.59767419354839
##       0                1                4                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.60371771739131 3.60989406593407 3.62411744680851
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.62926534090909 3.64331901098901 3.65647563829787
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.66984097826087 3.68380033333333 3.71759666666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.73596423913044 3.77586620689655 3.78518933333333 3.8020875
##       0                1                1                2         4
##       1                0                0                0         0
##        y_rate_len
## safeh20 3.81044373626374 3.81898566666667 3.83514913043478 3.852782
##       0                1                2                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.8547897029703 3.92882375 3.93433402173913 3.94513633663366
##       0               1          1                1                1
##       1               0          0                0                0
##        y_rate_len
## safeh20 3.954171 3.96442382022472 3.97756846153846 3.98796733333333
##       0        3                1                1                1
##       1        0                0                0                0
##        y_rate_len
## safeh20 3.99859988764045 4.0004572826087 4.01099340659341 4.03351891304348
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 4.03421494736842 4.05556 4.08826612903226 4.11126824175824
##       0                1       1                1                1
##       1                0       0                0                0
##        y_rate_len
## safeh20 4.12097225806451 4.12798071428571 4.13270380434783
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.13530415730337 4.18638451612903 4.20656489361702
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.21909064516129 4.22109306122449 4.23188869565218
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.26495032608696 4.29213433333333 4.29801195652174
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 4.34036056179775 4.359727 4.37021551724138 4.3786678021978
##       0                1        1                1               2
##       1                0        0                0               0
##        y_rate_len
## safeh20 4.44013896551724 4.461116 4.47894263736264 4.48073967741936
##       0                1        1                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 4.49491233333333 4.51236758241758 4.54579252747253 4.562505
##       0                1                1                2        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 4.57921747252747 4.59630133333333 4.67949230769231
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 4.68212123595506 4.71629730337079 4.72781315217391
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.75665414893617 4.77976714285714 4.80780096774194
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.93862548387097 4.9831614893617 5.09149108695652 5.10324633333333
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 5.30674340425532 5.33910159574468 5.34914379310345
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 5.39981865168539 5.4148410989011 5.779173 5.94815466666667 6.08334
##       0                1               1        1                1       1
##       1                0               0        0                0       0
##        y_rate_len
## safeh20 2.23947131868132 2.24504214285714 2.46067685393258
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.46713233333333 2.51268391304348 2.57610826530612 2.623440375
##       0                2                1                1           1
##       1                0                0                0           0
##        y_rate_len
## safeh20 2.63155719101123 2.64493043478261 2.6739956043956 2.71460870967742
##       0                1                2               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 2.77129933333333 2.77427043956044 2.77717695652174
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.80769538461538 2.86884784090909 2.87454527472528
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.87636184782609 2.90797021978022 2.94139516483517
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.94459542553192 2.97482010989011 2.97554673913043
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.97959510204082 3.00316784810126 3.00787366666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.00860836956522 3.04167 3.07509494505494 3.07546633333333
##       0                1       3                1                1
##       1                0       0                0                0
##        y_rate_len
## safeh20 3.07584606741573 3.10851989010989 3.13978838709677
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.14194483516483 3.143059 3.14419820224719 3.17391652173913
##       0                2        2                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.17685533333333 3.17992772727273 3.18151689655172
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.20520064516129 3.21255033707865 3.23790677419355
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.27061290322581 3.27564461538461 3.30331903225806
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.30906956043956 3.31204066666667 3.34249450549451 3.345837
##       0                1                1                2        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.34925460674157 3.36873129032258 3.37228630434782
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.37228630434783 3.37591945054945 3.37963333333333
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.40143741935484 3.4093443956044 3.41342966666667 3.41760674157303
##       0                1               2                1                2
##       1                0               0                0                0
##        y_rate_len
## safeh20 3.43840956521739 3.45178280898876 3.459899625 3.46684967741936
##       0                3                1           1                2
##       1                0                0           0                0
##        y_rate_len
## safeh20 3.47619428571429 3.48102233333333 3.49100761363636
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.49468468085106 3.49955580645161 3.50453282608696
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.50961923076923 3.51481866666667 3.52013494382022
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.52013494382023 3.53226193548387 3.53759445652174
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.54304417582418 3.56496806451613 3.57065608695652
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.58241133333333 3.58848707865168 3.60989406593407
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.61620766666667 3.62266314606742 3.64331901098901 3.650004
##       0                2                1                2        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.67674395604396 3.69101528089887 3.69579258064516
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.70290260869565 3.7101689010989 3.71759666666667 3.7211920212766
##       0                1               2                1               1
##       1                0               0                0               0
##        y_rate_len
## safeh20 3.72519134831461 3.72849870967742 3.74359384615384
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.74359384615385 3.751393 3.75936741573034 3.76902586956522
##       0                1        2                3                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 3.77701879120879 3.79354348314607 3.81826659574468
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.81898566666667 3.82661709677419 3.83514913043478
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.86189561797753 3.86821076086957 3.87121636363636
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 3.87729362637363 3.88657833333333 3.90127239130435
##       0                2                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.91071857142857 3.94034522727273 3.94414351648352 3.954171
##       0                1                1                1        2
##       1                0                0                0        0
##        y_rate_len
## safeh20 3.97756846153846 3.99014774193548 3.99859988764045
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.00947409090909 4.02176366666667 4.03351891304348
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 4.04441835164835 4.06658054347826 4.06695202247191
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.11126824175824 4.13270380434783 4.1418485106383 4.16576543478261
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 4.17811813186813 4.19074533333333 4.21154307692308
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.22454166666667 4.258338 4.27200842696629 4.30618449438202
##       0                1        1                2                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 4.32593066666667 4.33107358695652 4.33599765957447 4.359727
##       0                1                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 4.36413521739131 4.47706483146067 4.562505 4.57921747252747
##       0                1                1        2                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 4.63779386138614 4.71291725274725 4.72781315217391
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 4.79393641304348 5.02388191011236 5.03565366666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 5.60487505617977
##       0                1
##       1                0
##        y_rate_len
## safeh20 1.5785882278481 1.72239144578313 1.87968370786517 1.92966161290323
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 2.06533148148148 2.08672709302326 2.20120855263158
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.22144438202247 2.2812525 2.29893662790698 2.35367321428571
##       0                0         0                0                0
##       1                1         1                1                1
##        y_rate_len
## safeh20 2.38988357142857 2.45407465909091 2.471356875 2.47577790697674
##       0                0                0           0                0
##       1                1                1           1                2
##        y_rate_len
## safeh20 2.48863909090909 2.50490470588235 2.51268391304348
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.51403336734694 2.534725 2.54068905882353 2.55008696969697
##       0                0        0                0                0
##       1                1        1                1                1
##        y_rate_len
## safeh20 2.60191048192771 2.60231766666667 2.61649032258065
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.63155719101124 2.64335607142857 2.64804211764706 2.66146125
##       0                0                0                0          0
##       1                2                2                1          1
##        y_rate_len
## safeh20 2.67520373493976 2.67799206521739 2.68615012987013
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.68798744186047 2.70782817073171 2.71577678571429 2.7172252
##       0                0                0                0         0
##       1                1                1                2         1
##        y_rate_len
## safeh20 2.71961082352941 2.74849698795181 2.76515454545455
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.77129933333333 2.77215493670886 2.775523875 2.7881975
##       0                0                0           0         0
##       1                1                1           1         2
##        y_rate_len
## safeh20 2.79117952941176 2.79693793103448 2.81065708860759 2.81354475
##       0                0                0                0          0
##       1                1                1                1          1
##        y_rate_len
## safeh20 2.82696388235294 2.838892 2.851565625 2.85620231707317
##       0                0        0           0                0
##       1                3        1           1                2
##        y_rate_len
## safeh20 2.85843686746988 2.86061821428571 2.87454527472528
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.89682857142857 2.89853258823529 2.90019697674418
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.90182310344827 2.90341227272727 2.90648466666667
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.90942347826087 2.9166698630137 2.9303893902439 2.93431694117647
##       0                0               0               0                0
##       1                3               1               1                2
##        y_rate_len
## safeh20 2.93678482758621 2.93797670454545 2.93914179775281 2.940281
##       0                0                0                0        0
##       1                3                1                2        1
##        y_rate_len
## safeh20 2.96367846153846 2.96466569620253 2.96562825 2.96656703703704
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 2.96748292682927 2.96837674698795 2.96924928571428
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.96924928571429 2.97174655172414 2.97254113636364
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.97331786516854 2.978301875 3.003649125 3.00411851851852
##       0                0           0           0                0
##       1                1           1           2                1
##        y_rate_len
## safeh20 3.00502337349398 3.00630174418605 3.00670827586207
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.00710556818182 3.00787366666667 3.00860836956522 3.04167
##       0                0                0                0       0
##       1                1                1                1      15
##        y_rate_len
## safeh20 3.07546633333333 3.07584606741573 3.07788035714286
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 3.07831662650602 3.07876353658536 3.07922148148148
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 3.10638638297872 3.11079886363636 3.11159344827586
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.11323870588235 3.11496325301205 3.11585707317073 3.11771175
##       0                0                0                0          0
##       1                3                1                1          1
##        y_rate_len
## safeh20 3.12500342465753 3.143059 3.14536329545455 3.14655517241379
##       0                0        0                0                0
##       1                1        1                1                3
##        y_rate_len
## safeh20 3.14777476744186 3.14902305882353 3.15160987951807
##       0                0                0                0
##       1                2                3                2
##        y_rate_len
## safeh20 3.16974031578947 3.17110276595745 3.17249451612903
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.17536978021978 3.17837426966292 3.18151689655172
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.18314302325581 3.18480741176471 3.18651142857143 3.1882565060241
##       0                0                0                0               0
##       1                1                3                1               1
##        y_rate_len
## safeh20 3.19187592592593 3.1937535 3.19567860759494 3.20697815217391
##       0                0         0                0                0
##       1                2         1                1                2
##        y_rate_len
## safeh20 3.20879472527473 3.21065166666667 3.21255033707865
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.21449215909091 3.22059176470588 3.22272178571428
##       0                0                0                0
##       1                2                1                4
##        y_rate_len
## safeh20 3.22490313253012 3.22713768292683 3.231774375 3.24003978260869
##       0                0                0           0                0
##       1                2                1           2                1
##        y_rate_len
## safeh20 3.24221967032967 3.2483854368932 3.25144034482759 3.25387953488372
##       0                0               0                0                0
##       1                1               1                1                2
##        y_rate_len
## safeh20 3.25637611764706 3.25893214285714 3.26154975903615
##       0                0                0                0
##       1                3                5                1
##        y_rate_len
## safeh20 3.26423121951219 3.27564461538462 3.28362102272727
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.28640206896552 3.28924779069767 3.29216047058824 3.2951425
##       0                0                0                0         0
##       1                1                1                3         1
##        y_rate_len
## safeh20 3.29819638554217 3.30132475609756 3.30331903225806
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.31118506329114 3.31204066666667 3.31818545454546
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.32136379310345 3.32461604651163 3.33135285714286
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.33484301204819 3.34249450549451 3.345837 3.34925460674157
##       0                0                0        0                0
##       1                3                1        1                1
##        y_rate_len
## safeh20 3.35274988636364 3.35363615384615 3.35632551724138 3.358510625
##       0                0                0                0           0
##       1                1                1                3           1
##        y_rate_len
## safeh20 3.35998430232558 3.36372917647059 3.36756321428571
##       0                0                0                0
##       1                2                5                3
##        y_rate_len
## safeh20 3.37148963855422 3.37551182926829 3.37591945054945
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.37963333333333 3.3834306741573 3.38731431818182 3.38818936708861
##       0                0               0                0                0
##       1                4               1                1                2
##        y_rate_len
## safeh20 3.3901946875 3.39263192307692 3.39535255813953 3.39535255813954
##       0            0                0                0                0
##       1            2                1                3                3
##        y_rate_len
## safeh20 3.39951352941176 3.40143741935484 3.40377357142857
##       0                0                0                0
##       1                3                1                4
##        y_rate_len
## safeh20 3.40534793478261 3.40813626506024 3.4093443956044 3.41342966666667
##       0                0                0               0                0
##       1                1                2               1                3
##        y_rate_len
## safeh20 3.41718481481481 3.42187875 3.42624896551724 3.43072081395349
##       0                0          0                0                0
##       1                1          1                1                2
##        y_rate_len
## safeh20 3.4341435483871 3.43529788235294 3.43998392857143 3.44478289156626
##       0               0                0                0                0
##       1               1                1                5                1
##        y_rate_len
## safeh20 3.447226 3.45178280898876 3.45473629629629 3.46121068965517
##       0        0                0                0                0
##       1        1                2                2                2
##        y_rate_len
## safeh20 3.46608906976744 3.47108223529412 3.47147119565217
##       0                0                0                0
##       1                1                7                1
##        y_rate_len
## safeh20 3.47619428571428 3.47619428571429 3.48102233333333
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.48142951807229 3.49100761363636 3.49228777777778 3.4979205
##       0                0                0                0         0
##       1                2                2                1         2
##        y_rate_len
## safeh20 3.50453282608696 3.50686658823529 3.50723173469388
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.51240464285714 3.52193368421052 3.52193368421053 3.5283372
##       0                0                0                0         0
##       1                2                1                2         1
##        y_rate_len
## safeh20 3.52983925925926 3.53113413793103 3.53226193548387
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.53682558139535 3.54265094117647 3.5433887628866 3.548615
##       0                0                0               0        0
##       1                3                3               1        1
##        y_rate_len
## safeh20 3.55472277108434 3.56013647727273 3.56097951219512
##       0                0                0                0
##       1                2                4                3
##        y_rate_len
## safeh20 3.56609586206896 3.56739074074074 3.5688928 3.56930663265306
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 3.5721938372093 3.57396225 3.57843529411765 3.58070012658228
##       0               0          0                0                0
##       1               2          1                1                1
##        y_rate_len
## safeh20 3.58241133333333 3.58482535714286 3.58761076923077
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.58848707865168 3.59470090909091 3.59807304878049 3.6010575862069
##       0                0                0                0               0
##       1                1                2                1               2
##        y_rate_len
## safeh20 3.6037177173913 3.60494222222222 3.60756209302325 3.611983125
##       0               0                0                0           0
##       1               2                1                2           1
##        y_rate_len
## safeh20 3.61421964705882 3.61620766666667 3.62103571428571
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 3.62266314606742 3.62801602409639 3.63516658536585
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.63601931034483 3.63677934782609 3.6424937037037 3.64331901098901
##       0                0                0               0                0
##       1                2                2               2                1
##        y_rate_len
## safeh20 3.6436671875 3.650004 3.65683921348315 3.65724607142857
##       0            0        0                0                0
##       1            1        1                4                3
##        y_rate_len
## safeh20 3.66382977272727 3.66466265060241 3.66560230769231
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.66984097826087 3.67098103448276 3.67674395604396
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 3.67829860465116 3.68578835294118 3.68883382978723
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 3.69345642857143 3.69620658227848 3.69839420454545
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 3.69839420454546 3.70130927710843 3.70935365853659 3.7101689010989
##       0                0                0                0               0
##       1                1                3                1               1
##        y_rate_len
## safeh20 3.71320753246753 3.71366686046512 3.71759666666667
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.72157270588235 3.72604575 3.72966678571428 3.73295863636364
##       0                0          0                0                0
##       1                2          1                5                2
##        y_rate_len
## safeh20 3.73470873417721 3.73795590361446 3.74090448275862
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 3.74359384615385 3.74644719512195 3.751393 3.75936741573034
##       0                0                0        0                0
##       1                1                1        2                1
##        y_rate_len
## safeh20 3.764066625 3.76587714285714 3.76902586956522 3.77321088607595
##       0           0                0                0                0
##       1           1                3                1                1
##        y_rate_len
## safeh20 3.77460253012048 3.77586620689655 3.77807431578947
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.78440337209302 3.78518933333333 3.79314141176471
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.79354348314607 3.8020875 3.81044373626374 3.81124915662651
##       0                0         0                0                0
##       1                1         4                1                2
##        y_rate_len
## safeh20 3.82063426829268 3.82158538461538 3.82381371428572
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.82892576470588 3.83025111111111 3.83665193181818
##       0                0                0                0
##       1                3                1                3
##        y_rate_len
## safeh20 3.83829785714286 3.84578965517241 3.84789578313253
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 3.85563802816901 3.85772780487805 3.86189561797753
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.86471011764706 3.87450821428571 3.88075137931035 3.8933376
##       0                0                0                0         0
##       1                3                1                2         1
##        y_rate_len
## safeh20 3.89482134146341 3.89607168539326 3.90127239130435
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.90535407407407 3.90578079545454 3.90614463157895
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 3.91071857142857 3.91571310344828 3.92037466666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.92118903614458 3.92721949367089 3.93024775280899
##       0                0                0                0
##       1                4                1                2
##        y_rate_len
## safeh20 3.93191487804878 3.93627882352941 3.94290555555556
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.94692892857143 3.94769936170213 3.96124465116279
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.97206317647059 3.97490965909091 3.97756846153846
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.98313928571429 3.98563655172414 3.98796733333333 3.992191875
##       0                0                0                0           0
##       1                1                2                1           1
##        y_rate_len
## safeh20 3.99448228915663 3.99859988764045 4.00610195121951
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.00784752941177 4.01656423076923 4.01934964285714
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.02059827586207 4.03112891566265 4.0319811627907 4.04363188235294
##       0                0                0               0                0
##       1                1                1               4                1
##        y_rate_len
## safeh20 4.04403852272727 4.05556 4.06658054347826 4.06695202247191
##       0                0       0                0                0
##       1                1       2                1                2
##        y_rate_len
## safeh20 4.06777554216868 4.10112808988764 4.1044221686747 4.1062545
##       0                0                0               0         0
##       1                4                1               1         2
##        y_rate_len
## safeh20 4.11316738636364 4.12097225806452 4.12315266666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.12548344827586 4.12798071428571 4.13066296296296
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 4.13355153846154 4.14773181818182 4.15098494117647
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.15823240506329 4.1694802247191 4.17345418604651 4.1772268
##       0                0               0                0         0
##       1                2               1                1         1
##        y_rate_len
## safeh20 4.17771542168675 4.19074533333333 4.19540689655172
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.20040142857143 4.20365629213483 4.21686068181818 4.2177824
##       0                0                0                0         0
##       1                1                1                1         1
##        y_rate_len
## safeh20 4.220317125 4.23036862068966 4.23188869565217 4.2510086746988
##       0           0                0                0               0
##       1           1                1                1               1
##        y_rate_len
## safeh20 4.25142511363636 4.27200842696629 4.27282214285714
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 4.27839296703297 4.29412235294118 4.30029206896552
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.30574064935065 4.31492720930233 4.32990670588235
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.34524285714286 4.359727 4.36569105882353 4.372400625
##       0                0        0                0           0
##       1                1        1                1           1
##        y_rate_len
## safeh20 4.38566372093023 4.39352333333333 4.4014754117647 4.40517724137931
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 4.41766357142857 4.45387392857143 4.461116 4.4686262962963
##       0                0                0        0               0
##       1                1                1        1               1
##        y_rate_len
## safeh20 4.48831792682927 4.52541146341463 4.52713674418605
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.54167164383562 4.54325392405063 4.54461282352941
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.57921747252747 4.58128074074074 4.59871535714286
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.61747493975904 4.67113607142857 4.72741481927711 5.056776375
##       0                0                0                0           0
##       1                1                2                1           1
##        y_rate_len
## safeh20 5.25050178571429
##       0                0
##       1                1
##        y_rate_len
## safeh20 1.46586506024096 1.79883709677419 1.88144536082474
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.88793310344828 1.99022851851852 2.01638797752809
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.06958989690722 2.07092425531915 2.09319225806452
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.10020071428571 2.11127682352941 2.11594434782609
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.13919648351648 2.17262142857143 2.17755920454545
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.18284552941177 2.21212363636364 2.230558 2.24668806818182
##       0                0                0        0                0
##       1                1                1        1                2
##        y_rate_len
## safeh20 2.24819086956522 2.25441423529412 2.27289626373626 2.2812525
##       0                0                0                0         0
##       1                1                1                1         3
##        y_rate_len
## safeh20 2.28942903225806 2.31431413043478 2.31581693181818
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.34243551724138 2.34538409638554 2.34737576086957
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.35038136363636 2.35038136363637 2.35729425 2.38043739130435
##       0                0                0          0                0
##       1                2                1          1                2
##        y_rate_len
## safeh20 2.40504139534884 2.40659604395604 2.41951022727273
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 2.42609392857143 2.42686436170213 2.433336 2.44002098901099
##       0                0                0        0                0
##       1                1                1        1                1
##        y_rate_len
## safeh20 2.45407465909091 2.46713233333333 2.47344593406593
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.47577790697674 2.47839777777778 2.4796222826087 2.49197060240964
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 2.50092866666667 2.50263987341772 2.50687087912088 2.50937775
##       0                0                0                0          0
##       1                1                1                1          1
##        y_rate_len
## safeh20 2.51724413793103 2.52320352272727 2.534725 2.5399512371134
##       0                0                0        0               0
##       1                1                2        2               1
##        y_rate_len
## safeh20 2.55107806451613 2.55776795454545 2.56140631578947 2.5664090625
##       0                0                0                0            0
##       1                1                1                2            1
##        y_rate_len
## safeh20 2.57372076923077 2.5764734117647 2.57647341176471 2.58378419354839
##       0                0               0                0                0
##       1                2               1                1                1
##        y_rate_len
## safeh20 2.59233238636364 2.60231766666667 2.61225776470588
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 2.61725093023256 2.62689681818182 2.63155719101124 2.636114
##       0                0                0                0        0
##       1                2                1                1        2
##        y_rate_len
## safeh20 2.64493043478261 2.6491964516129 2.67799206521739 2.68947663157895
##       0                0               0                0                0
##       1                2               1                1                1
##        y_rate_len
## safeh20 2.69205275862069 2.69602568181818 2.70370666666667
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.70782817073171 2.71105369565217 2.72149421052632 2.724829375
##       0                0                0                0           0
##       1                1                1                1           1
##        y_rate_len
## safeh20 2.72809577319588 2.73059011363636 2.73408539325843
##       0                0                0                0
##       1                1                4                3
##        y_rate_len
## safeh20 2.74411532608696 2.75198714285714 2.76515454545455
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 2.77427043956044 2.7881975 2.79409220930232 2.79693793103448
##       0                0         0                0                0
##       1                1         1                1                1
##        y_rate_len
## safeh20 2.79971897727273 2.80243752808989 2.80769538461538
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.81023858695652 2.81516265957447 2.82216804123711
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.82696388235294 2.83428340909091 2.84112032967033
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.84752085106383 2.851565625 2.85352546391753 2.85843686746988
##       0                0           0                0                0
##       1                1           1                2                2
##        y_rate_len
## safeh20 2.86061821428571 2.87636184782609 2.89853258823529
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.90182310344827 2.90648466666667 2.91223723404255
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.91624030927835 2.93173012048193 2.93678482758621
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.93797670454545 2.94139516483516 2.94248510869565
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 2.96466569620253 2.96562825 2.96656703703704 2.96924928571429
##       0                0          0                0                0
##       1                1          1                1                1
##        y_rate_len
## safeh20 2.97093348837209 2.97174655172414 2.97254113636364
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 2.97331786516854 2.97407733333333 2.97554673913043
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.00411851851852 3.00545964285714 3.00588564705882
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.00630174418605 3.00670827586207 3.00787366666667
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 3.00824505494505 3.00860836956522 3.00965242105263
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 3.01031257731959 3.04167 3.0733540625 3.07402819148936
##       0                0       0            0                0
##       1                2      17            1                1
##        y_rate_len
## safeh20 3.07473163043478 3.07509494505495 3.07546633333333
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.07623443181818 3.07663172413793 3.07831662650603
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.07876353658537 3.07922148148148 3.10374489795918
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.10779326086956 3.10851989010989 3.10926266666667
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.11002213483146 3.11079886363636 3.11159344827586
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 3.11240651162791 3.11409071428571 3.11496325301205
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.13574226804124 3.14085489130435 3.14194483516483 3.143059
##       0                0                0                0        0
##       1                1                2                1        2
##        y_rate_len
## safeh20 3.14536329545454 3.14536329545455 3.14655517241379 3.1633368
##       0                0                0                0         0
##       1                1                6                2         1
##        y_rate_len
## safeh20 3.16840625 3.17110276595745 3.17249451612903 3.17536978021978
##       0          0                0                0                0
##       1          1                1                2                3
##        y_rate_len
## safeh20 3.17685533333333 3.17992772727273 3.18151689655172
##       0                0                0                0
##       1                1                7                1
##        y_rate_len
## safeh20 3.18314302325581 3.19187592592593 3.20175789473684
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 3.20346095744681 3.20520064516129 3.20697815217391
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.20879472527473 3.21065166666667 3.21255033707865
##       0                0                0                0
##       1                1                3                4
##        y_rate_len
## safeh20 3.21449215909091 3.21647862068966 3.21851127906977
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.22272178571428 3.22490313253012 3.22713768292683
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.22942740740741 3.22981453608247 3.22981453608248
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.23581914893617 3.23664884615384 3.23790677419355
##       0                0                0                0
##       1                1                1                5
##        y_rate_len
## safeh20 3.24003978260869 3.24221967032967 3.244448 3.24672640449438
##       0                0                0        0                0
##       1                3                3        1                5
##        y_rate_len
## safeh20 3.24905659090909 3.25144034482759 3.25637611764706
##       0                0                0                0
##       1                6                1                1
##        y_rate_len
## safeh20 3.25893214285714 3.26154975903614 3.26817734042553
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.27061290322581 3.27310141304348 3.27824433333333
##       0                0                0                0
##       1                2                3                2
##        y_rate_len
## safeh20 3.28090247191011 3.28362102272727 3.28924779069767
##       0                0                0                0
##       1                1                4                3
##        y_rate_len
## safeh20 3.28924779069768 3.29216047058824 3.2951425 3.29781063157895
##       0                0                0         0                0
##       1                1                1         1                2
##        y_rate_len
## safeh20 3.29819638554217 3.30053553191489 3.30331903225806
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.30616304347826 3.30906956043956 3.31204066666667
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 3.31507853932584 3.31818545454546 3.32136379310345
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 3.32461604651163 3.32794482352941 3.32982821052632
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.33289372340425 3.33484301204819 3.33602516129032
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.33922467391304 3.34249450549451 3.345837 3.34890939393939
##       0                0                0        0                0
##       1                3                3        2                1
##        y_rate_len
## safeh20 3.34925460674157 3.35204448979592 3.35274988636364
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 3.35363615384615 3.35524422680412 3.35632551724138
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.36184578947368 3.36372917647059 3.36525191489362
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 3.36756321428571 3.36873129032258 3.37148963855422
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.37228630434782 3.37228630434783 3.37591945054945
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 3.37963333333333 3.3834306741573 3.38731431818182 3.38818936708861
##       0                0               0                0                0
##       1                1               1                5                1
##        y_rate_len
## safeh20 3.39951352941176 3.40143741935484 3.40534793478261
##       0                0                0                0
##       1                1                4                2
##        y_rate_len
## safeh20 3.40934439560439 3.4093443956044 3.41260536585366 3.41342966666666
##       0                0               0                0                0
##       1                1               1                2                2
##        y_rate_len
## safeh20 3.41342966666667 3.41718481481481 3.41760674157303 3.42187875
##       0                0                0                0          0
##       1                1                1                2          6
##        y_rate_len
## safeh20 3.42624896551724 3.42996829787234 3.4341435483871 3.43840956521739
##       0                0                0               0                0
##       1                1                1               6                4
##        y_rate_len
## safeh20 3.43998392857143 3.44276934065934 3.44478289156627 3.447226
##       0                0                0                0        0
##       1                2                4                1        3
##        y_rate_len
## safeh20 3.45178280898876 3.45644318181818 3.46519367088608
##       0                0                0                0
##       1                2               15                1
##        y_rate_len
## safeh20 3.46608906976744 3.47108223529412 3.47147119565217
##       0                0                0                0
##       1                2                3                2
##        y_rate_len
## safeh20 3.47619428571429 3.48067391752577 3.48102233333333
##       0                0                0                0
##       1                3                1                5
##        y_rate_len
## safeh20 3.48142951807229 3.48595887640449 3.49100761363636
##       0                0                0                0
##       1                2                3                4
##        y_rate_len
## safeh20 3.49228777777778 3.4961724137931 3.50145732558139 3.50686658823529
##       0                0               0                0                0
##       1                1               2                1                2
##        y_rate_len
## safeh20 3.51240464285714 3.51481866666667 3.52013494382022
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.52013494382023 3.52557204545454 3.52557204545455
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 3.52704287234043 3.52983925925926 3.53113413793103
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.53226193548387 3.54265094117647 3.54304417582418 3.548615
##       0                0                0                0        0
##       1                1                1                1        3
##        y_rate_len
## safeh20 3.55472277108434 3.55940106382979 3.56013647727273
##       0                0                0                0
##       1                3                1                6
##        y_rate_len
## safeh20 3.56097951219512 3.56609586206896 3.56609586206897
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.56739074074074 3.5721938372093 3.57601743243243 3.57646912087912
##       0                0               0                0                0
##       1                1               2                1                1
##        y_rate_len
## safeh20 3.57843529411765 3.58070012658228 3.58848707865168
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 3.59470090909091 3.6037177173913 3.60494222222222 3.60989406593407
##       0                0               0                0                0
##       1                5               1                1                1
##        y_rate_len
## safeh20 3.611983125 3.61421964705882 3.61620766666667 3.62266314606742
##       0           0                0                0                0
##       1           2                1                1                1
##        y_rate_len
## safeh20 3.62801602409639 3.62926534090909 3.63677934782609 3.6424937037037
##       0                0                0                0               0
##       1                1                7                1               1
##        y_rate_len
## safeh20 3.650004 3.65683921348314 3.65724607142857 3.66382977272727
##       0        0                0                0                0
##       1        1                1                2                3
##        y_rate_len
## safeh20 3.66466265060241 3.66984097826087 3.67098103448276
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.68578835294118 3.688024875 3.69579258064516 3.70130927710843
##       0                0           0                0                0
##       1                3           1                1                1
##        y_rate_len
## safeh20 3.70290260869565 3.7101689010989 3.71366686046512 3.71759666666667
##       0                0               0                0                0
##       1                1               3                2                1
##        y_rate_len
## safeh20 3.72519134831461 3.72966678571429 3.73470873417722
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.73596423913043 3.74359384615385 3.74903511627907
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.75514814814815 3.76120483870968 3.76587714285714
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.76752306818182 3.77460253012048 3.77701879120879
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 3.78354073170732 3.78440337209302 3.78518933333333
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.78590840425532 3.79221194805195 3.79314141176471 3.8020875
##       0                0                0                0         0
##       1                1                1                1         5
##        y_rate_len
## safeh20 3.81082793103448 3.81977162790698 3.82661709677419 3.8277195505618
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 3.82892576470588 3.83025111111111 3.83665193181818
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.84578965517241 3.86471011764706 3.87729362637363
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.87968112244898 3.88657833333333 3.88832041237113
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.89050813953488 3.89482134146341 3.89607168539326
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.92037466666667 3.92118903614458 3.93627882352941
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 3.93816221052631 3.94414351648352 3.96442382022472
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.97206317647059 3.97490965909091 3.97756846153846
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.98313928571429 3.992191875 3.99661290697675 4.00784752941177
##       0                0           0                0                0
##       1                1           1                1                1
##        y_rate_len
## safeh20 4.01241574468085 4.02059827586207 4.02285387096774
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.03112891566265 4.04363188235294 4.04477393617021 4.05556
##       0                0                0                0       0
##       1                1                1                1       2
##        y_rate_len
## safeh20 4.06984014084507 4.08826612903226 4.10112808988764 4.1044221686747
##       0                0                0                0               0
##       1                1                1                1               5
##        y_rate_len
## safeh20 4.1062545 4.11316738636364 4.11738256097561 4.12798071428571
##       0         0                0                0                0
##       1         1                1                1                2
##        y_rate_len
## safeh20 4.14106879518072 4.15098494117647 4.16228526315789
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.16821444444444 4.1900556122449 4.19540689655172 4.21436204819277
##       0                0               0                0                0
##       1                1               1                3                1
##        y_rate_len
## safeh20 4.22255364705882 4.23036862068966 4.23523670886076
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.24331740740741 4.24419069767442 4.26575670731707
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.28598954545455 4.28765530120482 4.29412235294118 4.296358875
##       0                0                0                0           0
##       1                1                1                1           1
##        y_rate_len
## safeh20 4.30029206896552 4.33994378048781 4.359727 4.41413085365854
##       0                0                0        0                0
##       1                1                1        1                1
##        y_rate_len
## safeh20 4.41766357142857 4.42103197674419 4.45833821917808
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 4.50753506024096 4.5100624137931 4.52713674418605 4.54502413793103
##       0                0               0                0                0
##       1                1               2                1                2
##        y_rate_len
## safeh20 4.54615193548387 4.61618152941177 4.63669207317073 4.7357646835443
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 4.74797268292683 4.82699804347826 4.85925329268292
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25634195652174 1.25862206896552 1.38564966666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60823931034483 1.65308152173913 1.74896025 1.79568469879518
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 2.00109868421053 2.04912505263158 2.07797257425743
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.11761835443038 2.13641107142857 2.16366216494845
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.20604637362637 2.21512923913044 2.22820011627907
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.23271521276596 2.24504214285714 2.24668806818182
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.28942903225806 2.28979651685393 2.29743159574468
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.30429545454545 2.30632120879121 2.33501939393939
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.35180670103093 2.35367321428571 2.3731710989011 2.40131842105263
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 2.40504139534884 2.433336 2.4408462962963 2.44656065217391
##       0                0        0               0                0
##       1                1        1               1                2
##        y_rate_len
## safeh20 2.45195846938775 2.45407465909091 2.48299591836735 2.4995901980198
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 2.50859381443299 2.51594925925926 2.52861722891566 2.534725
##       0                0                0                0        0
##       1                1                1                1        1
##        y_rate_len
## safeh20 2.5399512371134 2.54068905882353 2.547398625 2.56140631578947
##       0               0                0           0                0
##       1               1                1           1                1
##        y_rate_len
## safeh20 2.56526385542169 2.57372076923077 2.58378419354839 2.5871675862069
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 2.598093125 2.60191048192771 2.61225776470588 2.6158362
##       0           0                0                0         0
##       1           1                1                1         1
##        y_rate_len
## safeh20 2.62418588235294 2.62689681818182 2.63855710843373
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 2.64057065934066 2.64804211764706 2.6491964516129 2.65261918604651
##       0                0                0               0                0
##       1                2                1               1                1
##        y_rate_len
## safeh20 2.65709103448276 2.65745905263158 2.66573325842697 2.6692206122449
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 2.67298272727273 2.68190258064516 2.68382647058824
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 2.69205275862069 2.6999093258427 2.70025806122449 2.70742054945055
##       0                0               0                0                0
##       1                1               1                1                2
##        y_rate_len
## safeh20 2.71039900990099 2.71577678571429 2.72149421052632 2.724829375
##       0                0                0                0           0
##       1                1                1                1           1
##        y_rate_len
## safeh20 2.72701448275862 2.72809577319588 2.737503 2.74731483870968
##       0                0                0        0                0
##       1                1                2        1                1
##        y_rate_len
## safeh20 2.74849698795181 2.74920173076923 2.75198714285714
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.75351178947368 2.75872395348837 2.76233295918367
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.77215493670886 2.77427043956044 2.77717695652174
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 2.78002096774194 2.7881975 2.79117952941176 2.79117952941177
##       0                0         0                0                0
##       1                1         2                1                1
##        y_rate_len
## safeh20 2.79693793103448 2.7983364 2.80769538461538 2.80769538461539
##       0                0         0                0                0
##       1                1         1                1                1
##        y_rate_len
## safeh20 2.81023858695652 2.81272709677419 2.81516265957447
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 2.81754694736842 2.82179024096386 2.8287531 2.83086118811881
##       0                0                0         0                0
##       1                2                1         1                1
##        y_rate_len
## safeh20 2.83292794117647 2.83661359550562 2.838892 2.84112032967033
##       0                0                0        0                0
##       1                1                1        1                1
##        y_rate_len
## safeh20 2.8433002173913 2.84543322580645 2.84956452631579 2.851565625
##       0               0                0                0           0
##       1               1                1                2           1
##        y_rate_len
## safeh20 2.85732636363636 2.86884784090909 2.87078966292135
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.87268833333333 2.87636184782609 2.87813935483871
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.87987904255319 2.8832496875 2.88488288659794 2.89109227722772
##       0                0            0                0                0
##       1                1            3                1                1
##        y_rate_len
## safeh20 2.89401611650485 2.8950834939759 2.89682857142857 2.90648466666667
##       0                0               0                0                0
##       1                2               1                1                3
##        y_rate_len
## safeh20 2.90797021978022 2.90942347826087 2.91084548387097
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 2.91223723404255 2.91493375 2.91752020408163 2.92238882352941
##       0                0          0                0                0
##       1                1          2                1                1
##        y_rate_len
## safeh20 2.92354689320389 2.92901555555555 2.9303893902439 2.93173012048193
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 2.93303892857143 2.93431694117647 2.93556523255814
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.93914179775281 2.940281 2.94139516483516 2.94248510869565
##       0                0        0                0                0
##       1                1        1                2                3
##        y_rate_len
## safeh20 2.94561726315789 2.9466178125 2.94759773195876 2.94855765306122
##       0                0            0                0                0
##       1                2            1                2                1
##        y_rate_len
## safeh20 2.96562825 2.96656703703704 2.97010129411765 2.97093348837209
##       0          0                0                0                0
##       1          1                1                1                1
##        y_rate_len
## safeh20 2.97331786516854 2.97482010989011 2.97554673913043
##       0                0                0                0
##       1                3                3                3
##        y_rate_len
## safeh20 2.97625774193548 2.97695361702128 2.97763484210526
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 2.97895515463918 2.97959510204082 2.98202941176471
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.98317634615384 3.003649125 3.00502337349397 3.00588564705882
##       0                0           0                0                0
##       1                2           1                1                1
##        y_rate_len
## safeh20 3.00588564705883 3.00787366666667 3.00824505494505
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 3.00860836956522 3.00896387096774 3.01031257731959
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.01063255102041 3.0112533 3.01184970588235 3.04167 3.0720867
##       0                0         0                0       0         0
##       1                2         2                2      26         1
##        y_rate_len
## safeh20 3.07302742268041 3.0733540625 3.07368757894737 3.07402819148936
##       0                0            0                0                0
##       1                2            2                3                3
##        y_rate_len
## safeh20 3.07473163043478 3.07509494505494 3.07546633333333
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 3.07584606741573 3.07663172413793 3.07788035714286
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.07831662650602 3.10073155339806 3.10131058823529
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.10190108910891 3.10311787878788 3.10570515789474
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 3.10708225806452 3.10779326086956 3.10779326086957
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.10851989010989 3.10926266666667 3.11002213483146
##       0                0                0                0
##       1                4                3                3
##        y_rate_len
## safeh20 3.11079886363636 3.11159344827586 3.11323870588235
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.11409071428571 3.13026233009709 3.13384181818182
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.13574226804124 3.1367221875 3.1377227368421 3.13772273684211
##       0                0            0               0                0
##       1                1            1               3                2
##        y_rate_len
## safeh20 3.13874457446809 3.13978838709677 3.14085489130435
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 3.14194483516483 3.143059 3.14419820224719 3.14655517241379
##       0                0        0                0                0
##       1                5        2                1                1
##        y_rate_len
## safeh20 3.14777476744186 3.14902305882353 3.15030107142857
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.15160987951807 3.15979310679612 3.16017662337662
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.16095117647059 3.16456575757576 3.16581979591837
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 3.16709969072165 3.16840625 3.17249451612903 3.17391652173913
##       0                0          0                0                0
##       1                3          2                1                4
##        y_rate_len
## safeh20 3.17536978021978 3.17685533333333 3.17837426966292
##       0                0                0                0
##       1                6                7                3
##        y_rate_len
## safeh20 3.17992772727273 3.18314302325581 3.18480741176471 3.1882565060241
##       0                0                0                0               0
##       1                2                1                2               2
##        y_rate_len
## safeh20 3.19224772277228 3.19845711340206 3.2000903125 3.20175789473684
##       0                0                0            0                0
##       1                2                1            1                2
##        y_rate_len
## safeh20 3.20520064516129 3.20697815217391 3.20879472527472
##       0                0                0                0
##       1                2                4                1
##        y_rate_len
## safeh20 3.20879472527473 3.21065166666667 3.21255033707865
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 3.21449215909091 3.21647862068965 3.21851127906977
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.22059176470588 3.22236326732673 3.22272178571428 3.2241702
##       0                0                0                0         0
##       1                1                1                1         2
##        y_rate_len
## safeh20 3.22713768292683 3.22942740740741 3.22981453608247 3.231774375
##       0                0                0                0           0
##       1                1                1                1           3
##        y_rate_len
## safeh20 3.23377547368421 3.23418075949367 3.23581914893617
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 3.23790677419355 3.24003978260869 3.2400397826087 3.24221967032967
##       0                0                0               0                0
##       1                2                2               1                1
##        y_rate_len
## safeh20 3.244448 3.24639778846154 3.2483854368932 3.25041205882353
##       0        0                0               0                0
##       1        3                1               1                1
##        y_rate_len
## safeh20 3.25247881188119 3.25387953488372 3.2545869 3.25637611764706
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 3.25893214285714 3.26117195876289 3.2634584375 3.26579305263158
##       0                0                0            0                0
##       1                1                2            2                2
##        y_rate_len
## safeh20 3.27061290322581 3.27310141304348 3.27564461538461
##       0                0                0                0
##       1                3                3                3
##        y_rate_len
## safeh20 3.27564461538462 3.27791621359223 3.27824433333333
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.28023235294118 3.28259435643564 3.2850036 3.28640206896552
##       0                0                0         0                0
##       1                2                1         1                1
##        y_rate_len
## safeh20 3.28746151515151 3.28996959183673 3.29216047058823 3.2925293814433
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 3.2951425 3.29819638554217 3.30053553191489 3.30132475609756
##       0         0                0                0                0
##       1         2                1                2                1
##        y_rate_len
## safeh20 3.30331903225806 3.30616304347826 3.30906956043956
##       0                0                0                0
##       1                2                4                6
##        y_rate_len
## safeh20 3.31005264705882 3.31204066666667 3.3127099009901 3.31464038461538
##       0                0                0               0                0
##       1                2                6               1                1
##        y_rate_len
## safeh20 3.31507853932584 3.31818545454546 3.32100704081633
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.32136379310345 3.32388680412371 3.3268265625 3.32982821052632
##       0                0                0            0                0
##       1                1                1            3                4
##        y_rate_len
## safeh20 3.33289372340425 3.33289372340426 3.33484301204819
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.33602516129032 3.33841829268293 3.33922467391304
##       0                0                0                0
##       1                6                2                1
##        y_rate_len
## safeh20 3.33987294117647 3.34249450549451 3.345837 3.34890939393939
##       0                0                0        0                0
##       1                1                8        4                2
##        y_rate_len
## safeh20 3.34925460674157 3.34968721518987 3.35204448979592
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.35274988636364 3.35524422680412 3.358510625 3.36372917647059
##       0                0                0           0                0
##       1                1                5           4                1
##        y_rate_len
## safeh20 3.36756321428571 3.36873129032258 3.37148963855422
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 3.37228630434782 3.37228630434783 3.37551182926829
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.37591945054945 3.3762537 3.37963333333333 3.383857875
##       0                0         0                0           0
##       1                5         3                3           1
##        y_rate_len
## safeh20 3.38660164948454 3.38731431818182 3.39128724137931
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.39263192307692 3.39386336842105 3.39603932038835
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.39761010638298 3.39951352941176 3.40143741935484
##       0                0                0                0
##       1                3                2                4
##        y_rate_len
## safeh20 3.40377357142857 3.40534793478261 3.4066704 3.40813626506024
##       0                0                0         0                0
##       1                1                6         1                2
##        y_rate_len
## safeh20 3.40934439560439 3.4093443956044 3.41035727272727 3.41342966666667
##       0                0               0                0                0
##       1                3               6                1                4
##        y_rate_len
## safeh20 3.4141193877551 3.41760674157303 3.41795907216495 3.42187875
##       0               0                0                0          0
##       1               3                4                1          3
##        y_rate_len
## safeh20 3.42557009708738 3.42588094736842 3.42933382352941
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 3.42996829787234 3.43317207920792 3.4341435483871 3.43529788235294
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 3.4370871 3.43840956521739 3.43998392857143 3.44108121212121
##       0         0                0                0                0
##       1         1                4                3                3
##        y_rate_len
## safeh20 3.44276934065934 3.44515683673469 3.447226 3.44931649484536
##       0                0                0        0                0
##       1                7                3        3                3
##        y_rate_len
## safeh20 3.44969890243902 3.45112557692308 3.45178280898876 3.4535628125
##       0                0                0                0            0
##       1                1                1                3            1
##        y_rate_len
## safeh20 3.45789852631579 3.45915411764706 3.4623264893617 3.46328762376238
##       0                0                0               0                0
##       1                3                1               3                1
##        y_rate_len
## safeh20 3.46684967741936 3.4675038 3.47147119565217 3.47180515151515
##       0                0         0                0                0
##       1                3         2               12                1
##        y_rate_len
## safeh20 3.47619428571428 3.47619428571429 3.48102233333333
##       0                0                0                0
##       1                2                8                2
##        y_rate_len
## safeh20 3.48142951807229 3.48595887640449 3.48991610526316
##       0                0                0                0
##       1                1                4                3
##        y_rate_len
## safeh20 3.49340316831683 3.49468468085106 3.4961724137931 3.49955580645161
##       0                0                0               0                0
##       1                3                6               1                1
##        y_rate_len
## safeh20 3.50145732558139 3.50252909090909 3.50369582278481
##       0                0                0                0
##       1                4                2                1
##        y_rate_len
## safeh20 3.50453282608695 3.50453282608696 3.50723173469388
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.50961923076923 3.51203134020619 3.51416242718447
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 3.51481866666667 3.5169309375 3.52013494382022 3.52193368421053
##       0                0            0                0                0
##       1                5            5                2                2
##        y_rate_len
## safeh20 3.52388597560976 3.52557204545455 3.52704287234043 3.5283372
##       0                0                0                0         0
##       1                1                2                1         1
##        y_rate_len
## safeh20 3.53226193548387 3.53325303030303 3.535941375 3.53682558139535
##       0                0                0           0                0
##       1                4                3           1                1
##        y_rate_len
## safeh20 3.53759445652174 3.53826918367347 3.54304417582418 3.5433887628866
##       0                0                0                0               0
##       1                3                1                4               2
##        y_rate_len
## safeh20 3.548615 3.5539512631579 3.55431101123595 3.55431101123596
##       0        0               0                0                0
##       1       14               3                3                2
##        y_rate_len
## safeh20 3.55472277108434 3.5587539 3.55940106382979 3.56397696969697
##       0                0         0                0                0
##       1                1         1                6                1
##        y_rate_len
## safeh20 3.56609586206897 3.56811288461539 3.57065608695652
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 3.57474618556701 3.57646912087912 3.57843529411765 3.5802990625
##       0                0                0                0            0
##       1                3                3                2            2
##        y_rate_len
## safeh20 3.58070012658228 3.58241133333333 3.5837498019802 3.58482535714286
##       0                0                0               0                0
##       1                1                8               3                1
##        y_rate_len
## safeh20 3.58596884210526 3.5891706 3.59136939759036 3.59175925531915
##       0                0         0                0                0
##       1                7         2                1                4
##        y_rate_len
## safeh20 3.59767419354839 3.59807304878049 3.60034408163265 3.6037177173913
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 3.60610360824742 3.60825558823529 3.60989406593407 3.611983125
##       0                0                0                0           0
##       1                4                2                7           2
##        y_rate_len
## safeh20 3.61386534653465 3.61421964705882 3.61620766666667
##       0                0                0                0
##       1                2                1                6
##        y_rate_len
## safeh20 3.61798642105263 3.6195873 3.62266314606741 3.62266314606742
##       0                0         0                0                0
##       1                4         1                2                2
##        y_rate_len
## safeh20 3.62411744680851 3.62542484848485 3.62926534090909
##       0                0                0                0
##       1                4                4                1
##        y_rate_len
## safeh20 3.63038032258065 3.63138153061224 3.63228553398058
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 3.63677934782609 3.63746103092784 3.64293034883721
##       0                0                0                0
##       1                6                1                1
##        y_rate_len
## safeh20 3.64331901098901 3.64398089108911 3.650004 3.65614878787879
##       0                0                0        0                0
##       1               10                2        9                1
##        y_rate_len
## safeh20 3.65647563829787 3.65683921348314 3.65683921348315
##       0                0                0                0
##       1                7                1                2
##        y_rate_len
## safeh20 3.66241897959184 3.6630864516129 3.66789617647059 3.66881845360825
##       0                0               0                0                0
##       1                1               6                2                1
##        y_rate_len
## safeh20 3.66984097826087 3.67409643564357 3.67535125 3.67674395604396
##       0                0                0          0                0
##       1                6                1          3                8
##        y_rate_len
## safeh20 3.6804207 3.68202157894737 3.68380033333333 3.68687272727273
##       0         0                0                0                0
##       1         2                1                2                1
##        y_rate_len
## safeh20 3.68883382978723 3.69345642857143 3.69579258064516
##       0                0                0                0
##       1                4                4                3
##        y_rate_len
## safeh20 3.69771647058823 3.69839420454546 3.70017587628866
##       0                0                0                0
##       1                3                1                3
##        y_rate_len
## safeh20 3.70290260869565 3.70421198019802 3.70594275862069 3.7070353125
##       0                0                0                0            0
##       1                6                1                1            2
##        y_rate_len
## safeh20 3.70935365853659 3.7101689010989 3.7108374 3.71366686046512
##       0                0               0         0                0
##       1                1               5         1                1
##        y_rate_len
## safeh20 3.71403915789474 3.71434701923077 3.71759666666667
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 3.72087786407767 3.7211920212766 3.72157270588235 3.72449387755102
##       0                0               0                0                0
##       1                1               3                2                1
##        y_rate_len
## safeh20 3.72519134831461 3.72753676470588 3.72849870967742
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 3.73153329896907 3.73295863636364 3.73432752475247
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.73596423913043 3.73795590361446 3.74359384615384
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 3.74359384615385 3.7460567368421 3.74605673684211 3.74832060606061
##       0                0               0                0                0
##       1                6               1                3                1
##        y_rate_len
## safeh20 3.74903511627907 3.751393 3.75355021276596 3.75553132653061
##       0                0        0                0                0
##       1                1        2                4                2
##        y_rate_len
## safeh20 3.75735705882353 3.75936741573034 3.76120483870968
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 3.76444306930693 3.76587714285714 3.76752306818182
##       0                0                0                0
##       1                2                2                3
##        y_rate_len
## safeh20 3.76902586956522 3.7704034375 3.7716708 3.77586620689655
##       0                0            0         0                0
##       1                7            2         2                1
##        y_rate_len
## safeh20 3.77701879120879 3.77807431578947 3.77904454545454
##       0                0                0                0
##       1                8                2                1
##        y_rate_len
## safeh20 3.77993941747573 3.78518933333333 3.78590840425532 3.7865687755102
##       0                0                0                0               0
##       1                1                3                3               1
##        y_rate_len
## safeh20 3.78717735294117 3.78717735294118 3.79354348314607
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.79391096774193 3.79391096774194 3.7942481443299 3.8020875
##       0                0                0               0         0
##       1                1                4               3         9
##        y_rate_len
## safeh20 3.80947019417476 3.81009189473684 3.81044373626374
##       0                0                0                0
##       1                1                4                3
##        y_rate_len
## safeh20 3.81082793103448 3.81124915662651 3.81826659574468
##       0                0                0                0
##       1                2                1                4
##        y_rate_len
## safeh20 3.81898566666667 3.81977162790698 3.82063426829268
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 3.82560556701031 3.82661709677419 3.8277195505618 3.8325042
##       0                0                0               0         0
##       1                4                3               2         2
##        y_rate_len
## safeh20 3.8337715625 3.83514913043478 3.83665193181818 3.83829785714286
##       0            0                0                0                0
##       1            4                4                2                1
##        y_rate_len
## safeh20 3.84210947368421 3.84386868131868 3.84578965517241
##       0                0                0                0
##       1                2                4                1
##        y_rate_len
## safeh20 3.84789578313253 3.852782 3.85696298969072 3.85932322580645
##       0                0        0                0                0
##       1                1        5                3                4
##        y_rate_len
## safeh20 3.86189561797753 3.865455625 3.86821076086956 3.86821076086957
##       0                0           0                0                0
##       1                1           2                2                5
##        y_rate_len
## safeh20 3.86853174757281 3.87121636363636 3.87412705263158
##       0                0                0                0
##       1                1                4                5
##        y_rate_len
## safeh20 3.87450821428572 3.87663823529412 3.87729362637363
##       0                0                0                0
##       1                2                2                4
##        y_rate_len
## safeh20 3.87968112244898 3.88075137931035 3.8829829787234 3.88657833333333
##       0                0                0               0                0
##       1                3                1               5                4
##        y_rate_len
## safeh20 3.88832041237113 3.89050813953488 3.89202935483871 3.8933376
##       0                0                0                0         0
##       1                3                1                4         1
##        y_rate_len
## safeh20 3.89607168539326 3.8971396875 3.89806252427184 3.90127239130435
##       0                0            0                0                0
##       1                2            3                1                7
##        y_rate_len
## safeh20 3.9019403030303 3.90535407407407 3.90614463157895 3.91071857142857
##       0               0                0                0                0
##       1               1                1                5               10
##        y_rate_len
## safeh20 3.91534117021277 3.91967783505155 3.92037466666666
##       0                0                0                0
##       1                1                4                2
##        y_rate_len
## safeh20 3.92037466666667 3.92473548387097 3.92882375 3.93024775280899
##       0                0                0          0                0
##       1                2                9          2                3
##        y_rate_len
## safeh20 3.93433402173913 3.93627882352941 3.93816221052631
##       0                0                0                0
##       1                5                2                1
##        y_rate_len
## safeh20 3.93816221052632 3.94034522727273 3.94175602040816
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 3.94414351648352 3.94769936170213 3.954171 3.95744161290322
##       0                0                0        0                0
##       1                3                1        3                1
##        y_rate_len
## safeh20 3.95744161290323 3.9605078125 3.96124465116279 3.96739565217391
##       0                0            0                0                0
##       1                4            2                1                9
##        y_rate_len
## safeh20 3.97017978947368 3.97206317647059 3.97279346938776
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 3.97490965909091 3.97756846153846 3.98005755319149
##       0                0                0                0
##       1                1                4                5
##        y_rate_len
## safeh20 3.98239268041237 3.98313928571429 3.98563655172414
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 3.98796733333333 3.99014774193548 3.992191875 3.99859988764045
##       0                0                0           0                0
##       1                1                3           4                3
##        y_rate_len
## safeh20 4.00045728260869 4.0004572826087 4.00219736842105 4.00383091836735
##       0                0               0                0                0
##       1                1               5                3                2
##        y_rate_len
## safeh20 4.00536742574257 4.00536742574258 4.00784752941177
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.00947409090909 4.01099340659341 4.01241574468085
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 4.01375010309278 4.0150044 4.01800851851852 4.02176366666667
##       0                0         0                0                0
##       1                3         1                1                2
##        y_rate_len
## safeh20 4.02285387096774 4.0238759375 4.03112891566265 4.03277595505618
##       0                0            0                0                0
##       1                5            2                2                1
##        y_rate_len
## safeh20 4.03351891304348 4.03486836734694 4.03548297029703
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 4.04363188235294 4.04441835164835 4.04477393617021 4.0451075257732
##       0                0                0                0               0
##       1                2                4                3               1
##        y_rate_len
## safeh20 4.0454211 4.05556 4.06530894230769 4.06559851485149
##       0         0       0                0                0
##       1         1      14                1                1
##        y_rate_len
## safeh20 4.06590581632653 4.06623252631579 4.06658054347826
##       0                0                0                0
##       1                1                1                5
##        y_rate_len
## safeh20 4.06695202247191 4.06734941860465 4.0758378 4.07646494845361
##       0                0                0         0                0
##       1                3                2         2                2
##        y_rate_len
## safeh20 4.07713212765957 4.07860295454545 4.07941623529412
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 4.08538029411765 4.08628393939394 4.0872440625 4.08826612903226
##       0                0                0            0                0
##       1                2                2            5                2
##        y_rate_len
## safeh20 4.08935633333333 4.09177035714286 4.09571405940594
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 4.09694326530612 4.09825010526316 4.09964217391304
##       0                0                0                0
##       1                2                1                6
##        y_rate_len
## safeh20 4.09964217391305 4.10112808988764 4.1027176744186 4.1062545
##       0                0                0               0         0
##       1                1                1               1         3
##        y_rate_len
## safeh20 4.10782237113402 4.10949031914893 4.10949031914894
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 4.11126824175824 4.11316738636364 4.11520058823529
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 4.11700787878788 4.12097225806451 4.12097225806452
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 4.12315266666667 4.12798071428571 4.13026768421053
##       0                0                0                0
##       1                3                2                3
##        y_rate_len
## safeh20 4.13270380434783 4.13530415730337 4.1366712 4.13917979381443
##       0                0                0         0                0
##       1                3                3         2                2
##        y_rate_len
## safeh20 4.1418485106383 4.14469318681319 4.14502088235294 4.14773181818182
##       0               0                0                0                0
##       1               5                7                1                1
##        y_rate_len
## safeh20 4.1506121875 4.15367838709677 4.156949 4.16383951456311
##       0            0                0        0                0
##       1            2                2        3                1
##        y_rate_len
## safeh20 4.16419107142857 4.16576543478261 4.1694802247191 4.17053721649484
##       0                0                0               0                0
##       1                2                7               1                3
##        y_rate_len
## safeh20 4.17053721649485 4.17345418604651 4.17811813186813 4.18229625
##       0                0                0                0          0
##       1                1                2                5          2
##        y_rate_len
## safeh20 4.18638451612903 4.19074533333333 4.19156963414634
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 4.19430284210526 4.1975046 4.19882706521739 4.20365629213483
##       0                0         0                0                0
##       1                4         1                2                2
##        y_rate_len
## safeh20 4.20466147058824 4.20656489361702 4.20882244186046 4.2091796969697
##       0                0                0                0               0
##       1                1                2                1               1
##        y_rate_len
## safeh20 4.21154307692307 4.21154307692308 4.21617623762376
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 4.21909064516129 4.22454166666667 4.22866317073171
##       0                0                0                0
##       1                3                3                1
##        y_rate_len
## safeh20 4.23036862068966 4.23188869565218 4.23325206185567
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 4.23448176470588 4.23783235955056 4.23892308510638
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.23990363636364 4.24496802197802 4.245664375 4.25179677419355
##       0                0                0           0                0
##       1                1                3           3                3
##        y_rate_len
## safeh20 4.258338 4.26460948453608 4.26495032608696 4.26575670731707
##       0        0                0                0                0
##       1        2                1                5                1
##        y_rate_len
## safeh20 4.27003673076923 4.27128127659574 4.27200842696629
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 4.27282214285714 4.2773484375 4.27839296703297 4.28316795918367
##       0                0            0                0                0
##       1                1            1                4                1
##        y_rate_len
## safeh20 4.2845029032258 4.28450290322581 4.29035557894737 4.29213433333333
##       0               0                0                0                0
##       1               1                3                1                1
##        y_rate_len
## safeh20 4.29801195652174 4.30618449438202 4.3090325 4.31181791208791
##       0                0                0         0                0
##       1                3                1         3                1
##        y_rate_len
## safeh20 4.31720903225806 4.32237315789474 4.32593066666667
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 4.32990670588235 4.33107358695652 4.33663841584158
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.33994378048781 4.34036056179775 4.3407165625 4.34524285714286
##       0                0                0            0                0
##       1                1                2            1                2
##        y_rate_len
## safeh20 4.34991516129032 4.3543907368421 4.359727 4.36413521739131
##       0                0               0        0                0
##       1                2               1        1                1
##        y_rate_len
## safeh20 4.36835585106383 4.372400625 4.37453662921348 4.37628030612245
##       0                0           0                0                0
##       1                1           2                1                1
##        y_rate_len
## safeh20 4.3786678021978 4.38145321428571 4.38262129032258 4.38702403846154
##       0               0                0                0                0
##       1               3                1                4                1
##        y_rate_len
## safeh20 4.38968284090909 4.39352333333333 4.39719684782609
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 4.40071404255319 4.40731775510204 4.40871269662921
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 4.41209274725275 4.41766357142857 4.42731966666666
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 4.42731966666667 4.43025847826087 4.43576875 4.43725976470588
##       0                0                0          0                0
##       1                2                2          1                1
##        y_rate_len
## safeh20 4.43835520408163 4.44013896551724 4.4408382 4.44551769230769
##       0                0                0         0                0
##       1                1                1         1                4
##        y_rate_len
## safeh20 4.4480335483871 4.45044347368421 4.45275402061856 4.45640023255814
##       0               0                0                0                0
##       1               2                2                1                1
##        y_rate_len
## safeh20 4.4571005940594 4.4591472815534 4.461116 4.46332010869565
##       0               0               0        0                0
##       1               1               1        2                3
##        y_rate_len
## safeh20 4.47894263736264 4.48246105263158 4.49778861702128 4.499136875
##       0                0                0                0           0
##       1                2                1                1           2
##        y_rate_len
## safeh20 4.51124089887641 4.51236758241758 4.51344580645161
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 4.51546886597938 4.52870866666667 4.53014680851064
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 4.54461282352941 4.54615193548387 4.54649621052632
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.54682628865979 4.562505 4.57818371134021 4.57885806451613
##       0                0        0                0                0
##       1                1        4                1                3
##        y_rate_len
## safeh20 4.57921747252747 4.57959303370786 4.58082831325301
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 4.59232529411765 4.59556663043478 4.59630133333333
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 4.60767831683168 4.60954113402062 4.6233384 4.62722138297872
##       0                0                0         0                0
##       1                2                1         1                1
##        y_rate_len
## safeh20 4.62862826086957 4.63009766666667 4.63931484848485
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.64089855670103 4.64606736263736 4.6537551 4.6575571875
##       0                0                0         0            0
##       1                1                2         1            1
##        y_rate_len
## safeh20 4.66168989130435 4.663894 4.67949230769231 4.68212123595505
##       0                0        0                0                0
##       1                1        2                4                1
##        y_rate_len
## safeh20 4.71629730337079 4.72429595744681 4.73532715909091
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.73860168421053 4.74238870967742 4.76632824742268
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.77509483870968 4.77976714285714 4.78464943820225
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.78901234042553 4.80780096774194 4.81319208791209
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.84050709677419 4.84661703296703 4.87287948979592
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 4.87321322580645 4.88004197802198 4.88510636363636
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.91346692307692 4.92311536082474 4.92618293478261
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.93070715789474 4.95924456521739 4.97133161290323
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.98031681318681 5.006081875 5.02536782608696 5.03565366666667
##       0                0           0                0                0
##       1                1           1                1                1
##        y_rate_len
## safeh20 5.04787787234043 5.11401659340659 5.37597488372093
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 5.65892093023256 5.68660043478261 6.02310891089109
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 0.533333917808218 0.593292774725274 0.606671885245901 0.608334
##       0                 1                 1                 1        1
##       1                 0                 0                 0        0
##        y_rate_len
## safeh20 0.62671771978022 0.639914180327869 0.642130333333333
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.642954634146341 0.643430192307692 0.651786428571428
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.660142664835164 0.668498901098901 0.675000739726027
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.679610190735695 0.685211373626374 0.687898119891008
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.691667424657534 0.700000767123288 0.700655691056911
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.701923846153845 0.701923846153847 0.70255964673913
##       0                 1                 1                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.704473978201635 0.706398770491803 0.710280082417582
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.712236776859504 0.714709344262295 0.716667452054795
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.718636318681319 0.725000794520548 0.725853068181819
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.726992554945055 0.728995289256198 0.73100908839779
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.731330491803278 0.735348791208791 0.739641065573771
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.740300634920635 0.741667479452054 0.741870731707317
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.743886684782609 0.747951639344262 0.750000821917808
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.752061263736264 0.756216298342541 0.756262213114755
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.764572786885246 0.766599756097561 0.775000849315068
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.781423508287293 0.783085772357724 0.783334191780822
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.785486208791209 0.789504508196721 0.791667534246575
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.793842445054945 0.795641198910081 0.796029338842975
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.797815081967213 0.800000876712328 0.801744538043478
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.802198681318681 0.802198681318682 0.805631513513513
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.806125655737705 0.808334219178082 0.815033121546962
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.816667561643835 0.817290831024931 0.818275353260869
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.821167107438016 0.821167107438017 0.822746803278688
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.825000904109588 0.825000904109589 0.826540760869565
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.83105737704918 0.833334246575342 0.835623626373626
##       0                6                 2                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.837925619834711 0.841667589041095 0.845368773841962
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.846304876033058 0.847678524590164 0.85000093150685
##       0                 1                 1                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.850993545706371 0.854684132231405 0.860692335164835
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.861944632152589 0.863285649867374 0.864299672131148
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.865515853658537 0.866667616438357 0.867867798913043 0.86788984
##       0                 2                 1                 2          1
##       1                 0                 0                 0          0
##        y_rate_len
## safeh20 0.870232561307902 0.872610245901639 0.87500095890411
##       0                 1                 1                3
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.877404807692308 0.878520490463215 0.878520490463216
##       0                 4                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.881760718085106 0.882252348066298 0.885761043956043 0.88715375
##       0                 1                 1                 1          1
##       1                 0                 0                 0          0
##        y_rate_len
## safeh20 0.889231393442623 0.89024487804878 0.89411728021978
##       0                 1                2                2
##       1                 0                0                0
##        y_rate_len
## safeh20 0.895096348773842 0.902473516483516 0.908334328767124
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.911672207084469 0.914163114754098 0.915861961325967
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.917460244565217 0.919185989010989 0.921718181818182
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.92247368852459 0.922473688524591 0.924264364640884
##       0                1                 2                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.930784262295081 0.930784262295082 0.933334356164384
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.938476694214876 0.941667698630137 0.942256467391305
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.944254697802198 0.952610934065935 0.953111852861035
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.955715983606557 0.958334383561644 0.96096717032967
##       0                 3                 3                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.972337131147541 0.980647704918033 0.988958278688525
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.994392115384616 0.997131487603306 0.997268852459016
##       0                 2                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 1.00833443835616 1.01666778082192 1.02226925619835
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.02491054347826 1.02500112328767 1.03349560773481 1.0361732967033
##       0                1                3                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.04166780821918 1.04713229508197 1.04885172413793
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.06047413513514 1.08333452054795 1.10979851351351
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.13023803278688 1.14480436813187 1.14489825842697
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 0.568224065934066 0.65178642857143 0.660142664835164
##       0                 1                1                 1
##       1                 0                0                 0
##        y_rate_len
## safeh20 0.674054293628809 0.710825054347826 0.712761907356948
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.718636318681318 0.735348791208791 0.752061263736264
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.75413305785124 0.758334164383561 0.783334191780822
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.789190054054055 0.797815081967214 0.81278785123967
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.816667561643836 0.825716509695291 0.826540760869565
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.828792915531335 0.833334246575342 0.835623626373626
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.843071576086957 0.845368773841962 0.861944632152589
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.877404807692308 0.880920819672132 0.883334301369862
##       0                 3                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.884398614130435 0.885761043956043 0.895096348773842
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.907459558011049 0.916667671232877 0.919185989010989
##       0                 1                 2                 3
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.923216910569106 0.925725652173913 0.928248065395096
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.933991059782608 0.941667698630137 0.942256467391304
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.944254697802198 0.960527368421053 0.96096717032967
##       0                 1                 1                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.961399782016349 0.969323406593406 0.975318097826087
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.977679642857143 0.986035879120879 0.997131487603306
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.997268852459016 1.00000109589041 1.00557942622951
##       0                 1                1                1
##       1                 0                0                0
##        y_rate_len
## safeh20 1.00837972826087 1.01112735694823 1.02500112328767
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.02781706043956 1.03599114441417 1.03861902439024
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.04166780821918 1.04427907356948 1.05578628099174
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.06085493188011 1.06666783561644 1.06959824175824
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.07450298913043 1.09400664850136 1.09466695054945
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.10456308943089 1.11973565934066 1.1323608423913 1.13644813186813
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.14685918032787 1.1531606043956 1.15516975409836 1.15715706521739
##       0                1               2                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.21003765667575 1.22661351498638 1.23672296703297 1.2450792032967
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.27014791208791 1.29291694822888 1.32028532967033 1.3213812295082
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.34535403846154 1.37205766304348 1.37955524590164
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.38713521978022 1.40384769230769 1.47069758241758
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.57097241758242 1.65453478021978
##       0                1                1
##       1                0                0
##        y_rate_len
## safeh20 0.506945 0.553782309782609 0.578168677685951 0.600000657534247
##       0        1                 1                 1                 1
##       1        0                 0                 0                 0
##        y_rate_len
## safeh20 0.603306446280992 0.611685702479339 0.625000684931507
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.646458474114441 0.651786428571428 0.654746403269755 0.65700072
##       0                 1                 1                 1          1
##       1                 0                 0                 0          0
##        y_rate_len
## safeh20 0.657658378378378 0.661232608695652 0.666667397260274
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.670340495867769 0.681467049180328 0.694294239130435
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.698762027027027 0.703227325905292 0.703857520661157
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.706398770491803 0.70775700831025 0.708334109589041
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_len
## safeh20 0.710280082417582 0.712236776859504 0.713687932960894
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.714709344262295 0.716667452054794 0.719090461956522
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.721049836512261 0.721049836512262 0.72624143258427
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.728995289256198 0.737374545454545 0.73964106557377
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.747813895027625 0.747951639344262 0.750000821917808
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.750113739837398 0.756216298342541 0.75831108033241 0.7604175
##       0                 1                 1                1         1
##       1                 0                 0                0         0
##        y_rate_len
## safeh20 0.762489482288829 0.762512314049587 0.770777411444141
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.770891570247934 0.779270826446282 0.781423508287293
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.791667534246575 0.79201379501385 0.793842445054945
##       0                 1                1                 2
##       1                 0                0                 0
##        y_rate_len
## safeh20 0.801744538043478 0.804408595041323 0.810554917582418
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.814436229508196 0.818911153846154 0.821167107438016
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.824139636871509 0.825000904109589 0.83105737704918
##       0                 1                 2                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.831837928176796 0.832543821138211 0.832543821138212
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.835623626373626 0.837080844686648 0.839367950819672
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.840240331491713 0.841667589041095 0.841667589041097
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.847678524590164 0.848642734806629 0.851336983695652
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.852336098901099 0.853656702997275 0.857045138121547
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.858334273972602 0.858334273972604 0.861944632152589
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.864299672131148 0.865447541436464 0.866667616438357
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.867867798913043 0.870232561307902 0.871442644628098
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.872610245901639 0.873849944751382 0.87500095890411
##       0                 2                 1                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.877404807692308 0.879821900826446 0.880920819672131
##       0                 1                 3                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.882252348066298 0.883334301369862 0.883334301369864
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.884398614130435 0.885761043956043 0.887838810810811
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.888201157024793 0.889231393442623 0.891667643835617
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.89266402173913 0.896580413223141 0.90000098630137
##       0                2                 2                1
##       1                0                 0                0
##        y_rate_len
## safeh20 0.902473516483517 0.907459558011049 0.908334328767124
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.909194836956522 0.910829752747253 0.913338925619835
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.914973902439024 0.915861961325967 0.916667671232877
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.919185989010989 0.921718181818182 0.922473688524591
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.924264364640884 0.92500101369863 0.927542225274725
##       0                 1                2                 1
##       1                 0                0                 0
##        y_rate_len
## safeh20 0.930097438016528 0.930784262295081 0.930784262295082
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.931459918699187 0.933334356164384 0.935898461538461
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.935898461538462 0.938476694214876 0.939841853932584
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.941069171270718 0.941667698630137 0.95000104109589
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.953111852861035 0.955715983606557 0.958334383561644
##       0                 3                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.958787282608696 0.966667726027397 0.969687711171662
##       0                 1                 1                 3
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.972337131147541 0.974678784530386 0.975001068493151
##       0                 2                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.977679642857143 0.980372975206612 0.983081187845304
##       0                 3                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.983334410958905 0.986035879120879 0.988958278688525
##       0                 1                 2                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.994392115384616 0.997268852459016 0.997403983739837
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 1.00000109589041 1.00274835164835 1.00283942779292
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.00833443835616 1.00837972826087 1.01666778082192
##       0                2                1                3
##       1                0                0                0
##        y_rate_len
## safeh20 1.02220057377049 1.02770321525885 1.03064851239669
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.03333446575343 1.04166780821918 1.04189801104972
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.04452953296703 1.04686203252033 1.05256700272479 1.0525670027248
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.05544286885246 1.05578628099174 1.0612420054945 1.06666783561644
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.06914286103542 1.08037459016393 1.08868516393443
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.08930330578512 1.08993175 1.10302318681319 1.1136168852459
##       0                1          1                1               1
##       1                0          0                0               0
##        y_rate_len
## safeh20 1.12192745901639 1.12500123287671 1.14166791780822
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.14795809917355 1.18195328804348 1.20661289256198
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.20994607734807 1.30000142465753
##       0                1                1
##       1                0                0
##        y_rate_len
## safeh20 0.457081557377049 0.493243783783784 0.535795528455285
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.56116371657754 0.576580302197803 0.580155040871935
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.596886854838711 0.600000657534247 0.610005247252747
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.610052457627119 0.614892857142857 0.619905570652174
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.621594686648501 0.630180248618785 0.631925900277008 0.63368125
##       0                 0                 0                 0          0
##       1                 1                 1                 1          1
##        y_rate_len
## safeh20 0.635073956043957 0.635446378830084 0.637769516129032
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.64121691891892 0.643430192307692 0.645202727272727
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.647526386554621 0.648777257617729 0.650000712328767
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.65236890080429 0.654122580645161 0.654213938547486 0.65700072
##       0                0                 0                 0          0
##       1                1                 1                 1          1
##        y_rate_len
## safeh20 0.664084285714285 0.669498016304347 0.672282857142857
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.675926666666667 0.676855137362638 0.68247997229917
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.686028831521739 0.687099008264463 0.68868 0.689777622950819
##       0                 0                 0       0                 0
##       1                 1                 1       1                 1
##        y_rate_len
## safeh20 0.69012680672269 0.691667424657534 0.693141957104558
##       0                0                 0                 0
##       1                1                 2                 1
##        y_rate_len
## safeh20 0.69356760989011 0.694014845070422 0.694294239130434
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.695005241935484 0.696186049046322 0.696878571428571
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.698646890756302 0.701923846153847 0.705191648044692
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.706398770491803 0.708898699186991 0.713275714285714
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.713778560000001 0.714709344262295 0.715203486486487
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.715687058823529 0.719534838709677 0.721474285714285
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.725000794520548 0.725760402144771 0.727711370967741
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.731009088397789 0.731330491803278 0.731644945945946
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.733334136986301 0.735348791208791 0.737374545454546
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.737625694822889 0.737871428571429 0.738936779661016
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.739176787709497 0.739641065573771 0.741459722991691
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.741870731707317 0.743329466292135 0.74406443548387
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.746069999999999 0.748218288770054 0.749767394957983
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.750000821917808 0.750113739837398 0.752061263736264
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.752152092391304 0.752152092391305 0.752327952127659
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.75413305785124 0.754201553133516 0.754268571428572
##       0                0                 0                 0
##       1                2                 1                 4
##        y_rate_len
## safeh20 0.756351096256685 0.75831108033241 0.758334164383561
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.762445279999999 0.762512314049586 0.764440873015873
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.764572786885246 0.766599756097561 0.76673675900277
##       0                 0                 0                0
##       1                 2                 1                2
##        y_rate_len
## safeh20 0.768594032258065 0.768773736263735 0.768773736263736
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.768866583333333 0.768961516853933 0.774688069705094
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.775000849315068 0.77516243767313 0.777129972527472
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.779065340599454 0.780969324324324 0.783334191780822
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.784947096774193 0.787353269754768 0.787650082644629
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.787953509749305 0.788581111111112 0.790997292225201
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.791667534246575 0.79201379501385 0.79236781512605
##       0                 0                0                0
##       1                 3                1                2
##        y_rate_len
## safeh20 0.793123629032258 0.793479130434782 0.795261428571429
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.795641198910081 0.796627857142858 0.798228314917127
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.798650782122905 0.800000876712328 0.800439473684211
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.801300161290323 0.801744538043478 0.802198681318681
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.802662916666667 0.803929128065394 0.806125655737705
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.806630718232045 0.807814796747967 0.809476693548386
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.809476693548387 0.810554917582418 0.811112 0.811658571428572
##       0                 0                 0        0                 0
##       1                 1                 1        2                 1
##        y_rate_len
## safeh20 0.81278785123967 0.813280748663102 0.813852243243244
##       0                0                 0                 0
##       1                1                 2                 1
##        y_rate_len
## safeh20 0.814436229508196 0.815643351955307 0.816057804878048
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.816057804878049 0.817290831024931 0.817653225806452
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.818579745042493 0.819857142857143 0.821167107438017
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.821413556149732 0.824139636871509 0.825000904109589
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.825716509695291 0.826540760869565 0.82733424 0.828792915531335
##       0                 0                 0          0                 0
##       1                 1                 1          1                 2
##        y_rate_len
## safeh20 0.828814841269841 0.829546363636364 0.831013289124668
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.831770348525469 0.833334246575342 0.834142188365651
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.839367950819672 0.841312978723405 0.841667589041095
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.842567867036011 0.843071576086957 0.843979862637363
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.844452857142857 0.845368773841962 0.845811978609625
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.845811978609626 0.846735162162163 0.847261838440111
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.847678524590164 0.849029837398374 0.849628491620112
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.85000093150685 0.852336098901098 0.853357416666666
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.854684132231404 0.854955891891892 0.85623418230563
##       0                 0                 0                0
##       1                 1                 1                2
##        y_rate_len
## safeh20 0.856808450704225 0.857272845528456 0.857492074468085
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.858535887096774 0.859419224376732 0.859602391304347
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.859602391304348 0.860692335164835 0.86085 0.861944632152588
##       0                 0                 0       0                 0
##       1                 1                 1       1                 1
##        y_rate_len
## safeh20 0.861944632152589 0.863063388429752 0.863285649867374
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.864388793565683 0.865447541436464 0.866667616438357
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.866712419354838 0.867844903047092 0.867867798913043
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.870232561307902 0.872543404825737 0.872610245901639
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.872679693593315 0.873671170212766 0.87394461971831
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.874888951612903 0.876133206521739 0.876270581717451
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.876270581717452 0.877247142857143 0.880698016085792
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.881152311977715 0.882001869918699 0.882252348066298
##       0                 0                 0                 0
##       1                 1                 1                 4
##        y_rate_len
## safeh20 0.883065483870967 0.883065483870969 0.884696260387812
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.88647601604278 0.88715375 0.888201157024794 0.888852627345845
##       0                0          0                 0                 0
##       1                1          2                 2                 1
##        y_rate_len
## safeh20 0.889231393442622 0.889850265957447 0.891667643835617
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.89266402173913 0.893597966101694 0.896059540540541
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.899418548387097 0.900606201117319 0.900929429347827
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.901842857142857 0.902473516483516 0.903384277929156
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.903626100795756 0.90428027027027 0.906570167130919
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.907459558011051 0.909194836956522 0.909973296398892
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.910041428571428 0.910829752747253 0.910874438502674
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.911648991596639 0.911672207084469 0.911694190981433
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.913362662889518 0.91655656 0.916667671232877 0.917460244565218
##       0                 0          0                 0                 0
##       1                 1          1                 1                 1
##        y_rate_len
## safeh20 0.91759877094972 0.91824 0.919185989010989 0.920169075630252
##       0                0       0                 0                 0
##       1                2       1                 1                 1
##        y_rate_len
## safeh20 0.920721729729729 0.921471072386059 0.92247368852459
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.92394814516129 0.923948145161291 0.924598551136363
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.92500101369863 0.925001013698631 0.925725652173913
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.926438571428572 0.927140053475935 0.927542225274725
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.928248065395096 0.929399166666667 0.929625683646112
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.931459918699187 0.933334356164384 0.934591340782123
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.934637142857142 0.935272860962567 0.935898461538462
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.936559406779661 0.937163189189189 0.937209243697479
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.939094836065574 0.939702926829269 0.940301209677419
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.940460640668524 0.941069171270718 0.942256467391305
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.942489295774648 0.942835714285714 0.943405668449197
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.944254697802198 0.944254697802199 0.945383918918919
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.946297333333334 0.947405409836066 0.948477741935485
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.953229914529914 0.955235206611571 0.955715983606557
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.95618894308943 0.959232857142857 0.95967128342246
##       0                0                 0                0
##       1                1                 1                1
##        y_rate_len
## safeh20 0.96096717032967 0.96276949579832 0.963614462809917
##       0                0                0                 0
##       1                1                1                 1
##        y_rate_len
## safeh20 0.96402655737705 0.964431951219512 0.96627638121547
##       0                0                 0                0
##       1                1                 1                2
##        y_rate_len
## safeh20 0.967431428571428 0.968953047091413 0.969687711171662
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.97039873994638 0.970928559322034 0.972674959349593
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.973007338709677 0.97563 0.977378725761772 0.978266837837838
##       0                 0       0                 0                 0
##       1                 1       1                 1                 1
##        y_rate_len
## safeh20 0.978553351206434 0.983334410958904 0.983828571428571
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.985569050279329 0.986035879120879 0.986707962466487
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.986707962466489 0.986924840425532 0.988752231404958
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.991667753424657 0.991848913043478 0.992202513368984
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.994862573726542 1.00011432065217 1.00265576177285
##       0                 0                0                0
##       1                 1                1                1
##        y_rate_len
## safeh20 1.00283942779292 1.00571346774194 1.00577888 1.01660093582888
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 1.01662285714286 1.01664513586956 1.01928303191489
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.02473374331551 1.02491054347826 1.02759121621622 1.03302
##       0                0                0                0       0
##       1                1                1                1       1
##        y_rate_len
## safeh20 1.03317595108696 1.03365944289694 1.03654675977654
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.03693295454545 1.03882172131148 1.03945025210084
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04121857142857 1.04355167553192 1.04403267567568
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04504304469274 1.04885172413793 1.05194485254692
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.05544286885246 1.05761571428571 1.05797217391304
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.05907729805014 1.07707861189802 1.07795447802198
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.08148266666667 1.08276839673913 1.08631071428571 1.0916678630137
##       0                0                0                0               0
##       1                2                2                1               1
##        y_rate_len
## safeh20 1.1283614516129 1.13859304812834 1.14164557640751 1.14795809917355
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.15316060439561 1.15431797783933 1.16399103351955
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.16419714285714 1.16471661157025 1.1659735 1.16666794520548
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 1.17309586776859 1.17426402144772 1.18616657381616
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.20688246648794 1.216668 1.2450792032967 1.29065456756757
##       0                0        0               0                0
##       1                1        1               1                1
##        y_rate_len
## safeh20 0.491147847025496 0.493243783783784 0.526442884615384
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.55455861878453 0.55986782967033 0.568224065934067
##       0                0                0                 0
##       1                1                1                 1
##        y_rate_len
## safeh20 0.571867111716622 0.575000630136986 0.58333397260274
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.584936538461538 0.586547933884297 0.586843940217391
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.60164901098901 0.605018828337874 0.608334 0.635073956043956
##       0                0                 0        0                 0
##       1                1                 1        1                 1
##        y_rate_len
## safeh20 0.638170544959128 0.639914180327869 0.640801264044944
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.643430192307692 0.651786428571428 0.652391615598886
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.658334054794521 0.660142664835164 0.660142664835165
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.661232608695652 0.668498901098901 0.672282857142856
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.673156475409836 0.674054293628809 0.676855137362638
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.679702793296089 0.685211373626374 0.68628208913649
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.686282089136491 0.687099008264463 0.691667424657534
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.69356760989011 0.694294239130435 0.694554566929134
##       0                0                 0                 0
##       1                2                 2                 1
##        y_rate_len
## safeh20 0.69547826446281 0.696878571428571 0.69755632 0.699331329639889
##       0                0                 0          0                 0
##       1                1                 1          1                 1
##        y_rate_len
## safeh20 0.701923846153845 0.703790664893616 0.708334109589041
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.710280082417582 0.712236776859504 0.713687932960894
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.714709344262295 0.718636318681318 0.718636318681319
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.719090461956522 0.721049836512262 0.725384715447154
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.726621166666666 0.726992554945054 0.726992554945055
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.728645181058495 0.73100908839779 0.735348791208791
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.735348791208792 0.741870731707317 0.743705027472528
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.747951639344262 0.750113739837398 0.751968416666667
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.752061263736264 0.754201553133516 0.756262213114754
##       0                 0                 0                 0
##       1                 8                 2                 2
##        y_rate_len
## safeh20 0.756307135135135 0.758334164383561 0.75835674796748 0.7604175
##       0                 0                 0                0         0
##       1                 1                 1                2         3
##        y_rate_len
## safeh20 0.760417500000001 0.7625356545961 0.764665642458101
##       0                 0               0                 0
##       1                 2               1                 1
##        y_rate_len
## safeh20 0.766667506849314 0.768773736263735 0.768773736263736
##       0                 0                 0                 0
##       1                 1                 3                 2
##        y_rate_len
## safeh20 0.770665714285714 0.772883360655737 0.774536657824933
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.775327647058823 0.777129972527472 0.777129972527474
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.778864285714286 0.779695690140845 0.780969324324324
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.781658212290503 0.783334191780822 0.78358811634349
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.784947096774193 0.785486208791209 0.785764750000001
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.787650082644629 0.78982591160221 0.791328780487804
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.791328780487806 0.793842445054945 0.794213833333333
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.797815081967213 0.799571788617886 0.800000876712328
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.801300161290322 0.801744538043478 0.802198681318681
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.802198681318682 0.804408595041323 0.807814796747967
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.808334219178081 0.810009945652174 0.810554917582417
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.810554917582418 0.811112000000001 0.81278785123967
##       0                 0                 0                0
##       1                 5                 1                1
##        y_rate_len
## safeh20 0.814436229508196 0.814877108753315 0.815461126005362
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.816057804878048 0.818911153846154 0.818911153846155
##       0                 0                 0                 0
##       1                 1                 5                 1
##        y_rate_len
## safeh20 0.820504986376022 0.822536112676056 0.823435524861878
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.82430081300813 0.825133882978722 0.826540760869565
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.827267390109889 0.827267390109891 0.828792915531335
##       0                 0                 0                 0
##       1                 1                 6                 1
##        y_rate_len
## safeh20 0.83105737704918 0.83544536 0.835623626373626 0.837925619834711
##       0                0          0                 0                 0
##       1                1          1                11                 2
##        y_rate_len
## safeh20 0.84113220670391 0.841667589041095 0.843071576086957
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.843979862637362 0.843979862637363 0.846304876033058
##       0                 0                 0                 0
##       1                 5                 2                 1
##        y_rate_len
## safeh20 0.850993545706371 0.852336098901098 0.852336098901099
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.855734456824513 0.855989098360656 0.857045138121547
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.857272845528455 0.857272845528456 0.858334273972602 0.85977872
##       0                 0                 0                 0          0
##       1                 1                 1                 1          1
##        y_rate_len
## safeh20 0.860528487394959 0.860692335164835 0.860692335164836
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.861944632152589 0.865515853658537 0.869048571428571
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.869048571428572 0.870232561307902 0.87500095890411
##       0                 0                 0                0
##       1                 5                 1                1
##        y_rate_len
## safeh20 0.876133206521739 0.877247142857143 0.877404807692308
##       0                 0                 0                 0
##       1                 1                 1                 8
##        y_rate_len
## safeh20 0.877568655462186 0.878520490463216 0.87961808108108
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.881152311977715 0.882252348066298 0.883065483870967
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.885445714285715 0.885761043956043 0.885761043956045
##       0                 0                 0                 0
##       1                 1                 3                 2
##        y_rate_len
## safeh20 0.888201157024793 0.889231393442623 0.890654751381215
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.890654751381216 0.891667643835617 0.893121939058171
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.894117280219779 0.89411728021978 0.895096348773842
##       0                 0                0                 0
##       1                 2                4                 1
##        y_rate_len
## safeh20 0.896580413223141 0.90000098630137 0.90033432 0.900929429347825
##       0                 0                0          0                 0
##       1                 1                1          1                 1
##        y_rate_len
## safeh20 0.901235555555556 0.902473516483516 0.902473516483517
##       0                 0                 0                 0
##       1                 1                 5                 2
##        y_rate_len
## safeh20 0.904959669421487 0.905852540983606 0.907459558011049
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.908334328767124 0.910829752747252 0.910829752747253
##       0                 0                 0                 0
##       1                 2                 2                 4
##        y_rate_len
## safeh20 0.916667671232877 0.91759877094972 0.919185989010989
##       0                 0                0                 0
##       1                 3                1                 9
##        y_rate_len
## safeh20 0.919960136239781 0.919960136239783 0.921979291784703
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.92247368852459 0.922473688524591 0.923515403899722
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.92500101369863 0.927542225274725 0.927542225274726
##       0                0                 0                 0
##       1                1                 3                 5
##        y_rate_len
## safeh20 0.928248065395096 0.929399166666667 0.930784262295082
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.933334356164384 0.935898461538461 0.935898461538462
##       0                 0                 0                 0
##       1                 1                 1                 6
##        y_rate_len
## safeh20 0.93716318918919 0.939094836065574 0.941667698630137
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.942256467391304 0.942256467391305 0.943087625698323
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.944254697802198 0.944823923705722 0.945383918918919
##       0                 0                 0                 0
##       1                 4                 2                 1
##        y_rate_len
## safeh20 0.94794593495935 0.950521875 0.952610934065933 0.952610934065935
##       0                0           0                 0                 0
##       1                2           1                 1                 3
##        y_rate_len
## safeh20 0.958334383561644 0.96096717032967 0.961399782016349
##       0                 0                0                 0
##       1                 1                5                 1
##        y_rate_len
## safeh20 0.962336271186441 0.963614462809917 0.965473904494382
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.96627638121547 0.966667726027397 0.967052690217392
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.967431428571428 0.968576480446928 0.969323406593406
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.969323406593407 0.971993719008264 0.975001068493151
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.977378725761772 0.977679642857143 0.979809663865546
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.985804404432133 0.986035879120879 0.98603587912088
##       0                 0                 0                0
##       1                 1                 3                2
##        y_rate_len
## safeh20 0.986263569482289 0.989160975609756 0.98955664 0.992202513368984
##       0                 0                 0          0                 0
##       1                 2                 1          1                 1
##        y_rate_len
## safeh20 0.993897802816901 0.994230083102493 0.994392115384616
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.999768969359331 1.00000109589041 1.00265576177285
##       0                 0                0                0
##       1                 1                1                1
##        y_rate_len
## safeh20 1.00274835164835 1.00824158774373 1.00833443835616
##       0                0                0                0
##       1                7                1                1
##        y_rate_len
## safeh20 1.01105790502793 1.01110458791209 1.01389 1.01660093582888
##       0                0                0       0                0
##       1                1                5       1                1
##        y_rate_len
## safeh20 1.01946082417582 1.02206653225806 1.02233908333333
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.02500112328767 1.02781706043956 1.03051114754098
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.03349560773481 1.03599114441417 1.0361732967033 1.04452953296703
##       0                0                0               0                0
##       1                1                3               4                3
##        y_rate_len
## safeh20 1.04713229508197 1.05225340540541 1.05256700272479
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.05288576923077 1.05477266129032 1.05544286885246
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.05761571428571 1.06124200549451 1.06623758152174
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.06959824175824 1.07206401639344 1.07500117808219
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.07795447802198 1.08391002762431 1.08930330578512
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.09231243093923 1.09466695054945 1.09726026525199
##       0                0                0                0
##       1                1                5                1
##        y_rate_len
## safeh20 1.10000120547945 1.10144038997214 1.10302318681319
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.10979851351351 1.11973565934066 1.12282033057851
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.12500123287671 1.1280918956044 1.13317117647059 1.13644813186813
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 1.15549474860335 1.16419714285714 1.17577159663866
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.18616657381616 1.19494178571429 1.19953183098592
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.20329802197802 1.21165425824176 1.22477912 1.22836673076923
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 0.349044098360656 0.392743104395605 0.40109934065934
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.426168049450549 0.441667150684931 0.442880521978022
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.445540394366197 0.447548174386921 0.450000493150685
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.453729779005525 0.465994011142061 0.466619829545455
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.467295670391061 0.467949230769231 0.474238870967742
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.486337479674797 0.487339392265193 0.493462420212765
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.495741795580111 0.502755371900826 0.50282349593496
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.508311428571429 0.509730412087912 0.513966398891966 0.51651
##       0                 0                 0                 0       0
##       1                 1                 1                 1       1
##        y_rate_len
## safeh20 0.516829721448468 0.518086648351647 0.521895120643431
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.525302339832869 0.526442884615384 0.534347432432432
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.534799120879121 0.539243434903048 0.540562042440319
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.541667260273973 0.543155357142857 0.54528537815126
##       0                 0                 0                0
##       1                 2                 1                1
##        y_rate_len
## safeh20 0.547827661290323 0.550000602739726 0.551464249291785
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.551511593406594 0.553030909090909 0.553782309782609
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.55455861878453 0.555361095505618 0.55966728 0.562325546218488
##       0                0                 0          0                 0
##       1                1                 1          1                 1
##        y_rate_len
## safeh20 0.563272222222222 0.564520470914128 0.565119016393442
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.565493577464788 0.565701428571428 0.565701428571429
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.566667287671233 0.566667287671234 0.567230351351352
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.569251089385474 0.569789421487603 0.571363425414364 0.5739
##       0                 0                 0                 0      0
##       1                 1                 2                 1      1
##        y_rate_len
## safeh20 0.575000630136986 0.575000630136987 0.575451081081081
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.576580302197801 0.578168677685951 0.579765828729282
##       0                 0                 0                 0
##       1                 2                 4                 1
##        y_rate_len
## safeh20 0.581740163934426 0.582098571428572 0.582986749999999
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.58367181081081 0.584936538461538 0.585253577235773
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.586243659217876 0.586547933884297 0.588168232044199
##       0                 0                 0                 0
##       1                 1                 4                 2
##        y_rate_len
## safeh20 0.588442970027247 0.589797506925208 0.590050737704918
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.591667315068493 0.593083286908078 0.593292774725275
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.594927190082644 0.594927190082645 0.595109347826087
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.595286621983914 0.596405882352941 0.598081179775281
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.599765915492958 0.600000657534247 0.601555905292479
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.60164901098901 0.603306446280992 0.604973038674033
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.606648864265928 0.606671885245903 0.608333999999999 0.608334
##       0                 0                 0                 0        0
##       1                 1                 1                 1        3
##        y_rate_len
## safeh20 0.608334000000001 0.609982601626015 0.610005247252747
##       0                 0                 0                 0
##       1                 2                 1                 4
##        y_rate_len
## safeh20 0.610028523676879 0.61002852367688 0.610052457627118
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.610052457627119 0.611685702479339 0.61168570247934
##       0                 0                 0                0
##       1                 1                 3                1
##        y_rate_len
## safeh20 0.61337544198895 0.613518664772727 0.614982459016393
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.615074542936288 0.615169213483145 0.615169213483146
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.616445120000001 0.616667342465754 0.616902084507043
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.618361483516484 0.620064958677685 0.620064958677686
##       0                 0                 0                 0
##       1                 4                 2                 2
##        y_rate_len
## safeh20 0.620228798882681 0.621416451612903 0.621594686648501
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.622159772727272 0.623091428571428 0.623091428571429
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.623500221606648 0.624775459459459 0.625000684931507
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.625470169014084 0.626468617886178 0.62671771978022
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.628170978260869 0.62817097826087 0.628444214876033
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.628725083798883 0.629882615803814 0.630180248618785
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.630486218487394 0.63129 0.631603606557377 0.631603606557378
##       0                 0       0                 0                 0
##       1                 2       3                 2                 1
##        y_rate_len
## safeh20 0.631925900277008 0.632257247191012 0.632996189189189
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.63333402739726 0.63368125 0.635073956043956 0.636436385869565
##       0                0          0                 0                 0
##       1                1          1                 3                 1
##        y_rate_len
## safeh20 0.636823471074381 0.637221368715084 0.638170544959128
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.638582651933701 0.638582651933702 0.639006302521008
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.639488571428571 0.640801264044944 0.641216918918919
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.641667369863014 0.642130333333333 0.642606338028169
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.643430192307692 0.645202727272727 0.645717653631284
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.645717653631286 0.645946048387097 0.646458474114441
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.646985055248618 0.646985055248619 0.647526386554623
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.64822475409836 0.64835597368421 0.6488896 0.649437648648649
##       0                0                0         0                 0
##       1                1                1         1                 1
##        y_rate_len
## safeh20 0.650000712328767 0.650579416666667 0.651197642276422
##       0                 0                 0                 0
##       1                 4                 2                 2
##        y_rate_len
## safeh20 0.651197642276423 0.651786428571428 0.65178642857143
##       0                 0                 0                0
##       1                 1                 6                1
##        y_rate_len
## safeh20 0.652391615598885 0.653581983471074 0.653581983471075
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.654122580645161 0.654213938547486 0.655387458563536
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.655387458563537 0.655885714285714 0.656046470588234
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.656535327868853 0.657000720000001 0.657202936288088
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.65720293628809 0.657658378378378 0.657889297752809
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.65833405479452 0.659440650406504 0.659742507042254
##       0                0                 0                 0
##       1                3                 1                 1
##        y_rate_len
## safeh20 0.660142664835164 0.660142664835165 0.661232608695652
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.661961239669421 0.661961239669422 0.662710223463687
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.663789861878453 0.664566554621849 0.664845901639344
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.665628614958448 0.665628614958449 0.665879108108108
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.666117704485488 0.666433314606741 0.666667397260274
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.666890213903743 0.667477583333334 0.668310591549296
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.668498901098901 0.669336852367688 0.670340495867769
##       0                 0                 0                 0
##       1                 4                 1                 5
##        y_rate_len
## safeh20 0.671206508379889 0.671322261580382 0.67219226519337
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.672282857142856 0.672282857142857 0.673086638655463
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.673156475409836 0.673156475409837 0.674054293628809
##       0                 0                 0                 0
##       1                 3                 1                 3
##        y_rate_len
## safeh20 0.674977331460675 0.675000739726027 0.675000739726028
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.675023021390374 0.675926666666666 0.675926666666667
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.676832734584451 0.676855137362637 0.677763423913044
##       0                 0                 0                 0
##       1                 1                 3                 3
##        y_rate_len
## safeh20 0.677809470752089 0.678652177419355 0.678652177419356
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.678719752066115 0.678719752066116 0.678790762711865
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.679610190735694 0.679702793296089 0.680594668508287
##       0                 0                 0                 0
##       1                 1                 3                 2
##        y_rate_len
## safeh20 0.680594668508288 0.680713682719547 0.681467049180328
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.681606722689076 0.682320567567567 0.683334082191781
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.683521348314607 0.68437575 0.684987345844504 0.685211373626373
##       0                 0          0                 0                 0
##       1                 2          2                 1                 1
##        y_rate_len
## safeh20 0.685211373626374 0.68544676056338 0.686282089136491
##       0                 0                0                 0
##       1                 2                1                 1
##        y_rate_len
## safeh20 0.687099008264462 0.687099008264463 0.688997071823205
##       0                 0                 0                 0
##       1                 1                 4                 4
##        y_rate_len
## safeh20 0.689777622950819 0.689777622950821 0.690126806722689
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.69012680672269 0.690541297297297 0.690541297297298
##       0                0                 0                 0
##       1                2                 2                 1
##        y_rate_len
## safeh20 0.690905650969529 0.691667424657534 0.691667424657535
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.692020158730158 0.69241268292683 0.693141957104558
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.69356760989011 0.693855755968169 0.694294239130434
##       0                0                 0                 0
##       1                5                 1                 1
##        y_rate_len
## safeh20 0.694294239130435 0.695005241935484 0.69547826446281
##       0                 0                 0                0
##       1                 2                 3                3
##        y_rate_len
## safeh20 0.695478264462811 0.69597533898305 0.696186049046322
##       0                 0                0                 0
##       1                 3                1                 1
##        y_rate_len
## safeh20 0.696695363128492 0.696878571428571 0.697399475138121
##       0                 0                 0                 0
##       1                 3                 2                 5
##        y_rate_len
## safeh20 0.698088196721311 0.698088196721312 0.698219762532982
##       0                 0                 0                 0
##       1                 2                 3                 1
##        y_rate_len
## safeh20 0.698646890756303 0.698762027027027 0.699331329639889
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.700000767123287 0.700000767123288 0.700609382022472
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.700655691056911 0.701273916666666 0.701923846153845
##       0                 0                 0                 0
##       1                 3                 1                 3
##        y_rate_len
## safeh20 0.701923846153846 0.701923846153847 0.70255964673913
##       0                 0                 0                0
##       1                 1                 3                1
##        y_rate_len
## safeh20 0.702582929577464 0.702582929577465 0.703181774193549
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.703857520661156 0.703857520661157 0.704473978201635
##       0                 0                 0                 0
##       1                 2                 5                 2
##        y_rate_len
## safeh20 0.705077142857142 0.705077142857144 0.705801878453039
##       0                 0                 0                 0
##       1                 3                 2                 1
##        y_rate_len
## safeh20 0.706398770491803 0.707166974789916 0.707166974789917
##       0                 0                 0                 0
##       1                 2                 3                 1
##        y_rate_len
## safeh20 0.70775700831025 0.708334109589041 0.708898699186991
##       0                0                 0                 0
##       1                2                 2                 2
##        y_rate_len
## safeh20 0.709153398876404 0.709451179624665 0.709722999999999
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.710280082417582 0.710589572649573 0.711151014084507
##       0                 0                 0                 0
##       1                 6                 1                 2
##        y_rate_len
## safeh20 0.711358306451612 0.711358306451613 0.711699944289693
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.711699944289694 0.712236776859504 0.712761907356948
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.713275714285713 0.714204281767956 0.714270791556728
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.714709344262295 0.715203486486487 0.71568705882353
##       0                 0                 0                0
##       1                 3                 2                2
##        y_rate_len
## safeh20 0.716160396825397 0.716182686980609 0.716667452054794
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.716667452054795 0.717141707317072 0.717141707317073
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.717605790884719 0.717697415730338 0.718060026525199
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.718172083333333 0.718636318681318 0.719090461956522
##       0                 0                 0                 0
##       1                 2                 4                 1
##        y_rate_len
## safeh20 0.719534838709677 0.719719098591549 0.71971909859155
##       0                 0                 0                0
##       1                 2                 1                3
##        y_rate_len
## safeh20 0.720172562674095 0.720616033057851 0.720616033057852
##       0                 0                 0                 0
##       1                 2                 4                 1
##        y_rate_len
## safeh20 0.721310314285714 0.721474285714285 0.721752203389831
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.722184217877095 0.722296306068602 0.722606685082872
##       0                 0                 0                 0
##       1                 2                 1                 7
##        y_rate_len
## safeh20 0.722606685082874 0.723019918032787 0.723424216216216
##       0                 0                 0                 0
##       1                 4                 1                 2
##        y_rate_len
## safeh20 0.723819866310161 0.724207142857143 0.724608365650969
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.72460836565097 0.725000794520548 0.725760402144773
##       0                0                 0                 0
##       1                1                 6                 1
##        y_rate_len
## safeh20 0.72624143258427 0.726992554945055 0.727355869565217
##       0                0                 0                 0
##       1                2                 6                 2
##        y_rate_len
## safeh20 0.727355869565218 0.727711370967742 0.728287183098592
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.728645181058495 0.728645181058497 0.728995289256197
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.728995289256198 0.729337765667575 0.729337765667576
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.729672857142858 0.730344491525424 0.730680502793296
##       0                 0                 0                 0
##       1                 2                 2                 2
##        y_rate_len
## safeh20 0.73100908839779 0.731330491803278 0.731644945945946
##       0                0                 0                 0
##       1                2                 3                 2
##        y_rate_len
## safeh20 0.731952673796791 0.732253888888888 0.732413456090652
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.732727226890756 0.73303404432133 0.733334136986301
##       0                 0                0                 0
##       1                 3                3                 5
##        y_rate_len
## safeh20 0.733334136986302 0.733627723577235 0.733627723577236
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.734785449438202 0.734785449438203 0.735070249999999
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.735348791208791 0.735348791208792 0.735621277173914
##       0                 0                 0                 0
##       1                 6                 2                 3
##        y_rate_len
## safeh20 0.735887903225806 0.736855267605633 0.736855267605634
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.737117799442897 0.737374545454545 0.737374545454546
##       0                 0                 0                 0
##       1                 6                 4                 2
##        y_rate_len
## safeh20 0.737625694822888 0.737625694822889 0.737871428571429
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.739411491712707 0.73964106557377 0.739641065573771
##       0                 0                0                 0
##       1                 5                2                 3
##        y_rate_len
## safeh20 0.739865675675676 0.741030084985835 0.741247310924369
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.741459722991689 0.741667479452054 0.741667479452055
##       0                 0                 0                 0
##       1                 2                 1                 7
##        y_rate_len
## safeh20 0.743329466292135 0.743519333333333 0.743705027472527
##       0                 0                 0                 0
##       1                 1                 4                 3
##        y_rate_len
## safeh20 0.743705027472528 0.743886684782609 0.74406443548387
##       0                 0                 0                0
##       1                 6                 1                4
##        y_rate_len
## safeh20 0.744238404255319 0.744408710526317 0.745423352112676
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.745590417827298 0.745590417827299 0.745753801652892
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.745753801652893 0.745913623978202 0.746069999999999
##       0                 0                 0                 0
##       1                 9                 2                 1
##        y_rate_len
## safeh20 0.746070000000001 0.747673072625698 0.747813895027625
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.747951639344262 0.748086405405405 0.748086405405406
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.748218288770052 0.748218288770054 0.749523266475644
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.749767394957983 0.749885401662049 0.74988540166205
##       0                 0                 0                0
##       1                 3                 2                6
##        y_rate_len
## safeh20 0.750000821917808 0.750113739837398 0.750113739837399
##       0                 0                 0                 0
##       1                 7                 5                 1
##        y_rate_len
## safeh20 0.750224235924932 0.750224235924933 0.751968416666667
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.752061263736264 0.752152092391305 0.752240967741934
##       0                 0                 0                 0
##       1                13                 1                 1
##        y_rate_len
## safeh20 0.752240967741936 0.753918205128205 0.753991436619718
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.7540630362117 0.75413305785124 0.754201553133514
##       0               0                0                 0
##       1               1                8                 3
##        y_rate_len
## safeh20 0.754268571428571 0.754268571428572 0.75433416 0.754334160000001
##       0                 0                 0          0                 0
##       1                 1                 1          1                 1
##        y_rate_len
## safeh20 0.754398364116096 0.756121355932203 0.756169357541899
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.7561693575419 0.756216298342541 0.756262213114754
##       0               0                 0                 0
##       1               1                 4                 1
##        y_rate_len
## safeh20 0.756262213114755 0.756307135135135 0.756351096256684
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.758287478991596 0.75831108033241 0.758334164383561
##       0                 0                0                 0
##       1                 1                5                 6
##        y_rate_len
## safeh20 0.758334164383562 0.758378847184986 0.758378847184987
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.760417499999999 0.7604175 0.760417500000001 0.762467142857143
##       0                 0         0                 0                 0
##       1                 1        14                 2                 1
##        y_rate_len
## safeh20 0.762467142857144 0.762489482288829 0.762512314049586
##       0                 0                 0                 0
##       1                 2                 1                 7
##        y_rate_len
## safeh20 0.762512314049587 0.7625356545961 0.762559521126761
##       0                 0               0                 0
##       1                 1               2                 2
##        y_rate_len
## safeh20 0.762583931623931 0.764527864864865 0.764572786885246
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.764618701657458 0.764618701657459 0.764665642458101
##       0                 0                 0                 0
##       1                 5                 1                 2
##        y_rate_len
## safeh20 0.766468567639257 0.76653345844504 0.766599756097561
##       0                 0                0                 0
##       1                 2                2                 1
##        y_rate_len
## safeh20 0.766667506849314 0.766667506849315 0.76680756302521
##       0                 0                 0                0
##       1                 2                 5                4
##        y_rate_len
## safeh20 0.766879971671389 0.768421894736843 0.768594032258065
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.768682907608695 0.768773736263735 0.768773736263736
##       0                 0                 0                 0
##       1                 2                 1                 7
##        y_rate_len
## safeh20 0.768866583333333 0.768961516853933 0.769058607954546
##       0                 0                 0                 0
##       1                 2                 5                 1
##        y_rate_len
## safeh20 0.770449393139841 0.770665714285714 0.770665714285715
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.770777411444141 0.770891570247934 0.771008272980501
##       0                 0                 0                 0
##       1                 2                10                 3
##        y_rate_len
## safeh20 0.771008272980502 0.771127605633803 0.771249658119657
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.772748594594594 0.772748594594595 0.772883360655737
##       0                 0                 0                 0
##       1                 3                 4                 8
##        y_rate_len
## safeh20 0.773021104972375 0.773021104972376 0.773161927374301
##       0                 0                 0                 0
##       1                 1                 4                 3
##        y_rate_len
## safeh20 0.773161927374302 0.77330593220339 0.774536657824934
##       0                 0                0                 0
##       1                 3                3                 2
##        y_rate_len
## safeh20 0.774688069705094 0.774842764227642 0.774842764227643
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.775000849315068 0.775162437673129 0.77516243767313
##       0                 0                 0                0
##       1                13                 1                1
##        y_rate_len
## safeh20 0.775327647058823 0.775327647058824 0.776948315217391
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.776948315217392 0.777129972527472 0.777129972527474
##       0                 0                 0                 0
##       1                 2                 8                 3
##        y_rate_len
## safeh20 0.777315666666667 0.777505533707865 0.777505533707866
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.778474907651714 0.778864285714286 0.779065340599454
##       0                 0                 0                 0
##       1                 1                 6                 2
##        y_rate_len
## safeh20 0.779065340599455 0.779270826446281 0.779270826446282
##       0                 0                 0                 0
##       1                 4                 5                 1
##        y_rate_len
## safeh20 0.779480891364902 0.779480891364903 0.779915384615385
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.780749518716577 0.781193934426229 0.78119393442623
##       0                 0                 0                0
##       1                 1                 2                2
##        y_rate_len
## safeh20 0.781423508287293 0.781423508287294 0.781658212290503
##       0                 0                 0                 0
##       1                 5                 2                 3
##        y_rate_len
## safeh20 0.781898220338984 0.782143714285714 0.782371811023622
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.782842680965148 0.783085772357724 0.783334191780821
##       0                 0                 0                 0
##       1                 1                 5                 2
##        y_rate_len
## safeh20 0.783334191780822 0.78358811634349 0.783847731092437
##       0                 0                0                 0
##       1                 4                1                 1
##        y_rate_len
## safeh20 0.784947096774193 0.784947096774194 0.785213722826087
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.785213722826088 0.785486208791208 0.785486208791209 0.78576475
##       0                 0                 0                 0          0
##       1                 1                 5                 5          2
##        y_rate_len
## safeh20 0.786049550561798 0.786228015665797 0.786500422163588
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.787062857142857 0.787353269754768 0.787650082644627
##       0                 0                 0                 0
##       1                 3                 3                 1
##        y_rate_len
## safeh20 0.787650082644629 0.787953509749303 0.788263774647886
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.789190054054054 0.789504508196721 0.789825911602209
##       0                 0                 0                 0
##       1                 3                 6                 3
##        y_rate_len
## safeh20 0.78982591160221 0.790154497206704 0.790154497206705
##       0                0                 0                 0
##       1                5                 5                 1
##        y_rate_len
## safeh20 0.790490508474575 0.790490508474576 0.790672838196286
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.790997292225201 0.791328780487804 0.791667534246575
##       0                 0                 0                 0
##       1                 1                 1                11
##        y_rate_len
## safeh20 0.79201379501385 0.79236781512605 0.792367815126051
##       0                0                0                 0
##       1                1                1                 1
##        y_rate_len
## safeh20 0.793123629032257 0.793123629032258 0.793842445054945
##       0                 0                 0                 0
##       1                 1                 1                12
##        y_rate_len
## safeh20 0.795641198910082 0.796029338842975 0.796248691099476
##       0                 0                 0                 0
##       1                 1                15                 1
##        y_rate_len
## safeh20 0.796426128133705 0.796627857142858 0.797015133689839
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.797246837606838 0.797410783783784 0.797815081967213
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.797815081967214 0.798228314917127 0.798650782122904
##       0                 0                 0                 0
##       1                 2                 5                 2
##        y_rate_len
## safeh20 0.798650782122905 0.798740928381962 0.799082796610169
##       0                 0                 0                 0
##       1                 3                 3                 1
##        y_rate_len
## safeh20 0.799151903485254 0.800000876712328 0.800000876712329
##       0                 0                 0                 0
##       1                 1                14                 5
##        y_rate_len
## safeh20 0.800439473684211 0.800865239361703 0.800887899159663
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.800887899159664 0.801300161290322 0.801744538043477
##       0                 0                 0                 0
##       1                 3                 3                 1
##        y_rate_len
## safeh20 0.801744538043478 0.80181558739255 0.802111409921671
##       0                 0                0                 0
##       1                 3                1                 1
##        y_rate_len
## safeh20 0.802198681318681 0.802198681318682 0.802551451187335
##       0                 0                 0                 0
##       1                 4                 6                 2
##        y_rate_len
## safeh20 0.802662916666667 0.803137584269662 0.803137584269663 0.80346
##       0                 0                 0                 0       0
##       1                 2                 2                 1       3
##        y_rate_len
## safeh20 0.803460000000001 0.803929128065394 0.803929128065395
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.804408595041322 0.804408595041323 0.804898746518106
##       0                 0                 0                 0
##       1                 2                 1                 5
##        y_rate_len
## safeh20 0.805147941176471 0.805399943661971 0.805631513513513
##       0                 0                 0                 0
##       1                 1                 1                 4
##        y_rate_len
## safeh20 0.805912564102564 0.806125655737705 0.806630718232044
##       0                 0                 0                 0
##       1                 1                 4                 3
##        y_rate_len
## safeh20 0.806630718232045 0.807147067039106 0.807306514745308
##       0                 0                 0                 0
##       1                 3                 3                 1
##        y_rate_len
## safeh20 0.807306514745309 0.807675084745762 0.807814796747967
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.808215171428571 0.808334219178082 0.80886515235457
##       0                 0                 0                0
##       1                 1                 8                1
##        y_rate_len
## safeh20 0.808865152354571 0.809407983193277 0.809476693548387
##       0                 0                 0                 0
##       1                 2                 5                 3
##        y_rate_len
## safeh20 0.809963116147309 0.810009945652174 0.810554917582417
##       0                 0                 0                 0
##       1                 1                 3                 3
##        y_rate_len
## safeh20 0.810554917582418 0.811112 0.811658571428572 0.811681601123595
##       0                 0        0                 0                 0
##       1                11        2                 6                 1
##        y_rate_len
## safeh20 0.812217057220708 0.812217057220709 0.812264147727272
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.812721349206349 0.812787851239668 0.81278785123967
##       0                 0                 0                0
##       1                 2                 2               13
##        y_rate_len
## safeh20 0.813371364902506 0.813371364902508 0.813852243243243
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.813852243243244 0.813968028169014 0.814305354330709
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.814436229508196 0.814436229508198 0.81457829059829
##       0                 0                 0                0
##       1                 8                 3                1
##        y_rate_len
## safeh20 0.814877108753315 0.81503312154696 0.815033121546962
##       0                 0                0                 0
##       1                 2                3                 9
##        y_rate_len
## safeh20 0.815461126005362 0.815643351955307 0.815643351955308
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.816057804878049 0.816667561643835 0.816667561643836
##       0                 0                 0                 0
##       1                 1                11                 2
##        y_rate_len
## safeh20 0.816905657142856 0.817290831024931 0.817653225806452
##       0                 0                 0                 0
##       1                 1                 3                 8
##        y_rate_len
## safeh20 0.81792806722689 0.817928067226891 0.81827535326087
##       0                0                 0                0
##       1                4                 1                2
##        y_rate_len
## safeh20 0.818579745042493 0.818911153846154 0.818911153846155
##       0                 0                 0                 0
##       1                 1                 9                 1
##        y_rate_len
## safeh20 0.819223120000001 0.819561083333332 0.819857142857143
##       0                 0                 0                 0
##       1                 1                 1                 4
##        y_rate_len
## safeh20 0.820225617977528 0.820504986376022 0.821167107438016
##       0                 0                 0                 0
##       1                 1                 4                11
##        y_rate_len
## safeh20 0.821167107438017 0.822072972972973 0.822746803278688
##       0                 0                 0                 0
##       1                 4                 2                 2
##        y_rate_len
## safeh20 0.822746803278689 0.822945198938992 0.823244017094017
##       0                 0                 0                 0
##       1                 6                 2                 1
##        y_rate_len
## safeh20 0.823435524861878 0.823615737265415 0.823615737265416
##       0                 0                 0                 0
##       1                 6                 1                 1
##        y_rate_len
## safeh20 0.824139636871509 0.82430081300813 0.82485966101695
##       0                 0                0                0
##       1                 4                5                1
##        y_rate_len
## safeh20 0.825000904109588 0.825000904109589 0.825133882978722
##       0                 0                 0                 0
##       1                 5                 8                 1
##        y_rate_len
## safeh20 0.825133882978724 0.825716509695291 0.825716509695292
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.825829758064516 0.826448151260503 0.826448151260504
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.826540760869565 0.826627994722955 0.827267390109889
##       0                 0                 0                 0
##       1                 3                 1                 5
##        y_rate_len
## safeh20 0.82726739010989 0.827267390109891 0.82733424 0.827961747851003
##       0                0                 0          0                 0
##       1                1                 4          1                 1
##        y_rate_len
## safeh20 0.828010166666666 0.828010166666668 0.828055714285714
##       0                 0                 0                 0
##       1                 1                 1                 4
##        y_rate_len
## safeh20 0.828055714285715 0.82876963483146 0.828769634831461
##       0                 0                0                 0
##       1                 1                1                 4
##        y_rate_len
## safeh20 0.828792915531335 0.828814841269842 0.829546363636363
##       0                 0                 0                 0
##       1                 5                 1                 4
##        y_rate_len
## safeh20 0.829546363636364 0.830293702702702 0.830316601671309
##       0                 0                 0                 0
##       1                 7                 2                 1
##        y_rate_len
## safeh20 0.83031660167131 0.831013289124668 0.83105737704918
##       0                0                 0                0
##       1                1                 1                8
##        y_rate_len
## safeh20 0.831104197183099 0.831770348525468 0.831837928176795
##       0                 0                 0                 0
##       1                 3                 1                 3
##        y_rate_len
## safeh20 0.831837928176796 0.832457052631578 0.832543821138211
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.832635921787709 0.833334246575342 0.833451949152543
##       0                 0                 0                 0
##       1                 4                11                 2
##        y_rate_len
## safeh20 0.834006290322581 0.834142188365651 0.834653509234828
##       0                 0                 0                 0
##       1                 3                 4                 1
##        y_rate_len
## safeh20 0.83480616847826 0.834806168478262 0.834968235294117
##       0                0                 0                 0
##       1                2                 1                 6
##        y_rate_len
## safeh20 0.835623626373626 0.836254285714285 0.836254285714286 0.83645925
##       0                 0                 0                 0          0
##       1                17                 1                 4          1
##        y_rate_len
## safeh20 0.837080844686648 0.837313651685393 0.837679171122994
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.837925619834711 0.838514432432433 0.83878922005571
##       0                 0                 0                0
##       1                11                 2                1
##        y_rate_len
## safeh20 0.838789220055711 0.839367950819672 0.839367950819673
##       0                 0                 0                 0
##       1                 2                 4                 3
##        y_rate_len
## safeh20 0.839672281690142 0.839924959785523 0.839924959785524
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.840240331491713 0.840461447368421 0.840786829268293
##       0                 0                 0                 0
##       1                10                 2                 4
##        y_rate_len
## safeh20 0.84113220670391 0.841132206703911 0.841312978723403
##       0                0                 0                 0
##       1                1                 1                 3
##        y_rate_len
## safeh20 0.841667589041095 0.841667589041097 0.842044237288135
##       0                 0                 0                 0
##       1                10                 5                 2
##        y_rate_len
## safeh20 0.842044237288136 0.842182822580645 0.842182822580646
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.842567867036011 0.842977114285715 0.843071576086956
##       0                 0                 0                 0
##       1                 5                 1                 1
##        y_rate_len
## safeh20 0.843071576086957 0.84348831932773 0.843488319327732
##       0                 0                0                 0
##       1                 2                1                 3
##        y_rate_len
## safeh20 0.843979862637362 0.843979862637363 0.844452857142857
##       0                 0                 0                 0
##       1                 7                 4                 5
##        y_rate_len
## safeh20 0.844452857142858 0.844908333333333 0.845368773841961
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.845368773841962 0.845811978609625 0.845811978609626
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.845857668539326 0.846304876033057 0.846304876033058
##       0                 0                 0                 0
##       1                 2                 5                 1
##        y_rate_len
## safeh20 0.846735162162162 0.846828579545454 0.847149469496021
##       0                 0                 0                 0
##       1                 4                 1                 1
##        y_rate_len
## safeh20 0.847261838440111 0.847678524590163 0.847678524590164
##       0                 0                 0                 0
##       1                 2                 2                 6
##        y_rate_len
## safeh20 0.848079571045577 0.848240366197184 0.848465842105264
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.848642734806629 0.848642734806631 0.849029837398374
##       0                 0                 0                 0
##       1                 7                 2                 2
##        y_rate_len
## safeh20 0.849029837398375 0.849628491620112 0.85000093150685
##       0                 0                 0                0
##       1                 1                 2                7
##        y_rate_len
## safeh20 0.85035935483871 0.850636525423729 0.850993545706371 0.8516676
##       0                0                 0                 0         0
##       1                1                 1                 1         2
##        y_rate_len
## safeh20 0.852008403361345 0.852336098901098 0.852336098901099
##       0                 0                 0                 0
##       1                 6                 2                10
##        y_rate_len
## safeh20 0.852651428571428 0.852651428571429 0.85295507936508
##       0                 0                 0                0
##       1                 2                 4                1
##        y_rate_len
## safeh20 0.853656702997275 0.853656702997276 0.853944786096257
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.854222283464566 0.854401685393258 0.854684132231404
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.854684132231405 0.854955891891891 0.855734456824512
##       0                 0                 0                 0
##       1                 8                 2                 3
##        y_rate_len
## safeh20 0.855989098360656 0.85623418230563 0.856808450704225
##       0                 0                0                 0
##       1                 2                4                 3
##        y_rate_len
## safeh20 0.857045138121546 0.857045138121547 0.857272845528455
##       0                 0                 0                 0
##       1                 1                 6                 2
##        y_rate_len
## safeh20 0.857272845528456 0.857492074468085 0.857906923076924
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.858124776536312 0.858124776536313 0.858334273972602
##       0                 0                 0                 0
##       1                 1                 2                 5
##        y_rate_len
## safeh20 0.858334273972604 0.858535887096774 0.858730052770449
##       0                 0                 0                 0
##       1                 2                 5                 1
##        y_rate_len
## safeh20 0.859228813559322 0.85941922437673 0.859419224376732
##       0                 0                0                 0
##       1                 4                2                 9
##        y_rate_len
## safeh20 0.859602391304348 0.860528487394957 0.860692335164835 0.86085
##       0                 0                 0                 0       0
##       1                 2                 1                11       4
##        y_rate_len
## safeh20 0.861662889518414 0.861806499999999 0.8618065 0.861944632152588
##       0                 0                 0         0                 0
##       1                 2                 1         2                 1
##        y_rate_len
## safeh20 0.861944632152589 0.862077593582887 0.862077593582888
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.862205669291338 0.862823295128939 0.86282329512894
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.86294570224719 0.862945702247192 0.863063388429752
##       0                0                 0                 0
##       1                2                 1                 3
##        y_rate_len
## safeh20 0.863063388429753 0.863176621621622 0.863285649867374
##       0                 0                 0                 0
##       1                 2                 3                 1
##        y_rate_len
## safeh20 0.864207075208914 0.864299672131147 0.864299672131148
##       0                 0                 0                 0
##       1                 6                 3                 4
##        y_rate_len
## safeh20 0.864388793565683 0.865376535211267 0.865447541436464
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.865515853658537 0.86657264957265 0.866621061452513
##       0                 0                0                 0
##       1                 1                2                 1
##        y_rate_len
## safeh20 0.866621061452514 0.866667616438355 0.866667616438357
##       0                 0                 0                 0
##       1                 5                 5                 8
##        y_rate_len
## safeh20 0.866712419354838 0.866712419354839 0.866755567282322
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.867821101694915 0.867844903047091 0.867844903047092
##       0                 0                 0                 0
##       1                 2                 3                 3
##        y_rate_len
## safeh20 0.867867798913043 0.869048571428571 0.869048571428572
##       0                 0                 0                 0
##       1                 4                15                14
##        y_rate_len
## safeh20 0.870210401069519 0.870232561307902 0.870255583333333
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.870255583333334 0.871397351351351 0.871442644628098
##       0                 0                 0                 0
##       1                 1                 4                 4
##        y_rate_len
## safeh20 0.8714426446281 0.871489719101124 0.872543404825737
##       0               0                 0                 0
##       1               9                 2                 1
##        y_rate_len
## safeh20 0.872610245901639 0.872679693593315 0.87275190340909
##       0                 0                 0                0
##       1                11                 4                1
##        y_rate_len
## safeh20 0.872751903409092 0.873758861788617 0.873758861788619
##       0                 0                 0                 0
##       1                 2                 3                 3
##        y_rate_len
## safeh20 0.873849944751382 0.874888951612902 0.874888951612903
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.87500095890411 0.875117346368715 0.876133206521739
##       0                0                 0                 0
##       1               15                 5                 1
##        y_rate_len
## safeh20 0.876270581717451 0.876270581717452 0.877095317460318
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.877247142857143 0.877404807692308 0.877568655462185
##       0                 0                 0                 0
##       1                 4                12                 3
##        y_rate_len
## safeh20 0.877739057142858 0.87834320855615 0.878343208556151
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.878520490463215 0.878520490463216 0.878704666666666
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.878704666666667 0.87961808108108 0.879821900826446
##       0                 0                0                 0
##       1                 1                1                15
##        y_rate_len
## safeh20 0.880033735955056 0.880698016085791 0.880920819672131
##       0                 0                 0                 0
##       1                 3                 1                 8
##        y_rate_len
## safeh20 0.880920819672132 0.881152311977715 0.881152311977716
##       0                 0                 0                 0
##       1                 3                 2                 3
##        y_rate_len
## safeh20 0.882252348066298 0.882512704225352 0.882512704225353
##       0                 0                 0                 0
##       1                 9                 1                 1
##        y_rate_len
## safeh20 0.883334301369862 0.883334301369864 0.883613631284915
##       0                 0                 0                 0
##       1                 6                 4                 1
##        y_rate_len
## safeh20 0.883904102564103 0.884398614130435 0.884696260387812
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.885445714285714 0.885761043956043 0.885761043956045
##       0                 0                 0                 0
##       1                 5                 8                 6
##        y_rate_len
## safeh20 0.886088739495799 0.88647601604278 0.886808419618529 0.88715375
##       0                 0                0                 0          0
##       1                 2                1                 5          1
##        y_rate_len
## safeh20 0.887512776203966 0.888201157024793 0.888201157024794
##       0                 0                 0                 0
##       1                 1                10                 2
##        y_rate_len
## safeh20 0.888577752808988 0.888577752808989 0.888852627345844
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.888852627345845 0.889231393442622 0.889231393442623
##       0                 0                 0                 0
##       1                 2                 2                 3
##        y_rate_len
## safeh20 0.889624930362117 0.89024487804878 0.890654751381215
##       0                 0                0                 0
##       1                 1                2                 2
##        y_rate_len
## safeh20 0.890654751381216 0.890832110817942 0.891080788732395
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.891242016129031 0.891242016129033 0.891667643835615
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.891667643835617 0.892109916201117 0.8922232 0.89266402173913
##       0                 0                 0         0                0
##       1                 6                 4         1                2
##        y_rate_len
## safeh20 0.892664021739131 0.893121939058171 0.893121939058172
##       0                 0                 0                 0
##       1                 1                 4                 2
##        y_rate_len
## safeh20 0.893188809523809 0.893644285714285 0.893644285714286
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.894117280219779 0.89411728021978 0.894608823529412
##       0                 0                0                 0
##       1                 1                9                10
##        y_rate_len
## safeh20 0.895096348773843 0.89555801061008 0.895602833333333
##       0                 0                0                 0
##       1                 2                1                 2
##        y_rate_len
## safeh20 0.895602833333334 0.89605954054054 0.896059540540541
##       0                 0                0                 0
##       1                 1                1                 4
##        y_rate_len
## safeh20 0.896580413223139 0.896580413223141 0.897007238605898
##       0                 0                 0                 0
##       1                 1                 9                 1
##        y_rate_len
## safeh20 0.897121769662921 0.897541967213115 0.897541967213116
##       0                 0                 0                 0
##       1                 2                 2                 3
##        y_rate_len
## safeh20 0.897684842406877 0.898097548746518 0.898675227272728
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.898857625329816 0.899057154696133 0.899418548387097
##       0                 0                 0                 0
##       1                 1                 7                 4
##        y_rate_len
## safeh20 0.899648873239437 0.90000098630137 0.900000986301371
##       0                 0                0                 0
##       1                 2               12                 1
##        y_rate_len
## safeh20 0.900606201117318 0.900606201117319 0.900929429347825
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.900929429347827 0.901235555555555 0.901547617728532
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.901842857142857 0.902473516483516 0.902741631016042
##       0                 0                 0                 0
##       1                 4                11                 3
##        y_rate_len
## safeh20 0.903128907563025 0.903128907563026 0.903384277929155
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.903384277929156 0.904051916666666 0.904051916666667
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.90428027027027 0.904959669421487 0.904959669421488
##       0                0                 0                 0
##       1                3                 4                 1
##        y_rate_len
## safeh20 0.905161849865951 0.905665786516853 0.905852540983606
##       0                 0                 0                 0
##       1                 1                 5                 1
##        y_rate_len
## safeh20 0.905852540983607 0.906570167130919 0.907459558011049
##       0                 0                 0                 0
##       1                 4                 2                 3
##        y_rate_len
## safeh20 0.907595080645161 0.907595080645162 0.908216957746478
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.908334328767123 0.908334328767124 0.909102486033519
##       0                 0                 0                 0
##       1                 4                 6                 1
##        y_rate_len
## safeh20 0.90910248603352 0.909194836956522 0.909901282051282
##       0                0                 0                 0
##       1                4                 2                 1
##        y_rate_len
## safeh20 0.909973296398892 0.909973296398893 0.910041428571428
##       0                 0                 0                 0
##       1                 4                 1                 2
##        y_rate_len
## safeh20 0.910041428571429 0.910105984251969 0.910829752747252
##       0                 0                 0                 0
##       1                 1                 1                 7
##        y_rate_len
## safeh20 0.910829752747253 0.911648991596638 0.911648991596639
##       0                 0                 0                 0
##       1                13                 1                 2
##        y_rate_len
## safeh20 0.911694190981433 0.912501000000001 0.913316461126004
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.913316461126006 0.913338925619834 0.913338925619835
##       0                 0                 0                 0
##       1                 1                 1                 8
##        y_rate_len
## safeh20 0.913362662889519 0.914163114754098 0.914209803370787
##       0                 0                 0                 0
##       1                 1                 3                 5
##        y_rate_len
## safeh20 0.914973902439025 0.91504278551532 0.915042785515321
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.915771612903226 0.915861961325966 0.915861961325967
##       0                 0                 0                 0
##       1                 1                 4                 4
##        y_rate_len
## safeh20 0.915957443181819 0.916667671232877 0.916785042253521
##       0                 0                 0                 0
##       1                 1                10                 1
##        y_rate_len
## safeh20 0.917329047619048 0.917460244565217 0.917460244565218
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.91759877094972 0.91824 0.918398975069251 0.919185989010989
##       0                0       0                 0                 0
##       1                4       4                 4                13
##        y_rate_len
## safeh20 0.919374830508475 0.919960136239783 0.920169075630252
##       0                 0                 0                 0
##       1                 1                 1                 8
##        y_rate_len
## safeh20 0.920169075630253 0.92072172972973 0.920950083333333
##       0                 0                0                 0
##       1                 1                4                 1
##        y_rate_len
## safeh20 0.920950083333334 0.921471072386059 0.921718181818182
##       0                 0                 0                 0
##       1                 2                 2                 5
##        y_rate_len
## safeh20 0.92247368852459 0.922473688524591 0.922753820224719
##       0                0                 0                 0
##       1                4                 1                 3
##        y_rate_len
## safeh20 0.92275382022472 0.923216910569105 0.923216910569106
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.923515403899721 0.923515403899722 0.923948145161291
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.924264364640884 0.924598551136364 0.92466768 0.92500101369863
##       0                 0                 0          0                0
##       1                 8                 1          1                7
##        y_rate_len
## safeh20 0.925001013698631 0.925725652173913 0.926095055865921
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.926095055865922 0.926438571428571 0.926758828125
##       0                 0                 0              0
##       1                 1                 3              1
##        y_rate_len
## safeh20 0.926824653739612 0.927140053475936 0.927542225274725
##       0                 0                 0                 0
##       1                 5                 4                 7
##        y_rate_len
## safeh20 0.927542225274726 0.927830371352785 0.928248065395096
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.928689159663865 0.928689159663866 0.928942459459459
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.92894245945946 0.929399166666667 0.929625683646113
##       0                0                 0                 0
##       1                1                 2                 1
##        y_rate_len
## safeh20 0.930097438016528 0.93009743801653 0.930784262295081
##       0                 0                0                 0
##       1                 4                3                 2
##        y_rate_len
## safeh20 0.930784262295082 0.931297837078651 0.931297837078652
##       0                 0                 0                 0
##       1                 4                 3                 1
##        y_rate_len
## safeh20 0.931459918699187 0.931988022284123 0.932124677419354
##       0                 0                 0                 0
##       1                 3                 4                 1
##        y_rate_len
## safeh20 0.932124677419355 0.932666767955801 0.932666767955802 0.9327788
##       0                 0                 0                 0         0
##       1                 5                 5                 2         1
##        y_rate_len
## safeh20 0.933334356164384 0.933422539682539 0.933991059782608
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.934591340782123 0.934637142857142 0.934637142857143
##       0                 0                 0                 0
##       1                 3                 4                 2
##        y_rate_len
## safeh20 0.935250332409972 0.935898461538461 0.935898461538462
##       0                 0                 0                 0
##       1                 1                 2                 5
##        y_rate_len
## safeh20 0.936535994550408 0.93655940677966 0.937163189189189
##       0                 0                0                 0
##       1                 4                1                 1
##        y_rate_len
## safeh20 0.937209243697479 0.937780294906166 0.937848250000001
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.93838755319149 0.938476694214875 0.938476694214876
##       0                0                 0                 0
##       1                1                 2                 7
##        y_rate_len
## safeh20 0.938572457142858 0.939094836065574 0.939702926829269
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.939841853932584 0.940301209677419 0.940460640668523
##       0                 0                 0                 0
##       1                 4                 2                 1
##        y_rate_len
## safeh20 0.941069171270717 0.941069171270718 0.941469285714286
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.941667698630137 0.941667698630138 0.942256467391305
##       0                 0                 0                 0
##       1                 5                 4                 2
##        y_rate_len
## safeh20 0.942835714285714 0.943087625698323 0.943087625698325
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.943405668449197 0.943676011080333 0.944254697802198
##       0                 0                 0                 0
##       1                 1                 1                 9
##        y_rate_len
## safeh20 0.944823923705722 0.945061958224543 0.945151694915254
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.945383918918919 0.945729327731092 0.945729327731093
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.945934906166219 0.946297333333332 0.946855950413223
##       0                 0                 0                 0
##       1                 1                 1                 5
##        y_rate_len
## safeh20 0.947010712401055 0.948385870786517 0.948477741935483
##       0                 0                 0                 0
##       1                 1                 3                 2
##        y_rate_len
## safeh20 0.948933259052924 0.948933259052925 0.949471574585635
##       0                 0                 0                 0
##       1                 1                 2                 7
##        y_rate_len
## safeh20 0.949471574585636 0.949516031746031 0.95000104109589
##       0                 0                 0                0
##       1                 4                 1                1
##        y_rate_len
## safeh20 0.950001041095891 0.950521875 0.951034285714285 0.951034285714286
##       0                 0           0                 0                 0
##       1                 5           4                 2                 1
##        y_rate_len
## safeh20 0.95105738028169 0.951057380281691 0.951583910614525
##       0                0                 0                 0
##       1                1                 1                 2
##        y_rate_len
## safeh20 0.952101689750694 0.952610934065933 0.952610934065935
##       0                 0                 0                 0
##       1                 2                 2                 4
##        y_rate_len
## safeh20 0.953111852861035 0.953604648648648 0.953604648648649
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.954089517426272 0.954089517426274 0.954249411764706
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.95456664893617 0.954746416666666 0.955235206611569
##       0                0                 0                 0
##       1                1                 4                 3
##        y_rate_len
## safeh20 0.955235206611571 0.955715983606557 0.95618894308943
##       0                 0                 0                0
##       1                 9                 5                1
##        y_rate_len
## safeh20 0.956654274193549 0.95711216 0.957405877437326 0.957873977900552
##       0                 0          0                 0                 0
##       1                 1          1                 2                 2
##        y_rate_len
## safeh20 0.957873977900553 0.958006299212598 0.958334383561644
##       0                 0                 0                 0
##       1                 2                 1                 4
##        y_rate_len
## safeh20 0.958787282608695 0.959162982954545 0.959232857142856
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.959232857142857 0.959625464788733 0.95967128342246
##       0                 0                 0                0
##       1                 2                 1                1
##        y_rate_len
## safeh20 0.960080195530726 0.960102732095491 0.960527368421053
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.96096717032967 0.961447413793104 0.961825378378379
##       0                0                 0                 0
##       1                7                 1                 2
##        y_rate_len
## safeh20 0.962244128686327 0.96233627118644 0.962336271186441
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.962769495798319 0.96276949579832 0.9631955 0.963614462809917
##       0                 0                0         0                 0
##       1                 4                1         1                 6
##        y_rate_len
## safeh20 0.964026557377049 0.964431951219512 0.964830806451613
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.964830806451614 0.965062436260623 0.965473904494382
##       0                 0                 0                 0
##       1                 2                 2                 2
##        y_rate_len
## safeh20 0.965878495821726 0.965878495821727 0.96627638121547
##       0                 0                 0                0
##       1                 1                 1                8
##        y_rate_len
## safeh20 0.966667726027397 0.966667726027398 0.967052690217392
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.967431428571428 0.967431428571429 0.967804090909091
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.968170822281167 0.968193549295774 0.968576480446928
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.969323406593406 0.969323406593407 0.969687711171661
##       0                 0                 0                 0
##       1                10                 3                 2
##        y_rate_len
## safeh20 0.970046108108108 0.970398739946381 0.970928559322034
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.971289579831933 0.971644583333333 0.971993719008264
##       0                 0                 0                 0
##       1                 1                 3                 5
##        y_rate_len
## safeh20 0.971993719008265 0.97233713114754 0.972337131147541 0.9733344
##       0                 0                0                 0         0
##       1                 4                1                 1         1
##        y_rate_len
## safeh20 0.974017921348315 0.974678784530386 0.974678784530387
##       0                 0                 0                 0
##       1                 2                 2                 2
##        y_rate_len
## safeh20 0.97500106849315 0.975001068493151 0.975318097826087
##       0                0                 0                 0
##       1                1                18                 1
##        y_rate_len
## safeh20 0.975936898395722 0.976238912466844 0.976445198863636
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.977072765363128 0.977378725761772 0.977378725761774
##       0                 0                 0                 0
##       1                 3                 2                 2
##        y_rate_len
## safeh20 0.977679642857142 0.977679642857143 0.977975640326975
##       0                 0                 0                 0
##       1                 2                 6                 4
##        y_rate_len
## safeh20 0.978266837837837 0.978266837837838 0.978553351206434
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.979520847457626 0.979520847457627 0.979809663865546
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.980093666666666 0.98037297520661 0.980372975206612
##       0                 0                0                 0
##       1                 2                1                 7
##        y_rate_len
## safeh20 0.980647704918033 0.980917967479675 0.981183870967742
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.981703015873016 0.98282373259053 0.983081187845303
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.983081187845304 0.983334410958904 0.983334410958905
##       0                 0                 0                 0
##       1                 5                 2                 1
##        y_rate_len
## safeh20 0.983828571428571 0.98430700265252 0.985569050279329
##       0                 0                0                 0
##       1                 4                1                 1
##        y_rate_len
## safeh20 0.985804404432132 0.985804404432133 0.986035879120879
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.98603587912088 0.986263569482288 0.986487567567568
##       0                0                 0                 0
##       1                1                 2                 2
##        y_rate_len
## safeh20 0.986707962466487 0.986707962466489 0.98832974789916 0.98854275
##       0                 0                 0                0          0
##       1                 1                 1                4          2
##        y_rate_len
## safeh20 0.988752231404958 0.988958278688525 0.989160975609756
##       0                 0                 0                 0
##       1                 7                 5                 1
##        y_rate_len
## safeh20 0.991105955056179 0.99110595505618 0.991296350974929
##       0                 0                0                 0
##       1                 1                2                 1
##        y_rate_len
## safeh20 0.991296350974931 0.991483591160221 0.991483591160222
##       0                 0                 0                 0
##       1                 3                 5                 1
##        y_rate_len
## safeh20 0.991667753424657 0.991667753424658 0.991848913043478
##       0                 0                 0                 0
##       1                 2                 2                 2
##        y_rate_len
## safeh20 0.992202513368984 0.993727414772727 0.993897802816901
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.994065335195531 0.994392115384615 0.994392115384616
##       0                 0                 0                 0
##       1                 1                 3                 7
##        y_rate_len
## safeh20 0.994551498637602 0.994862573726541 0.994862573726542
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.996558547008547 0.996705423728814 0.996849831932773
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.996991833333333 0.997131487603305 0.997131487603306
##       0                 0                 0                 0
##       1                 1                 2                 4
##        y_rate_len
## safeh20 0.997268852459016 0.997403983739837 0.997536935483871
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.999768969359331 0.999768969359332 0.999885994475137
##       0                 0                 0                 0
##       1                 3                 1                 3
##        y_rate_len
## safeh20 0.999885994475139 1.00000109589041 1.00246588732394
##       0                 0                0                0
##       1                 1                6                1
##        y_rate_len
## safeh20 1.00256162011173 1.00265576177285 1.00274835164835
##       0                0                0                0
##       1                1                2                8
##        y_rate_len
## safeh20 1.00292902702703 1.00301718498659 1.00536991596639
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.00551074380165 1.00557942622951 1.00571346774194 1.00577888
##       0                0                0                0          0
##       1                3                3                2          1
##        y_rate_len
## safeh20 1.00819398876404 1.00819398876405 1.00824158774373
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.00828839779006 1.00833443835616 1.00837972826087
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.00842428571429 1.00851127320955 1.01103397183099
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.01105790502793 1.01108144044321 1.01110458791209
##       0                0                0                0
##       1                1                1                7
##        y_rate_len
## safeh20 1.01112735694823 1.01117179624665 1.01389 1.01657936339523
##       0                0                0       0                0
##       1                1                1      17                1
##        y_rate_len
## safeh20 1.01660093582888 1.01662285714286 1.01666778082192
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.01671420612813 1.01673800561798 1.0193264075067 1.01946082417582
##       0                0                0               0                0
##       1                1                1               1                7
##        y_rate_len
## safeh20 1.01950711911357 1.01955418994413 1.02206653225806
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.02213300813008 1.02220057377049 1.02226925619835
##       0                0                0                0
##       1                1                4                4
##        y_rate_len
## safeh20 1.02241008403361 1.02482142857143 1.02500112328767
##       0                0                0                0
##       1                1                1                7
##        y_rate_len
## safeh20 1.02509320441989 1.02518682451253 1.02518682451254
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.02528202247191 1.02748101876676 1.02781706043956
##       0                0                0                0
##       1                2                1                5
##        y_rate_len
## safeh20 1.02793279778393 1.02817014084507 1.03051114754098
##       0                0                0                0
##       1                3                2                3
##        y_rate_len
## safeh20 1.03064851239669 1.0306485123967 1.03107457627119 1.03122145299145
##       0                0               0                0                0
##       1                3               1                1                1
##        y_rate_len
## safeh20 1.03286655080214 1.03302 1.03333446575342 1.03333446575343
##       0                0       0                0                0
##       1                1       1                1                2
##        y_rate_len
## safeh20 1.03349560773481 1.03365944289694 1.03581194594595 1.0361732967033
##       0                0                0                0               0
##       1                2                1                3              10
##        y_rate_len
## safeh20 1.03841959677419 1.03882172131148 1.03902776859504
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.04078363395226 1.04121857142857 1.04166780821918
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.04189801104972 1.04213206128134 1.04237005617978
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.04403267567567 1.04403267567568 1.04427907356948
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04452953296703 1.04478415512465 1.04504304469274
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.04740702479339 1.04768633333333 1.04885172413793
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.04941714285714 1.05000115068493 1.05060467966574
##       0                0                0                0
##       1                1                4                2
##        y_rate_len
## safeh20 1.05091407303371 1.05225340540541 1.05288576923077
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 1.05353932960894 1.0544456 1.05477266129032 1.05578628099173
##       0                0         0                0                0
##       1                4         1                1                1
##        y_rate_len
## safeh20 1.05578628099174 1.05613541666667 1.05726497326203
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.05761571428571 1.05797217391304 1.05833449315069
##       0                0                0                0
##       1                4                1                5
##        y_rate_len
## safeh20 1.05870281767956 1.05907729805014 1.05936791556728
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.05945808988764 1.06009946380697 1.06047413513513
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.06085493188011 1.06124200549451 1.06163551246537
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.06203561452514 1.06217047619048 1.06244247887324
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.06294919354839 1.06375344262295 1.06416553719008 1.0645845
##       0                0                0                0         0
##       1                1                1                3         1
##        y_rate_len
## safeh20 1.06501050420168 1.06581428571429 1.06666783561644
##       0                0                0                0
##       1                2                3                4
##        y_rate_len
## safeh20 1.06710522099448 1.06754991643454 1.06825407506702
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.06914286103542 1.06959824175824 1.07006119113573
##       0                0                0                0
##       1                3                2                2
##        y_rate_len
## safeh20 1.07101056338028 1.07206401639344 1.07305599469496
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.07353058823529 1.07401285714286 1.07450298913043
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.07500117808219 1.0769155945946 1.07795447802198 1.0784868698061
##       0                0               0                0               0
##       1                3               1                1               1
##        y_rate_len
## safeh20 1.07930225806452 1.07957864788732 1.08037459016393
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.08092404958678 1.08205067226891 1.08391002762431
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.08509014044944 1.08571871934605 1.08691254847645
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.08752446927374 1.08814673239437 1.08868516393443
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.08930330578512 1.09041 1.09057075630252 1.0916678630137
##       0                0       0                0               0
##       1                1       2                3               2
##        y_rate_len
## safeh20 1.09231243093923 1.09335705405405 1.09363415730337
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09372385826772 1.09602075418994 1.09671481690141
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09726026525199 1.09838083333333 1.09860857142857
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.10000120547945 1.10157778378378 1.10229457765668
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.10292849858357 1.10302318681319 1.10456308943089
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.10606181818182 1.10682991666667 1.10761092436975
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.10833454794521 1.10979851351351 1.11045095238095
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.11058250681199 1.11137942307692 1.11200838709677
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.11218958448753 1.11419462566845 1.11444107438016
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.11470292613636 1.11666789041096 1.11751964088398
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.11973565934066 1.12150960893855 1.12192745901639
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.12282033057851 1.12320428571429 1.12465109243698
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.12500123287671 1.12592204419889 1.1280918956044 1.1283614516129
##       0                0                0               0               0
##       1                1                1               2               1
##        y_rate_len
## safeh20 1.12976314285714 1.13023803278688 1.13119958677686
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.13432444751381 1.13521017094017 1.13746662049862
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.13854860655738 1.13955523943662 1.1416912605042 1.14272685082873
##       0                0                0               0                0
##       1                1                1               1                2
##        y_rate_len
## safeh20 1.14480436813187 1.14795809917355 1.1531606043956 1.1534422752809
##       0                0                0               0               0
##       1                1                1               1               1
##        y_rate_len
## safeh20 1.1563373553719 1.1566914084507 1.15752441666667 1.15873142857143
##       0               0               0                0                0
##       1               2               1                1                1
##        y_rate_len
## safeh20 1.1591464469914 1.16525949295775 1.16542247282609 1.16734362162162
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.16987307692308 1.17116933518005 1.17688594005449
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.18098360335196 1.18841204918033 1.18947988826816
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.18985438016529 1.19672262295082 1.20833465753425
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.21834848066298 1.22661351498638 1.2313463002681 1.23175066115702
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.23465637096774 1.23798428571429 1.24012991735537
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.24248588859416 1.24742646067416 1.25394752089137
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25438142857143 1.26000577836412 1.26876290055249
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.28282633952255 1.28940358695652 1.2987847107438 1.31888130081301
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.33391673184358 1.37500150684932 1.41015428571429
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 0.896902692307694 1.00274835164835 1.04885172413793
##       0                 1                1                1
##       1                 0                0                0
##        y_rate_len
## safeh20 1.15715706521739 1.16198629213483 1.16987307692308
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.18287166666667 1.19616235955056 1.26451449438202
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.27553903225806 1.35552684782609 1.36704269662921
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.36704269662922 1.37675589473684 1.38257727272727
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.38858847826087 1.39140223404255 1.4063635483871 1.42165010869565
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.42457962025317 1.43906967741935 1.44244144329897
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.45611861702128 1.47069758241758 1.47280863157895
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.48777336956522 1.4891509375 1.50412252747253 1.520835
##       0                1            1                3        3
##       1                0            0                0        0
##        y_rate_len
## safeh20 1.56989419354839 1.5720991011236 1.57451152941176 1.58555138297872
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.60087894736842 1.60260032258064 1.60439736263736
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.62001989130435 1.64909819277108 1.65026776595745
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.65308152173913 1.65602033333334 1.67124725274725
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.67462730337079 1.68262595744681 1.68981666666667 1.7046721978022
##       0                1                2                2               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.70880337078652 1.710939375 1.7192047826087 1.723613
##       0                1           1               1        3
##       1                0           0               0        0
##        y_rate_len
## safeh20 1.72822159090909 1.73809714285714 1.7426234375 1.74297943820225
##       0                1                1            1                1
##       1                0                0            0                0
##        y_rate_len
## safeh20 1.75226641304348 1.76096684210526 1.76613096774193
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.77152208791209 1.7743075 1.77715550561798 1.78532804347826
##       0                3         1                2                1
##       1                0         0                0                0
##        y_rate_len
## safeh20 1.7945853 1.79883709677419 1.80494703296703 1.81133157303371
##       0         1                2                1                1
##       1         0                0                0                0
##        y_rate_len
## safeh20 1.81838967391304 1.81838967391305 1.825002 1.83154322580645
##       0                3                1        1                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 1.83191488636364 1.83837197802198 1.84441691489362
##       0                1                4                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.84550764044944 1.85145130434783 1.85879833333333
##       0                1                1                5
##       1                0                0                0
##        y_rate_len
## safeh20 1.86043893203884 1.86647931818182 1.8693596875 1.87179692307692
##       0                1                2            1                2
##       1                0                0            0                0
##        y_rate_len
## safeh20 1.88451293478261 1.88903715789474 1.89259466666666
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.89259466666667 1.90104375 1.90522186813187 1.9138597752809
##       0                1          1                1               2
##       1                0          0                0               0
##        y_rate_len
## safeh20 1.91757456521739 1.926391 1.92966161290323 1.93560818181818
##       0                3        1                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 1.93864681318681 1.9414914893617 1.94803584269663 1.95063619565217
##       0                2               1                2                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.97207175824176 1.97384968085106 1.97551762886598
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.98221191011236 1.98369782608696 2.0054967032967 2.01675945652174
##       0                1                6               3                3
##       1                0                0               0                0
##        y_rate_len
## safeh20 2.01710747368421 2.02778 2.03856606382979 2.03892164835165
##       0                1       3                1                1
##       1                0       0                0                0
##        y_rate_len
## safeh20 2.05056404494382 2.0594640625 2.06048612903226 2.06157633333333
##       0                3            2                2                1
##       1                0            0                0                0
##        y_rate_len
## safeh20 2.07234659340659 2.08114263157895 2.0828827173913 2.10328244680851
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 2.10577153846154 2.13501836538461 2.13919648351648
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.14299477272727 2.14900597826087 2.17262142857143
##       0                3                3                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.18726831460674 2.19131064516129 2.19676166666667
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.20604637362637 2.20604637362638 2.22144438202247
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.22401677419355 2.24668806818182 2.24819086956522
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.26435433333333 2.27289626373626 2.27289626373627 2.2812525
##       0                2                1                1         2
##       1                0                0                0         0
##        y_rate_len
## safeh20 2.28979651685393 2.30632120879121 2.31431413043478
##       0                1                2                4
##       1                0                0                0
##        y_rate_len
## safeh20 2.32213516129032 2.331947 2.34737576086957 2.35814865168539
##       0                1        2                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 2.3621479787234 2.3731710989011 2.37739724137931 2.38043739130435
##       0               1               1                1                2
##       1               0               0                0                0
##        y_rate_len
## safeh20 2.40659604395604 2.41349902173913 2.44656065217391
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.45295967741935 2.4796222826087 2.50687087912088 2.57372076923077
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 2.57880717391304 2.60714571428571 2.61186880434782
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.61649032258065 2.64057065934066 2.65337170212766
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.66991033333333 2.7408454945055 2.76515454545455 2.78002096774194
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 2.93797670454545 2.97554673913043 3.51481866666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 0.401099340659342 0.647163829787234 0.802198681318681
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.92275382022472 1.03546212765958 1.06959824175824
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.13644813186813 1.16489489361702 1.24431954545455
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.40384769230769 1.419446 1.43906967741936 1.45170613636364
##       0                2        1                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 1.48847680851064 1.50374696629214 1.53684378947368
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.53754747252747 1.60439736263736 1.61394734693878 1.622224
##       0                1                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 1.63782230769231 1.65308152173913 1.66194340206185 1.7046721978022
##       0                1                2                1               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.7289492631579 1.73809714285714 1.74896025 1.7743075
##       0               1                1          1         1
##       1               0                0          0         0
##        y_rate_len
## safeh20 1.80247111111111 1.863022875 1.87179692307692 1.88451293478261
##       0                1           1                2                1
##       1                0           0                0                0
##        y_rate_len
## safeh20 1.90522186813187 1.90913329787234 1.91757456521739
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.92966161290323 1.9414914893617 1.95063619565218 1.95307231578948
##       0                1               2                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.97384968085106 1.97551762886598 1.99398366666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.00473704545454 2.0054967032967 2.00620787234042 2.00620787234043
##       0                1               2                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 2.02778 2.03930147727273 2.06157633333333 2.07234659340659
##       0       1                1                1                2
##       1       0                0                0                0
##        y_rate_len
## safeh20 2.09537266666667 2.10577153846154 2.11127682352941
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.11594434782609 2.13919648351648 2.13919648351649
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.14299477272727 2.14706117647059 2.17262142857143
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.18206760869565 2.20035702127659 2.20604637362637
##       0                1                1                3
##       1                0                0                0
##        y_rate_len
## safeh20 2.22275884615384 2.22401677419355 2.230558 2.23947131868132
##       0                1                1        1                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 2.24819086956522 2.27289626373626 2.2812525 2.28878138613861
##       0                1                3         1                1
##       1                0                0         0                0
##        y_rate_len
## safeh20 2.30526568421053 2.31431413043478 2.331947 2.33974615384615
##       0                1                1        2                4
##       1                0                0        0                0
##        y_rate_len
## safeh20 2.34243551724138 2.35038136363636 2.35814865168539
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.36574333333333 2.3731710989011 2.38043739130435 2.39450617021276
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 2.39450617021277 2.39953966666667 2.40659604395604
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.44002098901099 2.46912035294117 2.47344593406593
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.50092866666667 2.51268391304348 2.54574554347826
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.58865531914894 2.60714571428572 2.6210135106383 2.64493043478261
##       0                1                1               1                2
##       1                0                0               0                0
##        y_rate_len
## safeh20 2.66573325842697 2.68572989361702 2.69602568181818 2.6999093258427
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 2.70370666666667 2.71808808510638 2.73408539325842 2.7408454945055
##       0                1                1                1               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 2.80769538461538 2.8198815625 2.8433002173913 2.87454527472527
##       0                1            1               1                2
##       1                0            0               0                0
##        y_rate_len
## safeh20 2.88158210526316 2.90496573033708 2.97482010989011
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.00824505494505 3.00860836956522 3.10926266666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.11079886363636 3.27061290322581 3.35274988636364
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.75355021276596
##       0                1
##       1                0
##        y_rate_len
## safeh20 -0.136704269662921 0.200549670329668 0.628170978260871
##       0                  1                 1                 1
##       1                  0                 0                 0
##        y_rate_len
## safeh20 0.760417500000001 0.835623626373626 0.888577752808987
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.969323406593406 1.01389 1.10302318681319 1.1278102247191
##       0                 1       1                1               1
##       1                 0       0                0               0
##        y_rate_len
## safeh20 1.16489489361702 1.17742064516129 1.18287166666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.20329802197802 1.23206886075949 1.23672296703297
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.27014791208791 1.29432765957447 1.30357285714286 1.3224652173913
##       0                2                1                1               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.3369978021978 1.34095129032258 1.35904404255319 1.38858847826087
##       0               3                1                2                1
##       1               0                0                0                0
##        y_rate_len
## safeh20 1.40384769230769 1.4295849 1.45170613636364 1.47069758241758
##       0                3         1                1                3
##       1                0         0                0                0
##        y_rate_len
## safeh20 1.47177580645161 1.48627056818182 1.50335413793103
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.50412252747253 1.520835 1.53718806451613 1.55187244897959
##       0                3        3                1                1
##       1                0        0                0                0
##        y_rate_len
## safeh20 1.57097241758242 1.58695826086956 1.58842766666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.60439736263736 1.61245156626506 1.6158871875 1.61790957446808
##       0                1                1            1                1
##       1                0                0            0                0
##        y_rate_len
## safeh20 1.622224 1.6353064516129 1.63782230769231 1.64011617647059
##       0        1               1                3                1
##       1        0               0                0                0
##        y_rate_len
## safeh20 1.64045123595506 1.65308152173913 1.67124725274725
##       0                1                1               11
##       1                0                0                0
##        y_rate_len
## safeh20 1.68981666666667 1.7046721978022 1.71498414893617 1.73809714285714
##       0                3               1                1                3
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.7426234375 1.74297943820224 1.75226641304348 1.75740933333333
##       0            1                1                1                2
##       1            0                0                0                0
##        y_rate_len
## safeh20 1.77152208791209 1.77715550561798 1.78532804347826
##       0                3                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.79120566666667 1.79883709677419 1.80494703296703
##       0                1                2                3
##       1                0                0                0
##        y_rate_len
## safeh20 1.81205872340426 1.81838967391304 1.83837197802198
##       0                1                2                4
##       1                0                0                0
##        y_rate_len
## safeh20 1.85879833333333 1.87179692307692 1.88451293478261
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.89259466666666 1.89259466666667 1.90522186813187
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.90913329787234 1.92105473684211 1.926391 1.93560818181818
##       0                2                1        2                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 1.93864681318681 1.95063619565217 1.96018733333333
##       0                4                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.98369782608696 1.99398366666667 2.0054967032967 2.00549670329671
##       0                2                2               2                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 2.01675945652174 2.02778 2.03892164835165 2.03930147727273
##       0                2       4                1                1
##       1                0       0                0                0
##        y_rate_len
## safeh20 2.06157633333333 2.06157633333334 2.07234659340659
##       0                1                1                6
##       1                0                0                0
##        y_rate_len
## safeh20 2.08474011235955 2.091148125 2.09319225806452 2.09537266666667
##       0                1           1                1                2
##       1                0           0                0                0
##        y_rate_len
## safeh20 2.09770344827586 2.10577153846154 2.11054653061225
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.11594434782609 2.12589838709677 2.129169 2.14900597826087
##       0                1                2        4                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 2.16799882978723 2.17262142857143 2.18726831460674
##       0                1                4                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.19131064516129 2.19676166666666 2.20604637362637
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.21212363636364 2.21512923913044 2.22144438202247
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 2.23947131868132 2.27289626373626 2.27289626373627 2.2812525
##       0                1                1                1         1
##       1                0                0                0         0
##        y_rate_len
## safeh20 2.28942903225806 2.30632120879121 2.31431413043478
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.34737576086956 2.34737576086957 2.35367321428571 2.3731710989011
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 2.38043739130435 2.38754741935484 2.39953966666667
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.40659604395604 2.41349902173913 2.42650078651685
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.42686436170213 2.4396728125 2.44002098901099 2.44656065217391
##       0                1            1                1                1
##       1                0            0                0                0
##        y_rate_len
## safeh20 2.44656065217392 2.44732068965517 2.47344593406593
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.47344593406594 2.4796222826087 2.50687087912088 2.5293887368421
##       0                1               1                3               1
##       1                0               0                0               0
##        y_rate_len
## safeh20 2.57372076923077 2.57880717391304 2.59738112359551
##       0                3                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.61186880434783 2.61649032258065 2.62544147368421
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.77129933333333 2.80243752808989 2.81023858695652
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.87454527472528 2.91084548387097 2.97695361702128
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 3.00860836956522 3.04167
##       0                1       1
##       1                0       0
##        y_rate_len
## safeh20 0.608334 0.842872409638553 0.851667600000003 0.927338414634146
##       0        0                 0                 0                 0
##       1        1                 1                 1                 1
##        y_rate_len
## safeh20 0.943966551724139 0.96780409090909 0.977679642857144 1.01389
##       0                 0                0                 0       0
##       1                 1                1                 1       3
##        y_rate_len
## safeh20 1.02610554216868 1.03693295454545 1.05010035714286 1.0610476744186
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.0627521686747 1.10606181818182 1.10931494117647 1.13178418604651
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.1355568 1.14062625 1.15506455696203 1.19494178571428
##       0         0          0                0                0
##       1         1          1                1                1
##        y_rate_len
## safeh20 1.19494178571429 1.23033842696629 1.23115214285714
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 1.24868557894737 1.26407064935065 1.2673625 1.27057101265823
##       0                0                0         0                0
##       1                1                1         2                1
##        y_rate_len
## safeh20 1.28823670588235 1.2982737804878 1.31344840909091 1.31610721153846
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 1.31927855421687 1.32402105882353 1.33978321428572
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.34399372093023 1.35185333333333 1.3598054117647 1.36350724137931
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.36704269662921 1.37599357142857 1.38607746835443
##       0                0                0                0
##       1                1                3                2
##        y_rate_len
## safeh20 1.39257180722892 1.39558976470588 1.39846896551724
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.41714170454545 1.41714170454546 1.419446 1.42207948051948
##       0                0                0        0                0
##       1                1                1        1                1
##        y_rate_len
## safeh20 1.42457962025316 1.4269562962963 1.43343068965517 1.43393014285714
##       0                0               0                0                0
##       1                1               1                3                1
##        y_rate_len
## safeh20 1.43539483146068 1.43634416666667 1.44841428571429
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.45833493150685 1.45876010204082 1.46586506024096
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.46715847058824 1.4683924137931 1.47653883495146 1.47973135135135
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 1.48081302631579 1.48183923076923 1.48546674418604
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.48627056818182 1.50158392405063 1.50205925925926
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.50294282352941 1.520835 1.53754747252747 1.53792303370787
##       0                0        0                0                0
##       1                1        6                1                1
##        y_rate_len
## safeh20 1.53915831325301 1.53961074074074 1.54225521126761
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.54287608695652 1.55065529411765 1.55704535714286
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.56085697368421 1.56193864864865 1.57580493975904
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.57716222222222 1.5785882278481 1.58008831168831 1.58842766666667
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 1.5915715116279 1.59325571428571 1.59502207317073 1.59687675
##       0               0                0                0          0
##       1               2                4                1          1
##        y_rate_len
## safeh20 1.59764484848485 1.59882653846154 1.60439736263736
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60823931034483 1.61245156626506 1.61709037974684
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.61959051948052 1.62693976744186 1.62946607142857 1.6321156097561
##       0                0                0                0               0
##       1                1                1                2               2
##        y_rate_len
## safeh20 1.634897625 1.63782230769231 1.64045123595506 1.64090092105263
##       0           0                0                0                0
##       1           1                1                1                2
##        y_rate_len
## safeh20 1.64608023529412 1.64909819277108 1.66230802325581 1.6627796
##       0                0                0                0         0
##       1                3                1                1         1
##        y_rate_len
## safeh20 1.66567642857143 1.67124725274725 1.68016057142857 1.6940946835443
##       0                0                0                0               0
##       1                3                1                1               1
##        y_rate_len
## safeh20 1.69859493506493 1.70188678571428 1.70188678571429
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.70630268292683 1.71764894117647 1.72239144578313
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.72736814814815 1.72822159090909 1.73259683544304
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.73304453488372 1.73809714285714 1.74297943820224
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 1.74339621951219 1.74808620689655 1.75740933333333
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 1.76096684210526 1.76745689189189 1.76841279069767 1.7743075
##       0                0                0                0         0
##       1                1                2                1         6
##        y_rate_len
## safeh20 1.77759935064935 1.78048975609756 1.786981125 1.78921764705882
##       0                0                0           0                0
##       1                2                2           1                5
##        y_rate_len
## safeh20 1.79120566666667 1.79166863013699 1.79568469879518
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.79735045454546 1.80098881578947 1.80247111111111
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.80378104651163 1.81051785714286 1.81133157303371
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.81758329268293 1.825002 1.8323313253012 1.83837197802198
##       0                0        0               0                0
##       1                2        4               4                1
##        y_rate_len
## safeh20 1.83914930232558 1.84002259259259 1.84672821428571
##       0                0                0                0
##       1                1                3                5
##        y_rate_len
## safeh20 1.85297137931035 1.85467682926829 1.8546768292683 1.85660376623377
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.86078635294117 1.86647931818182 1.86897795180723
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.87179692307692 1.87179692307693 1.87757407407407
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.87968370786517 1.88293857142857 1.89177036585366
##       0                0                0                0
##       1                2                4                2
##        y_rate_len
## safeh20 1.89657070588235 1.90104375 1.90562457831325 1.90988581395349
##       0                0          0                0                0
##       1                1          1                3                2
##        y_rate_len
## safeh20 1.91079269230769 1.91512555555555 1.91512555555556
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.91666876712329 1.91914892857143 1.9210547368421 1.93235505882353
##       0                0                0               0                0
##       1                1                1               1                3
##        y_rate_len
## safeh20 1.93560818181818 1.93831911764706 1.94227120481928
##       0                0                0                0
##       1                1                1                5
##        y_rate_len
## safeh20 1.94525406976744 1.94978846153846 1.95535928571428 1.9575103960396
##       0                0                0                0               0
##       1                3                1                8               1
##        y_rate_len
## safeh20 1.95785655172414 1.97384968085106 1.97511038961039 1.9770855
##       0                0                0                0         0
##       1                2                1                2         1
##        y_rate_len
## safeh20 1.9789178313253 1.98221191011236 1.98553458333333 1.98762594059406
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.98878423076923 1.99156964285714 1.99156964285715
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.99281827586207 1.99795970588235 2.00211189873418
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.00305097560976 2.00392376470588 2.015106375 2.01556445783133
##       0                0                0           0                0
##       1                3                2           1                5
##        y_rate_len
## safeh20 2.01599058139535 2.02778 2.03970811764706 2.04014451219512
##       0                0       0                0                0
##       1                2      10                4                2
##        y_rate_len
## safeh20 2.04061405063291 2.04982108695652 2.0513588372093 2.05221108433735
##       0                0                0               0                0
##       1                1                1               1                3
##        y_rate_len
## safeh20 2.05312725 2.05411480519481 2.06274172413793 2.06399035714286
##       0          0                0                0                0
##       1          2                1                2                3
##        y_rate_len
## safeh20 2.06533148148148 2.07386590909091 2.07723804878049
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.07911620253165 2.08885771084337 2.09361701298701
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.09770344827586 2.09918070422535 2.10020071428571
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.10020071428572 2.10288296296296 2.10577153846154
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.10843034090909 2.1088912 2.11127682352941 2.11433158536585
##       0                0         0                0                0
##       1                3         1                2                1
##        y_rate_len
## safeh20 2.11594434782609 2.1255043373494 2.129169 2.13266517241379
##       0                0               0        0                0
##       1                1               4        2                1
##        y_rate_len
## safeh20 2.13311922077922 2.13641107142857 2.14043444444444
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.14043444444445 2.14158397959184 2.14299477272727
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.14476730769231 2.14706117647059 2.15309224719101
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.15612050632911 2.15612050632912 2.16118657894737
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.16215096385542 2.16426519230769 2.16666904109589 2.167189875
##       0                0                0                0           0
##       1                1                1                1           1
##        y_rate_len
## safeh20 2.16762689655173 2.17262142857143 2.18851865853659 2.1900024
##       0                0                0                0         0
##       1                1                4                2         1
##        y_rate_len
## safeh20 2.19179161764706 2.19462265822785 2.19676166666667
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.20258862068966 2.20521075 2.20883178571429 2.21553740740741
##       0                0          0                0                0
##       1                1          1                3                1
##        y_rate_len
## safeh20 2.21862988235294 2.22275884615385 2.22820011627907
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.23544421686747 2.23652205882353 2.23755034482759
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.24123052631579 2.24504214285714 2.25000246575342
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.25162584415584 2.25308888888889 2.25441423529412 2.2556204494382
##       0                0                0                0               0
##       1                1                1                3               1
##        y_rate_len
## safeh20 2.2657337755102 2.2812525 2.29064037037037 2.29112805194805
##       0               0         0                0                0
##       1               1         7                1                1
##        y_rate_len
## safeh20 2.29893662790698 2.29979926829268 2.30873746987952
##       0                0                0                0
##       1                2                1                5
##        y_rate_len
## safeh20 2.31746285714286 2.319273375 2.32819185185185 2.33974615384615
##       0                0           0                0                0
##       1                2           1                3                1
##        y_rate_len
## safeh20 2.34243551724138 2.34538409638554 2.34643114285714
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 2.34863126582278 2.34863126582279 2.35038136363636 2.35729425
##       0                0                0                0          0
##       1                1                1                1          2
##        y_rate_len
## safeh20 2.35814865168539 2.36129644736842 2.36176729411765 2.3763046875
##       0                0                0                0            0
##       1                1                1                1            1
##        y_rate_len
## safeh20 2.37739724137931 2.38203072289156 2.38203072289157
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.38713341772152 2.38988357142857 2.3927804 2.39755164705882
##       0                0                0         0                0
##       1                1                6         1                1
##        y_rate_len
## safeh20 2.41107987804878 2.41235896551724 2.41867734939759
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.42092102040816 2.42609392857143 2.433336 2.4408462962963
##       0                0                0        0               0
##       1                1                2        2               1
##        y_rate_len
## safeh20 2.44134039473684 2.44817341463414 2.44817341463415
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.45195846938776 2.45532397590362 2.46067685393258
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.46230428571428 2.46713233333333 2.46912035294118 2.471356875
##       0                0                0                0           0
##       1                3                3                2           1
##        y_rate_len
## safeh20 2.47839777777778 2.48863909090909 2.49197060240964
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.49485292134831 2.49851464285714 2.50490470588235
##       0                0                0                0
##       1                1                6                1
##        y_rate_len
## safeh20 2.51268391304348 2.51403336734694 2.51594925925926
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.52861722891566 2.54114202531645 2.54114202531646
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.54842621621621 2.55008696969697 2.55945402439024
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.55945402439025 2.56526385542169 2.57093535714286
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.58188267441861 2.5871675862069 2.59105222222222 2.60191048192771
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 2.60231766666667 2.60714571428571 2.61225776470588
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.63364109756098 2.64335607142857 2.64493043478261 2.6462529
##       0                0                0                0         0
##       1                1                1                1         1
##        y_rate_len
## safeh20 2.65664848101266 2.67298272727273 2.6739956043956 2.67520373493976
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 2.68382647058824 2.68798744186047 2.69602568181818
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.71961082352941 2.72565233766233 2.74492170731707
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.74849698795181 2.7881975 2.79409220930232 2.80153815789474
##       0                0         0                0                0
##       1                1         1                1                1
##        y_rate_len
## safeh20 2.82179024096386 2.82696388235294 2.86274823529412
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.92160407894737 2.93431694117647 2.97174655172414
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.00457646341463 3.04167 3.07876353658536 3.079690875
##       0                0       0                0           0
##       1                1       1                1           1
##        y_rate_len
## safeh20 3.17992772727273 3.22272178571428
##       0                0                0
##       1                1                1
##        y_rate_len
## safeh20 0.829546363636363 0.903466336633663 0.909365257731961 0.950521875
##       0                 0                 0                 0           0
##       1                 1                 1                 1           1
##        y_rate_len
## safeh20 0.969323406593406 0.978928275862068 1.00274835164835 1.01389
##       0                 0                 0                0       0
##       1                 1                 1                2       1
##        y_rate_len
## safeh20 1.02528202247191 1.03546212765958 1.03617329670329 1.0361732967033
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.04461393939394 1.04885172413793 1.07353058823529
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.08631071428571 1.10302318681319 1.13178418604651
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.13644813186813 1.14439069306931 1.14471451612903 1.1558346
##       0                0                0                0         0
##       1                1                1                1         1
##        y_rate_len
## safeh20 1.15873142857143 1.17742064516129 1.19021869565217
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.20329802197802 1.21012677419355 1.216668 1.22328032608696
##       0                0                0        0                0
##       1                2                1        1                1
##        y_rate_len
## safeh20 1.22366034482759 1.22895757575758 1.22961127659574 1.2356784375
##       0                0                0                0            0
##       1                1                2                1            1
##        y_rate_len
## safeh20 1.23788895348837 1.25245235294118 1.25429690721649
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.27014791208791 1.27553903225806 1.28426066666667
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.29869056179775 1.2990465625 1.30357285714286 1.31701175257732
##       0                0            0                0                0
##       1                1            1                2                2
##        y_rate_len
## safeh20 1.32854551724138 1.32888495145631 1.3369978021978 1.34535403846154
##       0                0                0               0                0
##       1                2                1               4                1
##        y_rate_len
## safeh20 1.34836917525773 1.36350724137931 1.3687515 1.37042274725275
##       0                0                0         0                0
##       1                1                1         1                2
##        y_rate_len
## safeh20 1.37365741935484 1.37972659793814 1.39409875 1.39846896551724
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 1.40384769230769 1.406055 1.4063635483871 1.41108402061856
##       0                0        0               0                0
##       1                1        1               1                1
##        y_rate_len
## safeh20 1.41714170454546 1.419446 1.43137411764706 1.43539483146068
##       0                0        0                0                0
##       1                2        1                1                1
##        y_rate_len
## safeh20 1.43727263736264 1.44841428571429 1.45876010204082
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.47069758241758 1.47177580645161 1.47280863157895
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.47474909090909 1.48627056818182 1.4891509375 1.48979755102041
##       0                0                0            0                0
##       1                1                1            1                1
##        y_rate_len
## safeh20 1.4904183 1.50335413793103 1.50374696629213 1.50412252747253
##       0         0                0                0                0
##       1         1                1                1                2
##        y_rate_len
## safeh20 1.50448193548387 1.50482621052632 1.520835 1.53619696969697
##       0                0                0        0                0
##       1                1                3        6                1
##        y_rate_len
## safeh20 1.53651371134021 1.53718806451613 1.53754747252747
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.53792303370787 1.53831586206896 1.5512517 1.55187244897959
##       0                0                0         0                0
##       1                2                1         1                1
##        y_rate_len
## safeh20 1.55463133333333 1.56600831683168 1.56787113402062
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.56886136842105 1.56989419354839 1.57097241758242 1.5732775862069
##       0                0                0                0               0
##       1                1                1                2               1
##        y_rate_len
## safeh20 1.58047558823529 1.5816684 1.58290989795918 1.58695826086956
##       0                0         0                0                0
##       1                1         2                1                1
##        y_rate_len
## safeh20 1.58842766666667 1.58996386363636 1.59190205607477
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.59764484848485 1.59922855670103 1.60087894736842
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60260032258064 1.60439736263736 1.60823931034483 1.6120851
##       0                0                0                0         0
##       1                2                4                1         1
##        y_rate_len
## safeh20 1.61394734693878 1.6158871875 1.62001989130435 1.622224
##       0                0            0                0        0
##       1                1            1                3        2
##        y_rate_len
## safeh20 1.62693976744186 1.63058597938144 1.63530645161291 1.6378223076923
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.63782230769231 1.64045123595506 1.64498479591837 1.64757125
##       0                0                0                0          0
##       1                5                1                1          1
##        y_rate_len
## safeh20 1.64875570093458 1.65119228571428 1.65308152173913
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.65602033333333 1.66194340206186 1.67124725274725
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.67602224489796 1.67816275862069 1.68262595744681
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.68614315217391 1.68981666666667 1.69330082474227
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.69631596153846 1.69693168421053 1.69975676470588
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.70071870967742 1.7046721978022 1.70912885714286 1.710939375
##       0                0               0                0           0
##       1                3               8                1           1
##        y_rate_len
## safeh20 1.71312448275862 1.71764894117647 1.723613 1.72465824742268
##       0                0                0        0                0
##       1                2                1        2                1
##        y_rate_len
## safeh20 1.72556278846154 1.72894926315789 1.7289492631579 1.73304453488372
##       0                0                0               0                0
##       1                1                2               1                1
##        y_rate_len
## safeh20 1.73809714285714 1.7426234375 1.74297943820225 1.74734234042553
##       0                0            0                0                0
##       1                6            1                1                1
##        y_rate_len
## safeh20 1.74808620689655 1.75226641304348 1.75601567010309
##       0                0                0                0
##       1                3                2                2
##        y_rate_len
## safeh20 1.76096684210526 1.76278602272727 1.76613096774193
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 1.76841279069767 1.76913459183674 1.77152208791209
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 1.77681712871287 1.77715550561798 1.78304793103448
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.78532804347826 1.7873730927835 1.79120566666667 1.79298442105263
##       0                0               0                0                0
##       1                1               1                1                3
##        y_rate_len
## safeh20 1.7945853 1.79735045454545 1.79735045454546 1.80017204081633
##       0         0                0                0                0
##       1         3                1                1                3
##        y_rate_len
## safeh20 1.80494703296703 1.80856054054054 1.81205872340425
##       0                0                0                0
##       1                5                1                2
##        y_rate_len
## safeh20 1.81271242424242 1.81800965517241 1.81838967391304
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.81873051546392 1.825002 1.83120948979592 1.83191488636364
##       0                0        0                0                0
##       1                1        1                3                1
##        y_rate_len
## safeh20 1.83837197802198 1.84343636363636 1.84441691489362
##       0                0                0                0
##       1                5                3                1
##        y_rate_len
## safeh20 1.85008793814433 1.85145130434783 1.85297137931034
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.85297137931035 1.85701957894737 1.85879833333333
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.86647931818182 1.87179692307692 1.87677510638298
##       0                0                0                0
##       1                1                4                2
##        y_rate_len
## safeh20 1.88144536082474 1.88451293478261 1.8858354 1.8932843877551
##       0                0                0         0               0
##       1                1                2         2               1
##        y_rate_len
## safeh20 1.90104375 1.90522186813187 1.90988581395349 1.9138597752809
##       0          0                0                0               0
##       1          4                4                1               1
##        y_rate_len
## safeh20 1.91757456521739 1.92105473684211 1.92432183673469
##       0                0                0                0
##       1                2                4                1
##        y_rate_len
## safeh20 1.93560818181818 1.93864681318681 1.9414914893617 1.94416020618557
##       0                0                0               0                0
##       1                3                6               1                1
##        y_rate_len
## safeh20 1.9466688 1.95535928571428 1.95535928571429 1.9575103960396
##       0         0                0                0               0
##       1         1                2                2               1
##        y_rate_len
## safeh20 1.96236774193548 1.964411875 1.96633212121212 1.97017261363636
##       0                0           0                0                0
##       1                2           2                1                2
##        y_rate_len
## safeh20 1.97207175824176 1.97384968085106 1.9770855 1.98221191011236
##       0                0                0         0                0
##       1                5                1         2                1
##        y_rate_len
## safeh20 1.98508989473684 1.99281827586207 1.99705606060606
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.00392376470588 2.0054967032967 2.00549670329671 2.00620787234042
##       0                0               0                0                0
##       1                1               5                1                1
##        y_rate_len
## safeh20 2.00620787234043 2.01803105769231 2.02778 2.03762359223301
##       0                0                0       0                0
##       1                3                1       5                1
##        y_rate_len
## safeh20 2.03892164835165 2.03930147727273 2.04847163265306
##       0                0                0                0
##       1                7                1                2
##        y_rate_len
## safeh20 2.04912505263158 2.04982108695652 2.05760029411765
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.05850393939394 2.06048612903226 2.06157633333333
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.06274172413793 2.06604 2.06958989690722 2.07234659340659
##       0                0       0                0                0
##       1                1       1                1                7
##        y_rate_len
## safeh20 2.07386590909091 2.08114263157895 2.08922787878788 2.091148125
##       0                0                0                0           0
##       1                1                2                1           1
##        y_rate_len
## safeh20 2.09537266666667 2.09668514563107 2.09770344827586 2.0987523
##       0                0                0                0         0
##       1                1                1                1         2
##        y_rate_len
## safeh20 2.10094731958763 2.10577153846154 2.11054653061224
##       0                0                0                0
##       1                2                9                2
##        y_rate_len
## safeh20 2.11316021052631 2.11594434782609 2.11891617977528
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.11995181818182 2.1228321875 2.12589838709677 2.129169
##       0                0            0                0        0
##       1                2            1                1        2
##        y_rate_len
## safeh20 2.13230474226804 2.13641107142857 2.13919648351648
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 2.13919648351649 2.14517778947368 2.15067575757576
##       0                0                0                0
##       1                3                1                3
##        y_rate_len
## safeh20 2.15860451612903 2.1595857 2.16296533333333 2.16366216494845
##       0                0         0                0                0
##       1                1         1                1                3
##        y_rate_len
## safeh20 2.16426519230769 2.16799882978723 2.17262142857143
##       0                0                0                0
##       1                1                1                8
##        y_rate_len
## safeh20 2.17755920454545 2.1813996969697 2.18206760869565 2.1862003125
##       0                0               0                0            0
##       1                2               1                1            2
##        y_rate_len
## safeh20 2.19283186046512 2.19501958762887 2.19676166666667 2.2003570212766
##       0                0                0                0               0
##       1                1                2                1               1
##        y_rate_len
## safeh20 2.20604637362637 2.20604637362638 2.21512923913044 2.217884375
##       0                0                0                0           0
##       1                3                1                1           3
##        y_rate_len
## safeh20 2.22637701030928 2.23271521276596 2.23469632653061
##       0                0                0                0
##       1                4                1                2
##        y_rate_len
## safeh20 2.23652205882353 2.23755034482759 2.23947131868132
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 2.24504214285714 2.24819086956522 2.2495684375 2.2508358
##       0                0                0            0         0
##       1                1                1            1         1
##        y_rate_len
## safeh20 2.25672290322581 2.25773443298969 2.25866584158416
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.26356837209302 2.26507340425532 2.26573377551021
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.27251206896552 2.27289626373626 2.27324810526316 2.2812525
##       0                0                0                0         0
##       1                1                2                2         2
##        y_rate_len
## safeh20 2.2967712244898 2.29743159574468 2.29815066666667 2.30340058252427
##       0               0                0                0                0
##       1               2                1                1                1
##        y_rate_len
## safeh20 2.30429545454545 2.30632120879121 2.30747379310345
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 2.31746285714286 2.32213516129032 2.32978978723404
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.33728326315789 2.33757972222222 2.33974615384615
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.33974615384616 2.34243551724138 2.34737576086957
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.35038136363636 2.35814865168539 2.3621479787234 2.36574333333333
##       0                0                0               0                0
##       1                1                1               1                2
##        y_rate_len
## safeh20 2.3763046875 2.37739724137931 2.38316412371134 2.38562352941176
##       0            0                0                0                0
##       1            1                3                1                1
##        y_rate_len
## safeh20 2.38754741935484 2.38988357142857 2.39953966666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.40131842105263 2.40659604395604 2.41235896551724
##       0                0                0                0
##       1                1                6                2
##        y_rate_len
## safeh20 2.41452154639175 2.4202535483871 2.42092102040816 2.42719121212121
##       0                0               0                0                0
##       1                1               1                2                1
##        y_rate_len
## safeh20 2.43935910891089 2.4396728125 2.44002098901099 2.44470672897196
##       0                0            0                0                0
##       1                1            1                5                1
##        y_rate_len
## safeh20 2.44732068965517 2.45295967741935 2.45407465909091
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 2.45922255319149 2.46230428571428 2.46535357894737
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.47344593406593 2.47723639175258 2.48228241379311
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.48299591836735 2.48356541284404 2.49737115789474
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.49851464285714 2.50687087912088 2.52320352272727
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 2.52393893617021 2.534725 2.54029582417582 2.54447394230769
##       0                0        0                0                0
##       1                1        3                2                1
##        y_rate_len
## safeh20 2.54574554347826 2.54651441860465 2.55107806451613
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.56320505617978 2.57130865979382 2.57880717391304
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.58378419354839 2.5871675862069 2.58865531914894 2.59105222222222
##       0                0               0                0                0
##       1                2               1                2                1
##        y_rate_len
## safeh20 2.59233238636364 2.59342389473684 2.5973811235955 2.60714571428572
##       0                0                0               0                0
##       1                1                1               1                2
##        y_rate_len
## safeh20 2.61725093023256 2.62212931034483 2.62418588235294
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.62544147368421 2.63818316326531 2.64057065934066
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.65337170212766 2.66146125 2.67298272727273 2.6739956043956
##       0                0          0                0               0
##       1                1          1                1               3
##        y_rate_len
## safeh20 2.69205275862069 2.6931453125 2.70742054945055 2.71039900990099
##       0                0            0                0                0
##       1                1            1                5                1
##        y_rate_len
## safeh20 2.71808808510638 2.73408539325843 2.74084549450549 2.7408454945055
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 2.74411532608696 2.75198714285714 2.75351178947368
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.75740177570094 2.76515454545454 2.78552936842105
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.79693793103448 2.79693793103449 2.80074564356436
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.81516265957447 2.83189965517241 2.84956452631579
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.87454527472528 2.88488288659794 2.88648275510204
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.93797670454545 2.94139516483516 2.94139516483517
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.94561726315789 2.97482010989011 2.98317634615385
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 3.00896387096774 3.01063255102041 3.04167 3.07509494505494
##       0                0                0       0                0
##       1                1                1       5                1
##        y_rate_len
## safeh20 3.10570515789474 3.10851989010989 3.11079886363636
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.11159344827586 3.13201663366337 3.16709969072165
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 3.18314302325581 3.28640206896552 3.30906956043956 3.42187875
##       0                0                0                0          0
##       1                1                1                1          1
##        y_rate_len
## safeh20 3.48102233333333 3.60989406593407 3.8020875 3.84210947368421
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 3.85696298969072
##       0                0
##       1                1
##        y_rate_len
## safeh20 0.0699234482758606 0.0931123469387768 0.217262142857143
##       0                  0                  0                 0
##       1                  1                  1                 1
##        y_rate_len
## safeh20 0.334249450549451 0.392473548387098 0.459787325581394 0.506945
##       0                 0                 0                 0        0
##       1                 1                 1                 1        1
##        y_rate_len
## safeh20 0.528986086956522 0.568224065934064 0.579365714285715
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.59218353982301 0.608334 0.622992650602411 0.628170978260869
##       0                0        0                 0                 0
##       1                1        1                 1                 1
##        y_rate_len
## safeh20 0.649345280898876 0.656724204545454 0.661232608695652
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.668498901098901 0.675926666666667 0.697049374999999
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.734196206896552 0.743519333333334 0.744238404255318
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.75102962962963 0.760417499999999 0.787255764705881
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.796627857142858 0.802198681318681 0.817653225806449
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.820225617977528 0.826132592592594 0.835623626373626
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.839081379310344 0.843235247524754 0.85035935483871
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.869048571428571 0.8820843 0.887153750000001 0.890994242424242
##       0                 0         0                 0                 0
##       1                 1         1                 2                 1
##        y_rate_len
## safeh20 0.902473516483517 0.915771612903225 0.930393176470591
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.940722680412369 0.943966551724139 0.948477741935483 0.950521875
##       0                 0                 0                 0           0
##       1                 1                 1                 1           1
##        y_rate_len
## safeh20 0.96780409090909 0.969323406593404 0.977679642857144
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.978928275862068 0.991848913043478 1.00152548780488
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 1.00274835164835 1.00310393617021 1.01389 1.02423581632653
##       0                0                0       0                0
##       1                2                1       1                1
##        y_rate_len
## safeh20 1.02528202247191 1.02610554216867 1.04371029411765
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04768633333333 1.05010035714285 1.05010035714286
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.05527326530612 1.05797217391304 1.0610476744186 1.06310796116505
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.0645845 1.06615237113402 1.06869486486486 1.06959824175824
##       0         0                0                0                0
##       1         1                1                1                1
##        y_rate_len
## safeh20 1.07353058823529 1.077258125 1.08148266666667 1.08631071428571
##       0                0           0                0                0
##       1                1           1                4                1
##        y_rate_len
## safeh20 1.09103380434783 1.09641593023256 1.09750979381443
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.10302318681319 1.10931494117647 1.115279 1.11734816326531
##       0                0                0        0                0
##       1                2                1        1                1
##        y_rate_len
## safeh20 1.11877517241379 1.12061526315789 1.12252107142857
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.12409543478261 1.12654444444444 1.13678575757576
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.14471451612903 1.14907533333334 1.15373689655172
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.15715706521739 1.15873142857143 1.16198629213483
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.16409592592593 1.1675096969697 1.16987307692308 1.17519068181818
##       0                0               0                0                0
##       1                1               1                4                2
##        y_rate_len
## safeh20 1.18123106796117 1.18287166666666 1.18287166666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.18465042105263 1.18869862068965 1.19021869565217
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.19356670886076 1.19494178571429 1.19616235955056
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.19725308510638 1.20252069767442 1.20933867469879 1.2093386746988
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.21012677419355 1.21046051020408 1.216668 1.22366034482759
##       0                0                0        0                0
##       1                1                1        2                1
##        y_rate_len
## safeh20 1.23033842696629 1.23115214285714 1.2356784375 1.23672296703297
##       0                0                0            0                0
##       1                1                1            1                1
##        y_rate_len
## safeh20 1.23919888888889 1.24149795918367 1.24431954545455
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25046433333333 1.25634195652174 1.25862206896552
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25968151515152 1.26196946808511 1.26451449438202 1.2673625
##       0                0                0                0         0
##       1                1                1                1         2
##        y_rate_len
## safeh20 1.27014791208791 1.27553903225806 1.27675037037037
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.27888397727273 1.28426066666667 1.28565432989691
##       0                0                0                0
##       1                1                6                2
##        y_rate_len
## safeh20 1.28686038461538 1.28940358695652 1.29040545454545
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.29432765957447 1.29869056179775 1.2990465625 1.30357285714285
##       0                0                0            0                0
##       1                2                1            1                2
##        y_rate_len
## safeh20 1.30357285714286 1.30824516129032 1.30862546511628 1.3127207368421
##       0                0                0                0               0
##       1                8                3                1               1
##        y_rate_len
## safeh20 1.31344840909091 1.31430185185185 1.318057 1.31927855421687
##       0                0                0        0                0
##       1                1                1        1                2
##        y_rate_len
## safeh20 1.3224652173913 1.32402105882353 1.32668585106383 1.33461030612245
##       0               0                0                0                0
##       1               2                2                3                1
##        y_rate_len
## safeh20 1.3369978021978 1.3383348 1.33978321428572 1.34095129032258
##       0               0         0                0                0
##       1               4         1                1                1
##        y_rate_len
## safeh20 1.34191323529412 1.34801284090909 1.35185333333333
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 1.35552684782609 1.35592518072289 1.3598054117647 1.3624146875
##       0                0                0               0            0
##       1                2                3               2            2
##        y_rate_len
## safeh20 1.36350724137931 1.37042274725275 1.37173352941177
##       0                0                0                0
##       1                2                4                1
##        y_rate_len
## safeh20 1.37246085365853 1.37246085365854 1.37365741935484
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.37599357142857 1.37675589473684 1.37936197674419
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.37972659793815 1.38257727272727 1.38564966666666
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.38564966666667 1.38794650485437 1.38858847826087
##       0                0                0                0
##       1                4                1                3
##        y_rate_len
## safeh20 1.39668520408163 1.40384769230769 1.4063635483871 1.4095543902439
##       0                0                0               0               0
##       1                2                2               1               1
##        y_rate_len
## safeh20 1.41220392857143 1.41330121212121 1.41473023255814
##       0                0                0                0
##       1                3                3                1
##        y_rate_len
## safeh20 1.41714170454546 1.419446 1.42165010869565 1.42457962025317
##       0                0        0                0                0
##       1                1        2                1                1
##        y_rate_len
## safeh20 1.4257828125 1.4269562962963 1.42772265306122 1.43137411764706
##       0            0               0                0                0
##       1            2               1                2                3
##        y_rate_len
## safeh20 1.43343068965517 1.43343068965518 1.43539483146068
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.43727263736264 1.43906967741935 1.43906967741936
##       0                0                0                0
##       1                4                2                3
##        y_rate_len
## safeh20 1.44079105263158 1.44244144329897 1.44841428571429
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 1.45009848837209 1.45170613636364 1.45324233333333
##       0                0                0                0
##       1                2                1                6
##        y_rate_len
## safeh20 1.45471173913043 1.45471173913044 1.45611861702128
##       0                0                0                0
##       1                4                1                2
##        y_rate_len
## safeh20 1.45876010204081 1.46119441176471 1.46234134615385
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.46450777777778 1.46715847058823 1.46715847058824 1.4683924137931
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.4695708988764 1.46957089887641 1.47069758241758 1.47177580645161
##       0               0                0                0                0
##       1               3                1                1                4
##        y_rate_len
## safeh20 1.47280863157895 1.47379886597938 1.47474909090909 1.482814125
##       0                0                0                0           0
##       1                1                2                1           1
##        y_rate_len
## safeh20 1.48462464285714 1.48546674418604 1.48546674418605
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.48627056818182 1.48703866666667 1.48777336956522
##       0                0                0                0
##       1                2                2                5
##        y_rate_len
## safeh20 1.48847680851064 1.4891509375 1.48979755102041 1.50205925925926
##       0                0            0                0                0
##       1                2            1                1                1
##        y_rate_len
## safeh20 1.50251168674699 1.50294282352941 1.50335413793103
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.50374696629213 1.50374696629214 1.50412252747253
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 1.50448193548387 1.50577722772277 1.520835 1.53619696969697
##       0                0                0        0                0
##       1                1                1       20                2
##        y_rate_len
## safeh20 1.53684378947368 1.53684378947369 1.53718806451613
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 1.53754747252747 1.53792303370786 1.53792303370787
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.53872717647059 1.53915831325301 1.53961074074074 1.54953
##       0                0                0                0       0
##       1                1                1                1       1
##        y_rate_len
## safeh20 1.55008182692308 1.5512517 1.55187244897959 1.5525190625
##       0                0         0                0            0
##       1                1         1                2            5
##        y_rate_len
## safeh20 1.55319319148936 1.55389663043478 1.55463133333333
##       0                0                0                0
##       1                1                2                7
##        y_rate_len
## safeh20 1.55539943181818 1.55620325581395 1.55704535714286 1.558855875
##       0                0                0                0           0
##       1                1                1                1           2
##        y_rate_len
## safeh20 1.56787113402062 1.56989419354839 1.57097241758242 1.5720991011236
##       0                0                0                0               0
##       1                2                2                6               3
##        y_rate_len
## safeh20 1.5732775862069 1.57716222222222 1.5785882278481 1.5816684
##       0               0                0               0         0
##       1               2                1               1         2
##        y_rate_len
## safeh20 1.584203125 1.58555138297872 1.58695826086956 1.58842766666667
##       0           0                0                0                0
##       1           2                1                3                3
##        y_rate_len
## safeh20 1.58996386363636 1.5915715116279 1.59157151162791 1.59325571428571
##       0                0               0                0                0
##       1                3               1                1                2
##        y_rate_len
## safeh20 1.59466194174757 1.59764484848484 1.59922855670103
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60260032258064 1.60260032258065 1.60439736263736
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 1.60627516853932 1.60627516853933 1.60823931034483
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.60857548076923 1.61029588235294 1.6120851 1.61245156626506
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 1.61394734693878 1.6158871875 1.61790957446808 1.62001989130435
##       0                0            0                0                0
##       1                3            3                4                6
##        y_rate_len
## safeh20 1.62032887850467 1.622224 1.6241927184466 1.62452829545454
##       0                0        0               0                0
##       1                1        7               1                2
##        y_rate_len
## safeh20 1.62452829545455 1.62693976744186 1.62836878787879
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 1.62946607142857 1.63058597938144 1.63289652631579 1.634897625
##       0                0                0                0           0
##       1                2                1                3           1
##        y_rate_len
## safeh20 1.6353064516129 1.63782230769231 1.64045123595506 1.6425018
##       0               0                0                0         0
##       1               3                6                2         2
##        y_rate_len
## safeh20 1.64320103448276 1.64498479591837 1.64608023529412 1.64757125
##       0                0                0                0          0
##       1                5                1                2          3
##        y_rate_len
## safeh20 1.64909819277108 1.65026776595745 1.65226518518518
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.65308152173913 1.65372349514563 1.65602033333333
##       0                0                0                0
##       1                3                1                5
##        y_rate_len
## safeh20 1.65602033333334 1.65635495049505 1.65909272727273
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.66194340206185 1.66194340206186 1.66230802325581
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.66491410526315 1.66491410526316 1.66567642857143
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.66801258064516 1.66920914634146 1.67124725274725 1.6729185
##       0                0                0                0         0
##       1                5                2               11         2
##        y_rate_len
## safeh20 1.67462730337078 1.67462730337079 1.67602224489796
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.67816275862069 1.6792553125 1.68016057142857 1.68186458823529
##       0                0            0                0                0
##       1                1            2                1                2
##        y_rate_len
## safeh20 1.68262595744681 1.68614315217391 1.68981666666667
##       0                0                0                0
##       1                2                5                4
##        y_rate_len
## safeh20 1.69330082474227 1.69365715909091 1.69631596153846
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.69693168421053 1.70071870967742 1.70188678571428
##       0                0                0                0
##       1                1                5                2
##        y_rate_len
## safeh20 1.70188678571429 1.7046721978022 1.70630268292683 1.70705969387755
##       0                0               0                0                0
##       1                2               7                1                3
##        y_rate_len
## safeh20 1.70880337078652 1.710939375 1.71312448275862 1.71498414893617
##       0                0           0                0                0
##       1                3           3                2                5
##        y_rate_len
## safeh20 1.71764894117647 1.71798027777778 1.71920478260869 1.7192047826087
##       0                0                0                0               0
##       1                2                1                2               2
##        y_rate_len
## safeh20 1.72054060606061 1.72239144578313 1.723613 1.72822159090909
##       0                0                0        0                0
##       1                2                3        4                1
##        y_rate_len
## safeh20 1.72894926315789 1.73304453488372 1.73342483870968 1.7337519
##       0                0                0                0         0
##       1                2                2                6         3
##        y_rate_len
## safeh20 1.73809714285714 1.74231582524272 1.74297943820225
##       0                0                0                0
##       1               12                2                2
##        y_rate_len
## safeh20 1.74339621951219 1.74734234042553 1.74808620689655
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.75126454545455 1.75226641304348 1.75343329411765
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.75375567567568 1.75601567010309 1.75740933333333
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.75903807228916 1.76096684210526 1.76246299065421
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.76278602272727 1.7641686 1.76491962962963 1.76613096774193
##       0                0         0                0                0
##       1                1         1                2                2
##        y_rate_len
## safeh20 1.76706542857143 1.76841279069767 1.77152208791209 1.7743075
##       0                0                0                0         0
##       1                1                2                6         7
##        y_rate_len
## safeh20 1.77715550561798 1.77970053191489 1.78304793103448
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 1.78405644230769 1.78532804347826 1.786981125 1.78737309278351
##       0                0                0           0                0
##       1                1               10           1                3
##        y_rate_len
## safeh20 1.78921764705882 1.79088981308411 1.79120566666667
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 1.79298442105263 1.79735045454546 1.79883709677419
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.80017204081633 1.80378104651163 1.80494703296703 1.8059915625
##       0                0                0                0            0
##       1                1                1               10            4
##        y_rate_len
## safeh20 1.80693267326733 1.80960113924051 1.81133157303371
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.81205872340425 1.81205872340426 1.81330326923077
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.81758329268293 1.81800965517241 1.81838967391304
##       0                0                0                0
##       1                1                3                5
##        y_rate_len
## safeh20 1.81873051546392 1.825002 1.83120948979592 1.83191488636364
##       0                0        0                0                0
##       1                4       19                2                2
##        y_rate_len
## safeh20 1.8323313253012 1.837675625 1.83837197802198 1.83914930232558
##       0               0           0                0                0
##       1               2           3               10                1
##        y_rate_len
## safeh20 1.84002259259259 1.84343636363636 1.84441691489362
##       0                0                0                0
##       1                1                5                1
##        y_rate_len
## safeh20 1.84550764044944 1.84672821428571 1.85008793814433
##       0                0                0                0
##       1                5                2                1
##        y_rate_len
## safeh20 1.85145130434782 1.85145130434783 1.85297137931034
##       0                0                0                0
##       1                4                5                1
##        y_rate_len
## safeh20 1.85397028571429 1.8554187 1.85701957894737 1.85879833333333
##       0                0         0                0                0
##       1                1         1                3                4
##        y_rate_len
## safeh20 1.86078635294117 1.86224693877551 1.86424935483871 1.8693596875
##       0                0                0                0            0
##       1                3                5                2            1
##        y_rate_len
## safeh20 1.87179692307692 1.87179692307693 1.8741603030303 1.87451755813953
##       0                0                0               0                0
##       1                3                1               1                2
##        y_rate_len
## safeh20 1.87451755813954 1.87677510638298 1.87757407407407
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.87968370786517 1.88144536082474 1.88293857142857
##       0                0                0                0
##       1                6                3                3
##        y_rate_len
## safeh20 1.88451293478261 1.88696194444444 1.88793310344828
##       0                0                0                0
##       1                4                1                5
##        y_rate_len
## safeh20 1.88903715789474 1.88996970873787 1.89177036585366
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.89259466666666 1.89259466666667 1.8932843877551 1.89657070588235
##       0                0                0               0                0
##       1                1                2               4                1
##        y_rate_len
## safeh20 1.89695548387097 1.89727930693069 1.90104375 1.90488424242424
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 1.90522186813187 1.90562457831325 1.90849882352941
##       0                0                0                0
##       1                5                2                1
##        y_rate_len
## safeh20 1.90913329787234 1.90988581395349 1.91079269230769
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.91280278350515 1.91280278350516 1.9138597752809 1.91512555555556
##       0                0                0               0                0
##       1                2                1               4                1
##        y_rate_len
## safeh20 1.9162521 1.91757456521739 1.91914892857143 1.92105473684211
##       0         0                0                0                0
##       1         2                7                2                3
##        y_rate_len
## safeh20 1.9228948275862 1.92289482758621 1.92432183673469 1.926391
##       0               0                0                0        0
##       1               1                1                1        5
##        y_rate_len
## safeh20 1.92739485148515 1.92886390243902 1.92966161290323
##       0                0                0                0
##       1                1                1                7
##        y_rate_len
## safeh20 1.93029057692308 1.9327278125 1.93560818181818 1.93864681318681
##       0                0            0                0                0
##       1                1            2                2                9
##        y_rate_len
## safeh20 1.9414914893617 1.94227120481928 1.94416020618557 1.94525406976744
##       0               0                0                0                0
##       1               4                1                1                2
##        y_rate_len
## safeh20 1.9466688 1.94803584269663 1.95063619565217 1.95063619565218
##       0         0                0                0                0
##       1         1                3                6                2
##        y_rate_len
## safeh20 1.95267703703704 1.95307231578947 1.95535928571428
##       0                0                0                0
##       1                1                4                4
##        y_rate_len
## safeh20 1.95785655172414 1.96018733333333 1.96236774193548 1.964411875
##       0                0                0                0           0
##       1                2                4                3           1
##        y_rate_len
## safeh20 1.96595743902439 1.97017261363636 1.97207175824176
##       0                0                0                0
##       1                2                2                4
##        y_rate_len
## safeh20 1.97384968085106 1.97511038961039 1.97551762886598 1.9770855
##       0                0                0                0         0
##       1                2                1                2         3
##        y_rate_len
## safeh20 1.97856203883495 1.9789178313253 1.98221191011236 1.98369782608696
##       0                0               0                0                0
##       1                2               2                2                1
##        y_rate_len
## safeh20 1.98508989473684 1.98639673469387 1.98639673469388
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 1.98878423076923 1.99156964285714 1.99156964285715
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.99281827586207 1.99398366666667 1.99507387096774 1.9960959375
##       0                0                0                0            0
##       1                2                4                2            1
##        y_rate_len
## safeh20 1.99705606060606 2.00037756756757 2.00392376470588
##       0                0                0                0
##       1                2                1                4
##        y_rate_len
## safeh20 2.00473704545454 2.0054967032967 2.00620787234042 2.00620787234043
##       0                0               0                0                0
##       1                2               7                1                3
##        y_rate_len
## safeh20 2.00687505154639 2.0075022 2.00865 2.01556445783133
##       0                0         0       0                0
##       1                3         2       1                3
##        y_rate_len
## safeh20 2.01638797752809 2.01675945652174 2.01710747368421
##       0                0                0                0
##       1                4                3                2
##        y_rate_len
## safeh20 2.01743418367347 2.02778 2.0382324742268 2.03856606382979
##       0                0       0               0                0
##       1                3      21               5                5
##        y_rate_len
## safeh20 2.03892164835165 2.03930147727272 2.03930147727273
##       0                0                0                0
##       1                7                1                2
##        y_rate_len
## safeh20 2.03970811764706 2.04014451219512 2.04061405063291
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.04727788461538 2.04785702970297 2.04847163265306
##       0                0                0                0
##       1                1                1                4
##        y_rate_len
## safeh20 2.04912505263158 2.04982108695652 2.05056404494382 2.0513588372093
##       0                0                0                0               0
##       1                1                5                5               1
##        y_rate_len
## safeh20 2.05221108433735 2.05312725 2.05594361111111 2.0594640625
##       0                0          0                0            0
##       1                2          1                1            1
##        y_rate_len
## safeh20 2.06048612903226 2.06157633333333 2.06157633333334
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 2.06274172413793 2.06399035714286 2.06533148148148 2.0683356
##       0                0                0                0         0
##       1                3                2                1         2
##        y_rate_len
## safeh20 2.06958989690722 2.07092425531915 2.07234659340659
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 2.07386590909091 2.07950908163265 2.0828827173913 2.08474011235955
##       0                0                0               0                0
##       1                2                2               2                2
##        y_rate_len
## safeh20 2.08571657142857 2.08672709302325 2.08742058823529
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.08885771084337 2.08922787878788 2.091148125 2.09319225806452
##       0                0                0           0                0
##       1                2                3           3                2
##        y_rate_len
## safeh20 2.09537266666667 2.09668514563107 2.09770344827586 2.0987523
##       0                0                0                0         0
##       1                4                1                4         4
##        y_rate_len
## safeh20 2.10020071428571 2.10094731958763 2.10288296296296
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 2.10577153846154 2.10808811881188 2.11054653061224
##       0                0                0                0
##       1                8                3                2
##        y_rate_len
## safeh20 2.11054653061225 2.11127682352941 2.11227083333333
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.11316021052632 2.11433158536585 2.11594434782608
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.11594434782609 2.11891617977528 2.11995181818182
##       0                0                0                0
##       1                7                1                3
##        y_rate_len
## safeh20 2.12209534883721 2.1228321875 2.12343 2.12589838709677 2.129169
##       0                0            0       0                0        0
##       1                1            1       1                3        8
##        y_rate_len
## safeh20 2.13230474226804 2.13266517241379 2.1326651724138 2.13564063829787
##       0                0                0               0                0
##       1                2                3               1                3
##        y_rate_len
## safeh20 2.13641107142857 2.13820366336634 2.13919648351648
##       0                0                0                0
##       1                2                1                4
##        y_rate_len
## safeh20 2.13919648351649 2.14158397959184 2.14299477272727
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.14517778947368 2.14706117647059 2.14900597826087
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 2.15309224719101 2.15451625 2.15612050632912 2.15746360465116
##       0                0          0                0                0
##       1                1          2                1                1
##        y_rate_len
## safeh20 2.15860451612903 2.1604385046729 2.16296533333333 2.16366216494845
##       0                0               0                0                0
##       1                3               1                4                3
##        y_rate_len
## safeh20 2.16762689655173 2.16799882978723 2.16831920792079
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 2.17262142857143 2.17719536842105 2.17755920454545
##       0                0                0                0
##       1               13                1                2
##        y_rate_len
## safeh20 2.17798592592592 2.18206760869565 2.18284552941176
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.18527747572815 2.18726831460674 2.18851865853659 2.1900024
##       0                0                0                0         0
##       1                1                5                1         2
##        y_rate_len
## safeh20 2.19131064516129 2.19351201923077 2.19462265822785
##       0                0                0                0
##       1                6                1                1
##        y_rate_len
## safeh20 2.19501958762887 2.19676166666667 2.19843475247525
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.19879759036145 2.2003570212766 2.20258862068965 2.20604637362637
##       0                0               0                0                0
##       1                1               1                2                5
##        y_rate_len
## safeh20 2.20883178571428 2.20921294736842 2.21212363636363
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.21212363636364 2.21512923913043 2.21512923913044
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 2.21862988235294 2.2204191 2.22144438202247 2.22275884615385
##       0                0         0                0                0
##       1                3         1                3                1
##        y_rate_len
## safeh20 2.22401677419355 2.22820011627907 2.230558 2.23271521276596
##       0                0                0        0                0
##       1                2                3        1                3
##        y_rate_len
## safeh20 2.23312481012658 2.23544421686747 2.23652205882353
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.23947131868132 2.24123052631579 2.24284757575757
##       0                0                0                0
##       1                5                1                3
##        y_rate_len
## safeh20 2.24433902912621 2.24504214285714 2.24668806818182
##       0                0                0                0
##       1                1                1                5
##        y_rate_len
## safeh20 2.24819086956522 2.2495684375 2.2508358 2.25308888888889
##       0                0            0         0                0
##       1                3            1         2                2
##        y_rate_len
## safeh20 2.25441423529412 2.2556204494382 2.25672290322581 2.25773443298969
##       0                0               0                0                0
##       1                3               2                3                2
##        y_rate_len
## safeh20 2.25866584158416 2.26356837209303 2.26435433333333
##       0                0                0                0
##       1                1                1                6
##        y_rate_len
## safeh20 2.26507340425532 2.2657337755102 2.27162696202532 2.27209084337349
##       0                0               0                0                0
##       1                2               3                1                2
##        y_rate_len
## safeh20 2.27251206896552 2.27289626373626 2.27289626373627
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.27324810526316 2.2812525 2.28849457142857 2.28942903225806
##       0                0         0                0                0
##       1                3         5                1                2
##        y_rate_len
## safeh20 2.29064037037037 2.29815066666667 2.29893662790697
##       0                0                0                0
##       1                2                4                1
##        y_rate_len
## safeh20 2.29893662790698 2.30340058252427 2.30429545454545
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 2.30526568421053 2.30632120879121 2.30873746987952 2.3129365625
##       0                0                0                0            0
##       1                1                7                1            1
##        y_rate_len
## safeh20 2.31431413043478 2.31581693181818 2.31746285714285
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 2.31746285714286 2.32044927835051 2.32044927835052
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.32213516129032 2.32598294117647 2.32780867346939
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.32819185185185 2.32978978723404 2.331947 2.3329313592233
##       0                0                0        0               0
##       1                2                4        7               1
##        y_rate_len
## safeh20 2.33430488372093 2.33974615384615 2.34243551724138
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 2.34538409638554 2.34737576086956 2.35484129032258
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 2.35814865168539 2.35884612244898 2.3621479787234 2.36574333333333
##       0                0                0               0                0
##       1                1                1               1                3
##        y_rate_len
## safeh20 2.36873415929203 2.36930084210526 2.36967313953488 2.3725026
##       0                0                0                0         0
##       1                1                1                1         1
##        y_rate_len
## safeh20 2.3731710989011 2.37398634146341 2.37463710526316 2.37739724137931
##       0               0                0                0                0
##       1               6                1                1                5
##        y_rate_len
## safeh20 2.38043739130435 2.38203072289156 2.38203072289157
##       0                0                0                0
##       1                4                1                2
##        y_rate_len
## safeh20 2.38494579545454 2.38988357142857 2.39232471910112
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.39450617021277 2.40131842105263 2.4029193 2.40659604395604
##       0                0                0         0                0
##       1                4                1         1                2
##        y_rate_len
## safeh20 2.41349902173913 2.41452154639175 2.42092102040816
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 2.42609392857143 2.42650078651685 2.42686436170213
##       0                0                0                0
##       1                2                2                2
##        y_rate_len
## safeh20 2.42719121212121 2.433336 2.44002098901099 2.44526411764706
##       0                0        0                0                0
##       1                1        7                6                1
##        y_rate_len
## safeh20 2.44587896907216 2.44656065217391 2.44656065217392
##       0                0                0                0
##       1                2                3                3
##        y_rate_len
## safeh20 2.44732068965517 2.45195846938775 2.45295967741935
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.45295967741936 2.45407465909091 2.46067685393258
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 2.46230428571428 2.46230428571429 2.46713233333333
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.46912035294118 2.47344593406593 2.47577790697674
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.48058524271845 2.48566580645161 2.48598028846154
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.48863909090909 2.49737115789474 2.49851464285714
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 2.50092866666667 2.50490470588235 2.50687087912088
##       0                0                0                0
##       1                1                1                5
##        y_rate_len
## safeh20 2.50859381443299 2.5111461627907 2.51268391304348 2.51403336734694
##       0                0               0                0                0
##       1                3               1                1                1
##        y_rate_len
## safeh20 2.51594925925926 2.51837193548387 2.52320352272727
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.52902898876404 2.534725 2.54029582417582 2.54068905882353
##       0                0        0                0                0
##       1                2        4                2                1
##        y_rate_len
## safeh20 2.54574554347826 2.55107806451613 2.55629712765957
##       0                0                0                0
##       1                3                4                1
##        y_rate_len
## safeh20 2.55629712765958 2.56526385542169 2.56852133333333
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.56917757281553 2.57130865979381 2.57372076923077
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 2.57610826530612 2.57647341176471 2.57880717391304
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.58188267441861 2.58378419354839 2.5854195 2.58865531914894
##       0                0                0         0                0
##       1                1                2         1                1
##        y_rate_len
## safeh20 2.59342389473684 2.5973811235955 2.59738112359551 2.598093125
##       0                0               0                0           0
##       1                1               1                1           1
##        y_rate_len
## safeh20 2.60191048192771 2.60231766666667 2.60266608247423
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 2.60714571428571 2.61153484848485 2.61186880434782
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 2.61186880434783 2.61225776470588 2.61649032258065
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 2.61725093023256 2.62212931034483 2.62418588235294
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.62689681818182 2.6297771875 2.63155719101124 2.636114
##       0                0            0                0        0
##       1                1            1                1        1
##        y_rate_len
## safeh20 2.63855710843373 2.64057065934066 2.64335607142857
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 2.64493043478261 2.65400617647059 2.65745905263158 2.66146125
##       0                0                0                0          0
##       1                2                1                1          1
##        y_rate_len
## safeh20 2.66538092783505 2.66615518518519 2.6739956043956 2.67520373493976
##       0                0                0               0                0
##       1                1                1               2                1
##        y_rate_len
## safeh20 2.67799206521739 2.68382647058824 2.68572989361702
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 2.69070807692308 2.69602568181818 2.69673835051546 2.6999093258427
##       0                0                0                0               0
##       1                1                1                2               1
##        y_rate_len
## safeh20 2.70370666666667 2.70742054945055 2.71105369565217
##       0                0                0                0
##       1                1                2                4
##        y_rate_len
## safeh20 2.71460870967742 2.72335569767442 2.724829375 2.73408539325843
##       0                0                0           0                0
##       1                1                1           1                1
##        y_rate_len
## safeh20 2.737503 2.7408454945055 2.75539517647059 2.76197620689655
##       0        0               0                0                0
##       1        2               1                1                1
##        y_rate_len
## safeh20 2.76869961538461 2.77129933333333 2.77215493670886
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.77880962962963 2.78002096774193 2.80769538461538
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.81272709677419 2.82216804123711 2.82946046511628
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.83661359550562 2.84112032967033 2.8433002173913 2.85544530612245
##       0                0                0               0                0
##       1                1                2               1                1
##        y_rate_len
## safeh20 2.85843686746988 2.86618903846154 2.87268833333333 2.8832496875
##       0                0                0                0            0
##       1                1                1                1            1
##        y_rate_len
## safeh20 2.89329585365854 2.8950834939759 2.90019697674418 2.90648466666667
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 2.90797021978022 2.91084548387096 2.91084548387097
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.91223723404255 2.91624030927835 2.92901555555555
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.93678482758621 2.940281 2.94248510869565 2.94855765306122
##       0                0        0                0                0
##       1                1        1                1                1
##        y_rate_len
## safeh20 2.96837674698796 3.00545964285714 3.00749393258427
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.00824505494505 3.00860836956522 3.0099859375 3.04167
##       0                0                0            0       0
##       1                1                2            1       1
##        y_rate_len
## safeh20 3.07149029411765 3.07437612903226 3.07509494505495
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.07745435294117 3.105038125 3.11002213483146 3.11159344827586
##       0                0           0                0                0
##       1                1           1                2                1
##        y_rate_len
## safeh20 3.11240651162791 3.1329201 3.14536329545454 3.16095117647059
##       0                0         0                0                0
##       1                1         1                2                1
##        y_rate_len
## safeh20 3.17391652173913 3.17536978021978 3.22789469387755
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.22981453608247 3.27564461538461 3.39472098214286 3.4370871
##       0                0                0                0         0
##       1                1                1                1         1
##        y_rate_len
## safeh20 3.50453282608695 3.6037177173913 3.63138153061225 3.67829860465116
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 3.76587714285714 3.77904454545454 3.81699764705882
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 4.02483606060606 4.13530415730337
##       0                0                0
##       1                1                1
##        y_rate_len
## safeh20 0.578578532608697 0.668498901098901 0.670475645161289
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.688997071823205 0.698088196721312 0.705542010309278
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.735887903225806 0.752061263736264 0.7604175 0.78982591160221
##       0                 1                 1         1                2
##       1                 0                 0         0                0
##        y_rate_len
## safeh20 0.793479130434782 0.818911153846154 0.822072972972973
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.823435524861879 0.835623626373626 0.840240331491713
##       0                 2                 3                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.852336098901098 0.873849944751382 0.880920819672131
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.885761043956043 0.890654751381215 0.893686546391752
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.897541967213116 0.904280270270271 0.914163114754098
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.915771612903225 0.919185989010989 0.925725652173913
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.927140053475936 0.930784262295081 0.932124677419355
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.935898461538461 0.94106917127072 0.942256467391305
##       0                 2                1                 1
##       1                 0                0                 0
##        y_rate_len
## safeh20 0.951583910614524 0.952610934065935 0.958787282608696
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.962336271186441 0.964026557377049 0.969323406593406
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.970046108108109 0.970745744680851 0.975318097826088
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.975936898395722 0.980647704918031 0.980647704918034
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.991848913043478 0.996991833333334 0.997268852459016
##       0                 1                 1                 2
##       1                 0                 0                 0
##        y_rate_len
## safeh20 1.00274835164835 1.00828839779006 1.00837972826087
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.00846812834225 1.01389 1.01937048648649 1.01946082417582
##       0                1       3                1                1
##       1                0       0                0                0
##        y_rate_len
## safeh20 1.02473374331551 1.02509320441989 1.03051114754098
##       0                1                1                3
##       1                0                0                0
##        y_rate_len
## safeh20 1.03581194594595 1.04713229508197 1.05288576923077
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.05726497326203 1.05797217391304 1.05945808988764
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.06294919354839 1.06375344262295 1.0645845 1.06869486486486
##       0                1                2         1                2
##       1                0                0         0                0
##        y_rate_len
## safeh20 1.06959824175824 1.07450298913043 1.07550762430939
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.08631071428571 1.09103380434783 1.09231243093923
##       0                3                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.09699573770492 1.10756461956522 1.11973565934066
##       0                1                3                3
##       1                0                0                0
##        y_rate_len
## safeh20 1.12409543478261 1.1259220441989 1.12711629441624 1.1278102247191
##       0                1               1                1               1
##       1                0               0                0               0
##        y_rate_len
## safeh20 1.13023803278688 1.13217716666667 1.1344607027027 1.13644813186813
##       0                1                1               2                4
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.14062625 1.14471451612903 1.14685918032787 1.15715706521739
##       0          1                1                3                1
##       1          0                0                0                0
##        y_rate_len
## safeh20 1.16348032786885 1.16734362162162 1.16987307692308
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.17112427807487 1.17248731843575 1.17368788043478
##       0                1                1                3
##       1                0                0                0
##        y_rate_len
## safeh20 1.17742064516129 1.18287166666667 1.18658554945055
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.19021869565217 1.19091841269841 1.19314127071823
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.19377370967742 1.19672262295082 1.20329802197802
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.20365550802139 1.20674951086956 1.20994607734807
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.21343218085106 1.2200104945055 1.22328032608696 1.22647983870968
##       0                1               1                3                3
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.2267508839779 1.22996491803279 1.23310945945946 1.23356616666667
##       0               2                3                2                1
##       1               0                0                0                0
##        y_rate_len
## safeh20 1.23618673796791 1.23672296703297 1.23981114130435
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.24283290322581 1.24658606557377 1.25046433333333
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.25245235294118 1.25343543956044 1.27444273743017 1.2849835828877
##       0                1                3                2               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.28940358695652 1.29644950819672 1.2988752972973 1.30593440217391
##       0                1                3               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.30824516129032 1.30842787709497 1.31531675675676 1.318057
##       0                2                1                1        1
##       1                0                0                0        0
##        y_rate_len
## safeh20 1.32028532967033 1.3224652173913 1.32757972375691 1.3369978021978
##       0                1               2                1               1
##       1                0               0                0               0
##        y_rate_len
## safeh20 1.3389960326087 1.34241301675978 1.35004604278075 1.35185333333333
##       0               1                1                1                1
##       1               0                0                0                0
##        y_rate_len
## safeh20 1.35380687861272 1.35552684782609 1.37205766304348
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.37799414364641 1.37955524590164 1.38713521978022
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.40384769230769 1.40511929347826 1.41160375690608
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.41279754098361 1.41396551351351 1.44603983606557
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.49590327868852 1.51243259668508 1.520835 1.65308152173913
##       0                1                1        1                1
##       1                0                0        0                0
##        y_rate_len
## safeh20 1.68795972527473
##       0                1
##       1                0
##        y_rate_len
## safeh20 -0.0986487567567558 0.719534838709676 0.747673072625699
##       0                   1                 1                 1
##       1                   0                 0                 0
##        y_rate_len
## safeh20 0.760417499999999 0.801300161290323 0.835623626373626
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.864299672131148 0.887838810810812 0.902473516483517
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.935898461538461 0.935898461538463 1.00274835164835 1.01389
##       0                 1                 1                1       2
##       1                 0                 0                0       0
##        y_rate_len
## safeh20 1.0361732967033 1.05797217391304 1.07550762430939 1.08513632432432
##       0               1                1                1                1
##       1               0                0                0                0
##        y_rate_len
## safeh20 1.10911723756906 1.1283614516129 1.13023803278688 1.1344607027027
##       0                1               1                1               2
##       1                0               0                0               0
##        y_rate_len
## safeh20 1.13644813186813 1.14272685082873 1.14471451612903
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.15715706521739 1.16987307692308 1.17742064516129
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.20329802197802 1.20365550802139 1.21012677419355 1.216668
##       0                1                1                1        3
##       1                0                0                0        0
##        y_rate_len
## safeh20 1.22647983870968 1.24283290322581 1.25046433333333
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.27014791208791 1.2716586440678 1.2771653038674 1.27982836065574
##       0                3               1               1                1
##       1                0               0               0                0
##        y_rate_len
## safeh20 1.28426066666667 1.29143530726257 1.29644950819672 1.2988752972973
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.30357285714286 1.30824516129032 1.31531675675676
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.32028532967033 1.32969180327869 1.3369978021978 1.36293409836066
##       0                1                1               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.36464113513513 1.37042274725275 1.37799414364641 1.3810825945946
##       0                1                1                1               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.39001048387097 1.39339072625698 1.40384769230769
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.43137411764706 1.43727263736264 1.43906967741935
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.44603983606557 1.44684843243243 1.44917261780105
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.45471173913043 1.46266098360656 1.47069758241758
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.47177580645161 1.48741005494506 1.49590327868852
##       0                2                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.49617281081081 1.50412252747253 1.51261427027027 1.520835
##       0                1                1                2        2
##       1                0                0                0        0
##        y_rate_len
## safeh20 1.55389663043478 1.56331642458101 1.56989419354839
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.57097241758242 1.57268164772727 1.57965182320442
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.58624725806452 1.60260032258065 1.61126302702703
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.61535016949153 1.62001989130435 1.62887245901639
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.64414594594595 1.68614315217391 1.69535704918033
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.72138467032967 1.73573559782609 1.73809714285714
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.75740933333333 1.77152208791209 1.78248403225807
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.78532804347826 1.79508393442623 1.80856054054054 1.8149191160221
##       0                1                1                1               1
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.81838967391304 1.83154322580645 1.88451293478261
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.90522186813187 1.92966161290323 1.94009221621622
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.97297513513514 2.10182814606741 2.10707865921788
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 2.17027264864865 2.53198475675676
##       0                1                1
##       1                0                0
##        y_rate_len
## safeh20 0.551511593406594 0.598361311475409 0.68682870967742
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.698088196721312 0.713687932960894 0.718636318681318
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.756216298342541 0.768594032258064 0.768773736263735
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.776948315217392 0.778101627906975 0.784430684210527
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.78982591160221 0.801300161290321 0.811112 0.814436229508198
##       0                1                 1        1                 2
##       1                0                 0        0                 0
##        y_rate_len
## safeh20 0.818911153846155 0.822072972972972 0.83105737704918
##       0                 1                 1                2
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.835623626373626 0.840240331491713 0.843071576086956
##       0                 2                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.85035935483871 0.861806499999999 0.864299672131148
##       0                1                 1                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.86904857142857 0.869048571428572 0.880920819672131
##       0                1                 1                 3
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.89266402173913 0.90428027027027 0.909194836956522
##       0                1                1                 1
##       1                0                0                 0
##        y_rate_len
## safeh20 0.910782542372881 0.924264364640884 0.925725652173912
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.925725652173914 0.930784262295081 0.934591340782123
##       0                 1                 2                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.941069171270718 0.942256467391305 0.957873977900553
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.960527368421053 0.964026557377051 0.970046108108109
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.974678784530386 0.975318097826087 0.975318097826088
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## safeh20 0.975936898395722 0.980647704918034 0.98603587912088
##       0                 1                 1                1
##       1                 0                 0                0
##        y_rate_len
## safeh20 0.99148359116022 0.991848913043478 0.992202513368983
##       0                1                 3                 1
##       1                0                 0                 0
##        y_rate_len
## safeh20 0.997268852459016 0.99753693548387 1.00274835164835
##       0                 5                1                1
##       1                 0                0                0
##        y_rate_len
## safeh20 1.00292902702703 1.00828839779006 1.01946082417582
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.03051114754098 1.03581194594595 1.0361732967033 1.04189801104972
##       0                2                1               3                2
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.04713229508197 1.04768633333333 1.05288576923077
##       0                1                3                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.05726497326203 1.05870281767956 1.06294919354839
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.06375344262295 1.06782031914894 1.06959824175824
##       0                1                1                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.07930225806452 1.08037459016393 1.08148266666667
##       0                1                4                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.08513632432432 1.08631071428571 1.09103380434783
##       0                1                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.09565532258065 1.1001785106383 1.10302318681319 1.10606181818182
##       0                1               1                1                1
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.10756461956522 1.11200838709677 1.1136168852459 1.11973565934066
##       0                1                2               1                1
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.12409543478261 1.13023803278688 1.1344607027027 1.13644813186813
##       0                3                1               2                2
##       1                0                0               0                0
##        y_rate_len
## safeh20 1.13859304812834 1.14272685082873 1.14907533333333
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.15715706521739 1.15953165745856 1.16106758064516
##       0                2                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.16348032786885 1.16734362162162 1.16987307692308 1.1763364640884
##       0                1                2                2               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.17742064516129 1.18010147540984 1.18658554945055
##       0                2                4                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.19021869565217 1.19377370967742 1.19672262295082
##       0                2                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.19725308510638 1.19976983333333 1.2133437704918 1.216668
##       0                1                1               1        2
##       1                0                0               0        0
##        y_rate_len
## safeh20 1.21992112299465 1.22001049450549 1.22647983870968 1.2267508839779
##       0                1                2                1               2
##       1                0                0                0               0
##        y_rate_len
## safeh20 1.22703732954545 1.22996491803279 1.23310945945946
##       0                1                4                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.24045759776536 1.24355569060774 1.25343543956044
##       0                1                1                4
##       1                0                0                0
##        y_rate_len
## safeh20 1.26320721311475 1.2673625 1.2771653038674 1.27982836065574
##       0                1         1               1                1
##       1                0         0               0                0
##        y_rate_len
## safeh20 1.2849835828877 1.28940358695652 1.30357285714286 1.30593440217391
##       0               1                1                3                1
##       1               0                0                0                0
##        y_rate_len
## safeh20 1.31077491712707 1.32028532967033 1.3224652173913 1.3275797237569
##       0                1                1               2               1
##       1                0                0               0               0
##        y_rate_len
## safeh20 1.32969180327869 1.3369978021978 1.33899603260869 1.34438453038674
##       0                1               4                1                2
##       1                0               0                0                0
##        y_rate_len
## safeh20 1.35552684782609 1.36118933701658 1.3687515 1.37042274725275
##       0                1                1         1                1
##       1                0                0         0                0
##        y_rate_len
## safeh20 1.37675589473684 1.37955524590164 1.38713521978022
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.39617639344262 1.40384769230769 1.40511929347826
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.41279754098361 1.42056016483516 1.42941868852459
##       0                2                2                2
##       1                0                0                0
##        y_rate_len
## safeh20 1.47069758241758 1.49446213872832 1.49562779005525
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.50412252747253 1.53754747252747 1.55463133333333
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.56989419354839 1.57900901639344 1.59645662983425
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## safeh20 1.61895338709677 1.67124725274725 1.95063619565217
##       0                1                2                1
##       1                0                0                0
##        y_rate_len
## safeh20 0.300824505494505 0.420120165745856 0.422454166666667
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.429801195652173 0.477471453488373 0.501374175824176
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.512641011235954 0.515255573770491 0.536765294117647
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.56626835106383 0.568224065934064 0.568224065934067
##       0                0                 0                 0
##       1                1                 1                 2
##        y_rate_len
## safeh20 0.581740163934425 0.584936538461538 0.588168232044199
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.590441823529412 0.598361311475411 0.601460169491525
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.60164901098901 0.618361483516483 0.618361483516484
##       0                0                 0                 0
##       1                4                 2                 3
##        y_rate_len
## safeh20 0.622159772727273 0.625232166666667 0.635073956043956
##       0                 0                 0                 0
##       1                 1                 1                 5
##        y_rate_len
## safeh20 0.64822475409836 0.651786428571428 0.65178642857143
##       0                0                 0                0
##       1                1                 2                5
##        y_rate_len
## safeh20 0.655387458563536 0.655387458563537 0.659639277108433
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.666433314606741 0.668498901098901 0.677763423913045
##       0                 0                 0                 0
##       1                 1                 4                 1
##        y_rate_len
## safeh20 0.685211373626373 0.685211373626374 0.698088196721312
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.701923846153847 0.705801878453039 0.718636318681318
##       0                 0                 0                 0
##       1                 5                 1                 7
##        y_rate_len
## safeh20 0.719534838709678 0.730680502793296 0.73534879120879
##       0                 0                 0                0
##       1                 1                 1                3
##        y_rate_len
## safeh20 0.735348791208791 0.735348791208792 0.739411491712707
##       0                 0                 0                 0
##       1                 1                 6                 1
##        y_rate_len
## safeh20 0.74231232142857 0.743519333333332 0.74388668478261
##       0                0                 0                0
##       1                1                 1                1
##        y_rate_len
## safeh20 0.752061263736264 0.752061263736265 0.752240967741934
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.75621629834254 0.756216298342541 0.756216298342543 0.7604175
##       0                0                 0                 0         0
##       1                1                 1                 2         2
##        y_rate_len
## safeh20 0.764572786885246 0.768773736263735 0.768773736263736
##       0                 0                 0                 0
##       1                 1                 5                 1
##        y_rate_len
## safeh20 0.768773736263738 0.769157931034481 0.773916035502959
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.776948315217391 0.785486208791208 0.785486208791209
##       0                 0                 0                 0
##       1                 1                 3                 3
##        y_rate_len
## safeh20 0.789190054054054 0.78982591160221 0.791185838150289
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.797815081967213 0.797815081967214 0.802198681318681
##       0                 0                 0                 0
##       1                 2                 2                 4
##        y_rate_len
## safeh20 0.802198681318682 0.802198681318683 0.806630718232044
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.810009945652175 0.814436229508198 0.818911153846152
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.820225617977528 0.822072972972973 0.826349653179191
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.83105737704918 0.831057377049181 0.832838214285714
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.835623626373625 0.835623626373626 0.835623626373628
##       0                 0                 0                 0
##       1                 1                 8                 2
##        y_rate_len
## safeh20 0.843071576086956 0.844908333333333 0.847678524590164
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.852336098901098 0.852336098901099 0.8523360989011 0.8618065
##       0                 0                 0               0         0
##       1                 4                 1               4         1
##        y_rate_len
## safeh20 0.864299672131146 0.869048571428571 0.869048571428572
##       0                 0                 0                 0
##       1                 1                 3                 5
##        y_rate_len
## safeh20 0.871489719101122 0.871489719101125 0.876133206521739
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.885761043956043 0.897541967213113 0.897541967213115
##       0                 0                 0                 0
##       1                 7                 1                 1
##        y_rate_len
## safeh20 0.901235555555555 0.902473516483515 0.902473516483516
##       0                 0                 0                 0
##       1                 1                 3                 3
##        y_rate_len
## safeh20 0.902473516483517 0.919185989010988 0.919185989010989
##       0                 0                 0                 0
##       1                 2                 3                 5
##        y_rate_len
## safeh20 0.924264364640884 0.925725652173913 0.926485689655173
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.930784262295083 0.935898461538461 0.935898461538462
##       0                 0                 0                 0
##       1                 1                 4                 3
##        y_rate_len
## safeh20 0.935898461538463 0.939841853932584 0.949516031746033
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.952610934065932 0.952610934065933 0.952610934065935
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.955953428571429 0.957873977900552 0.95967128342246
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.963195499999999 0.965609523809524 0.969323406593406
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.969323406593407 0.969323406593408 0.974017921348315
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.980647704918033 0.980647704918034 0.986035879120878
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.986035879120879 0.98603587912088 0.991483591160221
##       0                 0                0                 0
##       1                 1                5                 1
##        y_rate_len
## safeh20 0.995784821428571 0.997268852459016 1.00274835164835
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 1.01946082417582 1.01946082417583 1.0361732967033 1.03654675977654
##       0                0                0               0                0
##       1                7                1               4                1
##        y_rate_len
## safeh20 1.04144135869565 1.04189801104972 1.0455740625 1.05288576923077
##       0                0                0            0                0
##       1                1                1            1                4
##        y_rate_len
## safeh20 1.06959824175824 1.08037459016393 1.08631071428571
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.09838083333333 1.10302318681319 1.10911723756906
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.11973565934066 1.12232743315508 1.1259220441989 1.13644813186813
##       0                0                0               0                0
##       1                5                1               2                4
##        y_rate_len
## safeh20 1.14272685082873 1.1531606043956 1.15953165745856 1.18658554945055
##       0                0               0                0                0
##       1                1               2                1                1
##        y_rate_len
## safeh20 1.19928702857143 1.20329802197802 1.2070119047619 1.22001049450549
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.2200104945055 1.22734052631579 1.23672296703297 1.25343543956044
##       0               0                0                0                0
##       1               1                1                2                3
##        y_rate_len
## safeh20 1.29869056179775 1.38858847826087 1.40384769230769
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.44684843243243 1.50412252747253 2.34497463687151
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.35689612565445 2.52072099447514 2.91624030927835
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 3.41303668604651 4.03315359116022 4.0939234054054 4.15078723756906
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 4.2180064640884 4.28522569060774 4.30203049723757 4.35244491712707
##       0               0                0                0                0
##       1               1                1                1                3
##        y_rate_len
## safeh20 4.55410259668508 4.57090740331492 4.63812662983425
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 0.512281263157895 0.560307631578948 0.650705522388059
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.651786428571428 0.655387458563534 0.674184587628866
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.682823877551021 0.699584099999999 0.71479245 0.73689943298969
##       0                 0                 0          0                0
##       1                 1                 1          1                1
##        y_rate_len
## safeh20 0.749179802955665 0.760417500000001 0.768256855670104
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.783935567010309 0.796248691099478 0.799614278350515
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.810093015075376 0.812173664921465 0.812173664921466
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.813280748663102 0.825133882978725 0.826710307692308
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.838011122448979 0.842308615384614 0.843235247524752
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.844908333333333 0.846650412371135 0.848465842105263
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.85035935483871 0.851037202072538 0.85103720207254
##       0                0                 0                0
##       1                1                 1                1
##        y_rate_len
## safeh20 0.853529846938774 0.853529846938775 0.855947336683416
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.862563134328359 0.864637157360406 0.86904857142857
##       0                 0                 0                0
##       1                 1                 2                1
##        y_rate_len
## safeh20 0.869048571428571 0.869048571428572 0.876133206521739
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.880483421052632 0.884567295918365 0.885142063492063
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.890994242424244 0.891798534031413 0.895517055837564 0.89729265
##       0                 0                 0                 0          0
##       1                 1                 1                 1          1
##        y_rate_len
## safeh20 0.901235555555557 0.901801658291458 0.90299578125
##       0                 0                 0             0
##       1                 1                 1             1
##        y_rate_len
## safeh20 0.904701846153847 0.909194836956522 0.910957005076141
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.910957005076143 0.915604744897958 0.91560474489796
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.920300153846155 0.92072172972973 0.925043969072166
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.929836943005181 0.931123469387755 0.933422539682539
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.935898461538461 0.940722680412371 0.941836903553299
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.946642193877551 0.948477741935483 0.94951603174603
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.949516031746031 0.951496769230768 0.952442121212122
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.953604648648651 0.955498429319372 0.95812605 0.960527368421053
##       0                 0                 0          0                 0
##       1                 1                 1          1                 1
##        y_rate_len
## safeh20 0.967095076923076 0.96780409090909 0.971423403141363
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.972080103092784 0.972716802030456 0.97508081339713
##       0                 0                 0                0
##       1                 2                 1                1
##        y_rate_len
## safeh20 0.975936898395722 0.977116787564767 0.977679642857142 0.9822059375
##       0                 0                 0                 0            0
##       1                 1                 1                 2            1
##        y_rate_len
## safeh20 0.982693384615384 0.983166060606059 0.983166060606061
##       0                 0                 0                 0
##       1                 4                 1                 1
##        y_rate_len
## safeh20 0.98734837696335 0.987758814432989 0.98854275 0.992876735751295
##       0                0                 0          0                 0
##       1                1                 1          3                 3
##        y_rate_len
## safeh20 0.993198367346937 0.99319836734694 0.99753693548387
##       0                 0                0                0
##       1                 2                1                1
##        y_rate_len
## safeh20 0.997536935483871 0.998291692307691 1.00327335078534
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 1.0034375257732 1.00390093596059 1.00863668393782 1.00871709183673
##       0               0                0                0                0
##       1               1                1                3                2
##        y_rate_len
## safeh20 1.00879507537688 1.01389 1.01895945 1.01903664974619
##       0                0       0          0                0
##       1                1       3          1                1
##        y_rate_len
## safeh20 1.0191162371134 1.01919832460733 1.02363894230769 1.02407984924623
##       0               0                0                0                0
##       1               2                1                1                2
##        y_rate_len
## safeh20 1.02423581632653 1.02439663212435 1.02902268656716 1.02973203125
##       0                0                0                0             0
##       1                3                1                1             1
##        y_rate_len
## safeh20 1.03479494845361 1.03512329842932 1.03975454081633
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04285828571428 1.04415537313433 1.04461393939394 1.0455740625
##       0                0                0                0            0
##       1                1                1                3            1
##        y_rate_len
## safeh20 1.04713229508197 1.04937615 1.05047365979381 1.05104827225131
##       0                0          0                0                0
##       1                1          3                1                1
##        y_rate_len
## safeh20 1.05527326530612 1.05997590909091 1.06068492307692
##       0                0                0                0
##       1                4                1                3
##        y_rate_len
## safeh20 1.06383532019705 1.06535649746193 1.06869486486486
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.06993417085427 1.07079198979592 1.07353058823529
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.07442074626866 1.07533787878788 1.07628323076923
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.08183108247423 1.08399941489362 1.08631071428571
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 1.08631071428572 1.08743642487046 1.08743642487047
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.08859768421053 1.08955343283582 1.08979620320856
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09069984848485 1.09188153846154 1.09435746031746
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.09565532258065 1.09623639593909 1.09750979381443
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.10050371859296 1.10182943877551 1.10319637305699
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.10335088235294 1.10606181818182 1.10747984615385
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.10878610837438 1.1089421875 1.11020955 1.11167634517766
##       0                0            0          0                0
##       1                1            1          1                1
##        y_rate_len
## safeh20 1.11167634517767 1.11318850515464 1.11427514851485
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.11474816753927 1.11578849246231 1.1173481632653 1.11877517241379
##       0                0                0               0                0
##       1                1                2               1                1
##        y_rate_len
## safeh20 1.11895632124352 1.11981880597015 1.12061526315789
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.12142378787879 1.12307815384615 1.12654444444444
##       0                0                0                0
##       1                1                2                3
##        y_rate_len
## safeh20 1.13067314136126 1.13253670212766 1.1328668877551 1.13471626943005
##       0                0                0               0                0
##       1                1                1               5                2
##        y_rate_len
## safeh20 1.13662405263158 1.13867646153846 1.14062625 1.14255624365482
##       0                0                0          0                0
##       1                1                1          2                1
##        y_rate_len
## safeh20 1.14454592783505 1.14659811518325 1.14808132352941 1.1483856122449
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.14871579787234 1.15047621761658 1.15263284210526 1.1531606043956
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.15427476923077 1.15485866310161 1.1558346 1.15715706521739
##       0                0                0         0                0
##       1                1                1         1                1
##        y_rate_len
## safeh20 1.15790846590909 1.16022463917526 1.16164281407035
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.16390433673469 1.16623616580311 1.16864163157895
##       0                0                0                0
##       1                7                1                3
##        y_rate_len
## safeh20 1.16987307692308 1.1723103125 1.17450623762376 1.17482492063492
##       0                0            0                0                0
##       1                1            2                1                1
##        y_rate_len
## safeh20 1.17590335051546 1.17844806282722 1.17942306122449
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.18034955223881 1.1810739893617 1.18199611398964 1.18287166666667
##       0                0               0                0                0
##       1                1               1                1                3
##        y_rate_len
## safeh20 1.18465042105263 1.18547138461538 1.1862513 1.18815234375
##       0                0                0         0             0
##       1                2                3         1             1
##        y_rate_len
## safeh20 1.18887609137056 1.18956400990099 1.19158206185567
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.19494178571429 1.19775606217617 1.19823363636364
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 1.20065921052632 1.20145965 1.20431604060914 1.20462178217822
##       0                0          0                0                0
##       1                1          2                2                1
##        y_rate_len
## safeh20 1.2070119047619 1.20726077319588 1.21046051020408 1.21061492537313
##       0               0                0                0                0
##       1               1                1                3                2
##        y_rate_len
## safeh20 1.21343218085106 1.21351601036269 1.216668 1.21975598984772
##       0                0                0        0                0
##       1                2                2        6                1
##        y_rate_len
## safeh20 1.21983640625 1.22278190954774 1.22293948453608 1.22597923469388
##       0             0                0                0                0
##       1             1                2                3                6
##        y_rate_len
## safeh20 1.22895757575758 1.23150541463415 1.23519593908629 1.2356784375
##       0                0                0                0            0
##       1                1                1                1            1
##        y_rate_len
## safeh20 1.23618673796791 1.23806668341708 1.23861819587629
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.24149795918367 1.24214795811518 1.24431954545455
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.24503590673575 1.24786461538462 1.25063588832487 1.25152046875
##       0                0                0                0             0
##       1                1                1                2             1
##        y_rate_len
## safeh20 1.25429690721649 1.25529238095238 1.25701668367347
##       0                0                0                0
##       1                3                2                3
##        y_rate_len
## safeh20 1.26196946808511 1.26346292307692 1.26607583756345 1.2673625
##       0                0                0                0         0
##       1                1                1                2         1
##        y_rate_len
## safeh20 1.2699756185567 1.27253540816326 1.27360566502463 1.27399790575916
##       0               0                0                0                0
##       1               1                3                1                3
##        y_rate_len
## safeh20 1.27444273743017 1.27504348484848 1.27553903225807
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.27655580310881 1.27906123076923 1.28392100502512
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.28392100502513 1.28627835820896 1.28747936507937
##       0                0                0                0
##       1                2                3                2
##        y_rate_len
## safeh20 1.28805413265306 1.29189209677419 1.29231575129534 1.29270975
##       0                0                0                0          0
##       1                1                1                1          2
##        y_rate_len
## safeh20 1.29432765957447 1.29465953846154 1.29695573604061
##       0                0                0                0
##       1                1                2                4
##        y_rate_len
## safeh20 1.30124919786096 1.30357285714286 1.3079181 1.31002618811881
##       0                0                0         0                0
##       1                1                6         1                2
##        y_rate_len
## safeh20 1.31025784615385 1.31272073684211 1.31488859375 1.31909158163265
##       0                0                0             0                0
##       1                2                1             2                1
##        y_rate_len
## safeh20 1.31966634920635 1.32177282722513 1.32312645 1.32383564766839
##       0                0                0          0                0
##       1                1                1          1                1
##        y_rate_len
## safeh20 1.32585615384615 1.32783563451777 1.32872952631579 1.330730625
##       0                0                0                0           0
##       1                3                2                2           2
##        y_rate_len
## safeh20 1.33461030612245 1.33575984126984 1.33649136363636 1.3389960326087
##       0                0                0                0               0
##       1                1                2                1               1
##        y_rate_len
## safeh20 1.34145446153846 1.34286494680851 1.35012903061224
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.35012903061225 1.35362277486911 1.3551995049505 1.35705276923077
##       0                0                0               0                0
##       1                2                1               1                1
##        y_rate_len
## safeh20 1.35871553299492 1.36034487437186 1.36074710526316 1.3624146875
##       0                0                0                0            0
##       1                2                1                1            1
##        y_rate_len
## safeh20 1.36404788659794 1.36564775510204 1.3672153030303 1.37111549222798
##       0                0                0               0                0
##       1                1                1               2                1
##        y_rate_len
## safeh20 1.37972659793814 1.38116647959184 1.38257727272727
##       0                0                0                0
##       1                1                5                1
##        y_rate_len
## safeh20 1.38404031746032 1.38531504950495 1.38687544041451
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.38959543147208 1.39540530927835 1.39668520408163
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.40013380952381 1.40384769230769 1.40503538071066
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.40877347368421 1.41108402061856 1.41220392857143 1.41437655
##       0                0                0                0          0
##       1                1                1                3          2
##        y_rate_len
## safeh20 1.41839533678756 1.42247253731343 1.42478226315789
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.42772265306122 1.43415528497409 1.43504430769231
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.43591527918782 1.43676874371859 1.4376052238806 1.44079105263158
##       0                0                0               0                0
##       1                1                2               2                1
##        y_rate_len
## safeh20 1.44244144329897 1.44402515151515 1.45064261538461
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.45135522842639 1.4513552284264 1.45812015463917 1.46624092307692
##       0                0               0                0                0
##       1                1               2                3                1
##        y_rate_len
## safeh20 1.46679517766497 1.46787059701492 1.47427882653061
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.48143512953368 1.48183923076923 1.48223512690355 1.4891509375
##       0                0                0                0            0
##       1                2                2                1            1
##        y_rate_len
## safeh20 1.49719507772021 1.49813597014925 1.50465590425532
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.51287251308901 1.520835 1.52855497461929 1.54331039408867
##       0                0        0                0                0
##       1                1        4                1                1
##        y_rate_len
## safeh20 1.54497523809524 1.56064743455497 1.57542907692308
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.57716222222222 1.59102738461538 1.59249738219895
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.60490125628141 1.61118163366337 1.61126302702703 1.6158871875
##       0                0                0                0            0
##       1                1                1                1            1
##        y_rate_len
## safeh20 1.63903461139896 1.65075557788945 1.65342061538461
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.66050352040816 1.68092289473684 1.74033695876289
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.76096684210526 1.76260876923077 1.82183359375
##       0                0                0             0
##       1                1                1             1
##        y_rate_len
## safeh20 0.432149836065575 0.587595340909089 0.625232166666667
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.648224754098362 0.650624598930481 0.654122580645161
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.657658378378378 0.696695363128491 0.703276300578036
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.705542010309278 0.708570852272726 0.735348791208791
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.752413105263158 0.768773736263735 0.768773736263738
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.768961516853931 0.772487619047619 0.786049550561797
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.788581111111112 0.789190054054054 0.79701513368984
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.800439473684211 0.814436229508195 0.815643351955307
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.82160051724138 0.825133882978722 0.828010166666668
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.83263592178771 0.840240331491713 0.842044237288135
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.844908333333333 0.852336098901098 0.854401685393258
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.854955891891892 0.862077593582887 0.869048571428572
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.880920819672131 0.885142063492063 0.885761043956043
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.885761043956046 0.894608823529412 0.898675227272727
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.902473516483515 0.902473516483517 0.905665786516853
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.909194836956522 0.917329047619048 0.919185989010989
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.91918598901099 0.922208457446809 0.922753820224718
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.925725652173914 0.926485689655172 0.927140053475935
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.927967118644067 0.930784262295081 0.934591340782123
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.935898461538461 0.935898461538462 0.935898461538463
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.942256467391305 0.942739824561403 0.945151694915254
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.946297333333332 0.947405409836066 0.949516031746033
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.952610934065932 0.952610934065935 0.955498429319372
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.955953428571429 0.956929887640448 0.96233627118644 0.9631955
##       0                 0                 0                0         0
##       1                 1                 1                1         1
##        y_rate_len
## safeh20 0.964026557377049 0.964830806451614 0.96780409090909
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.969323406593406 0.969323406593407 0.970046108108109
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.970745744680852 0.971423403141361 0.973334399999999
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.974017921348315 0.974678784530386 0.975936898395722
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.980093666666666 0.981703015873016 0.986035879120878
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.986035879120879 0.98603587912088 0.986487567567568
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.986924840425531 0.989892603550295 0.991105955056179
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.991483591160221 0.991483591160222 0.996991833333332
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 1.00274835164835 1.00292902702703 1.00310393617021
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.00789065088758 1.00819398876405 1.00828839779006
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.00837972826087 1.00846812834225 1.01389 1.01937048648649
##       0                0                0       0                0
##       1                1                1       2                2
##        y_rate_len
## safeh20 1.01946082417582 1.01946082417583 1.02473374331551
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.02998349206349 1.03107457627119 1.03581194594595 1.0361732967033
##       0                0                0                0               0
##       1                1                1                1               4
##        y_rate_len
## safeh20 1.03654675977654 1.04189801104972 1.04237005617978
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04285828571429 1.04388674556213 1.04713229508197
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.05225340540541 1.05288576923077 1.05726497326203
##       0                0                0                0
##       1                3                4                1
##        y_rate_len
## safeh20 1.05797217391304 1.05870281767956 1.06217047619048 1.0645845
##       0                0                0                0         0
##       1                1                3                1         1
##        y_rate_len
## safeh20 1.06869486486486 1.06959824175824 1.07571256097561
##       0                0                0                0
##       1                2                5                1
##        y_rate_len
## safeh20 1.08037459016393 1.08262830508475 1.08513632432432
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.08631071428571 1.08859768421053 1.08979620320856
##       0                0                0                0
##       1                5                1                2
##        y_rate_len
## safeh20 1.09103380434783 1.09231243093923 1.09363415730337
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09435746031746 1.09565532258065 1.09838083333333
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09981288135593 1.10282771929824 1.10302318681319
##       0                0                0                0
##       1                1                1                8
##        y_rate_len
## safeh20 1.10451703910615 1.10756461956522 1.10911723756906
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.11045095238095 1.11072219101124 1.11474816753927
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.11635760638298 1.11801924324324 1.11801924324325
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.11973565934066 1.12061526315789 1.12150960893855
##       0                0                0                0
##       1                5                1                2
##        y_rate_len
## safeh20 1.12232743315508 1.12592204419889 1.1259220441989 1.12654444444444
##       0                0                0               0                0
##       1                1                1               2                1
##        y_rate_len
## safeh20 1.1278102247191 1.1283614516129 1.12976314285714 1.13023803278688
##       0               0               0                0                0
##       1               1               2                1                1
##        y_rate_len
## safeh20 1.13217716666666 1.13217716666667 1.13253670212766 1.1344607027027
##       0                0                0                0               0
##       1                2                1                1               4
##        y_rate_len
## safeh20 1.13644813186813 1.13662405263158 1.13850217877095
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.13859304812834 1.14062625 1.14272685082873 1.14471451612903
##       0                0          0                0                0
##       1                2          1                1                1
##        y_rate_len
## safeh20 1.14685918032787 1.14714411428571 1.15090216216216
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.15136661016949 1.1531606043956 1.15316060439561 1.15549474860335
##       0                0               0                0                0
##       1                1               3                3                1
##        y_rate_len
## safeh20 1.15790846590909 1.16106758064516 1.16198629213483
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.16348032786885 1.16452508571429 1.1659735 1.16734362162162
##       0                0                0         0                0
##       1                1                1         3                2
##        y_rate_len
## safeh20 1.16855118644068 1.16987307692308 1.17248731843575
##       0                0                0                0
##       1                1                5                1
##        y_rate_len
## safeh20 1.17368788043478 1.17482492063492 1.17519068181818 1.1763364640884
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.17798780346821 1.1790743258427 1.18010147540984 1.18287166666667
##       0                0               0                0                0
##       1                1               1                2                1
##        y_rate_len
## safeh20 1.18378508108108 1.18573576271186 1.18573576271187
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.18658554945055 1.18815234375 1.18947988826816 1.19021869565217
##       0                0             0                0                0
##       1                9             1                1                1
##        y_rate_len
## safeh20 1.19314127071823 1.19437303664921 1.19976983333333
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.20065921052631 1.20065921052632 1.20329802197802
##       0                0                0                0
##       1                1                1                7
##        y_rate_len
## safeh20 1.20647245810056 1.20674951086956 1.20726077319588
##       0                0                0                0
##       1                5                1                1
##        y_rate_len
## safeh20 1.20975511363636 1.20994607734807 1.21012677419355
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.21325039325843 1.216668 1.21983640625 1.22001049450549
##       0                0        0             0                0
##       1                4        2             1                8
##        y_rate_len
## safeh20 1.2200104945055 1.22010491525424 1.22328032608696 1.22647983870968
##       0               0                0                0                0
##       1               5                2                1                2
##        y_rate_len
## safeh20 1.2267508839779 1.22703732954545 1.22996491803279 1.23033842696629
##       0               0                0                0                0
##       1               1                1                2                3
##        y_rate_len
## safeh20 1.23267678947368 1.23310945945946 1.23356616666667
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.23404897142857 1.23672296703297 1.23728949152542
##       0                0                0                0
##       1                1                5                1
##        y_rate_len
## safeh20 1.23919888888889 1.24045759776536 1.24355569060774
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.24658606557377 1.24742646067416 1.25046433333333
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.25142994285714 1.25245235294118 1.25343543956044
##       0                0                0                0
##       1                1                3                6
##        y_rate_len
## safeh20 1.25447406779661 1.25745016759776 1.25745016759777
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25918596774194 1.26036049723757 1.26451449438202
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.26599237837838 1.26871796791444 1.27014791208791 1.2716586440678
##       0                0                0                0               0
##       1                2                1               10               1
##        y_rate_len
## safeh20 1.27444273743017 1.27553903225806 1.2771653038674 1.27888397727273
##       0                0                0               0                0
##       1                2                1               3                1
##        y_rate_len
## safeh20 1.27982836065574 1.28243383783784 1.2849835828877 1.28619188571428
##       0                0                0               0                0
##       1                2                1               1                1
##        y_rate_len
## safeh20 1.28686038461538 1.28940358695652 1.29358379310345
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.29432765957447 1.29616619318182 1.29644950819672
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.29869056179775 1.2988752972973 1.30124919786096 1.30357285714286
##       0                0               0                0                0
##       1                2               1                1               11
##        y_rate_len
## safeh20 1.30593440217391 1.30602779661017 1.30842787709497 1.3130706557377
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.31307065573771 1.31344840909091 1.31531675675676
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.31966634920635 1.32028532967033 1.32095382857143 1.3224652173913
##       0                0                0                0               0
##       1                1                6                1               2
##        y_rate_len
## safeh20 1.32246521739131 1.32459822580645 1.32542044692737
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.32969180327869 1.33175821621622 1.33269046391753
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.33286662921348 1.33622497109827 1.3369978021978 1.34438453038674
##       0                0                0               0                0
##       1                2                1               5                2
##        y_rate_len
## safeh20 1.34631295081967 1.34801284090909 1.34995466292135
##       0                0                0                0
##       1                1                3                2
##        y_rate_len
## safeh20 1.35371027472527 1.35371027472528 1.35730435483871
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 1.35758152542373 1.35940558659218 1.36464113513514
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.36704269662921 1.37042274725275 1.37365741935484
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.37476610169492 1.37675589473684 1.37799414364641
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.38098810344828 1.38108259459459 1.38413073033708
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.38564966666667 1.38713521978022 1.38742842105263
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.38858847826087 1.39001048387097 1.3919506779661 1.39339072625698
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.39479895027624 1.39752405405405 1.40121876404494
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.40384769230769 1.40511929347826 1.4063635483871 1.40785868571429
##       0                0                0               0                0
##       1                1                2               1                1
##        y_rate_len
## safeh20 1.41038329608938 1.41160375690608 1.41396551351351 1.4162273015873
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.419446 1.42056016483516 1.42737586592179 1.42840856353591
##       0        0                0                0                0
##       1        1                7                1                3
##        y_rate_len
## safeh20 1.42941868852459 1.43040697297297 1.43232079365079
##       0                0                0                0
##       1                4                2                1
##        y_rate_len
## safeh20 1.43727263736264 1.43818092391304 1.43993952127659
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.44436843575419 1.44521337016575 1.44603983606557
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.44684843243243 1.45324233333333 1.45398510989011
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.45471173913044 1.46201817679558 1.46266098360656
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.47069758241758 1.47177580645161 1.47835357541899
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.47882298342541 1.47928213114754 1.48017096256685
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.48741005494505 1.48741005494506 1.48777336956522
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.49415368421053 1.4953461452514 1.49562779005525 1.50393683333333
##       0                0               0                0                0
##       1                1               1                3                1
##        y_rate_len
## safeh20 1.50412252747253 1.5123387150838 1.51243259668508 1.51261427027027
##       0                0               0                0                0
##       1                8               3                2                1
##        y_rate_len
## safeh20 1.520835 1.52905572972973 1.5293312849162 1.53718806451613
##       0        0                0               0                0
##       1       14                2               1                1
##        y_rate_len
## safeh20 1.53754747252747 1.53773316666667 1.53811721590909
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.54690645714286 1.55425994505494 1.55463133333333
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.56193864864865 1.56284701657459 1.57097241758242
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.57965182320442 1.58098101694915 1.58768489010989
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.58996386363636 1.59403026737968 1.60724607954546
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.61225131147541 1.61866649122807 1.62001989130435
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.62452829545455 1.63782230769231 1.64687104972376
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.65165951612903 1.65453478021978 1.65909272727273
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.66690389830509 1.66801258064516 1.66961233695652
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.67124725274725 1.6729185 1.67535834224599 1.68048066298343
##       0                0         0                0                0
##       1                1         2                1                1
##        y_rate_len
## safeh20 1.69535704918033 1.70071870967742 1.70207440414508
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.70671483333333 1.70880337078652 1.71498414893617
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.72138467032967 1.73324212290503 1.78823456043956
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.80438050847458 1.80548326203209 1.87179692307692
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.87311881355932 1.89452588571429 2.0054967032967 2.03357365714286
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 -0.314655517241379 -0.10252820224719 0.0981183870967744
##       0                  0                 0                  0
##       1                  1                 1                  1
##        y_rate_len
## safeh20 0.10428582857143 0.106104767441859 0.270370666666668
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.347147119565216 0.355750877192982 0.382199371727748
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.398907540983607 0.453729779005525 0.498352711864408
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.531876721311476 0.540741333333334 0.541906724137931
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.55455861878453 0.556191085714286 0.5576395 0.562047717391305
##       0                0                 0         0                 0
##       1                1                 1         1                 1
##        y_rate_len
## safeh20 0.574537666666668 0.576868448275862 0.577747374301674
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.577747374301676 0.594739944134078 0.604973038674035
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.611732513966479 0.611830172413793 0.614637979274612
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.614982459016394 0.618093368983957 0.622159772727274
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.629931656804734 0.630984734042554 0.635073956043956
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.642130333333333 0.643095942857141 0.647163829787233
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.651786428571427 0.659833174603174 0.661232608695653
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.662710223463686 0.662710223463688 0.663917817258883
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.664845901639344 0.668498901098901 0.675926666666666
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.679702793296089 0.681467049180328 0.681753620689655
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.683521348314607 0.685211373626373 0.68682870967742
##       0                 0                 0                0
##       1                 2                 1                1
##        y_rate_len
## safeh20 0.689680988372094 0.69211652694611 0.692824833333332
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.694294239130435 0.695238857142857 0.696695363128491
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.696695363128493 0.706982756756756 0.712619828571428
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.71568705882353 0.716623821989529 0.716715344827585
##       0                0                 0                 0
##       1                1                 1                 1
##        y_rate_len
## safeh20 0.718940181818183 0.722606685082872 0.724207142857143
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.725049244186045 0.725853068181819 0.726621166666669
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.731952673796791 0.735348791208792 0.735887903225806
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.736404315789475 0.742733372093024 0.743135284090909
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.743886684782609 0.747951639344262 0.752061263736264
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.756121355932204 0.756307135135134 0.756307135135135 0.7604175
##       0                 0                 0                 0         0
##       1                 1                 1                 1         3
##        y_rate_len
## safeh20 0.760417500000001 0.768773736263735 0.768773736263736
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.772487619047619 0.773021104972375 0.773021104972376
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.77330593220339 0.77659659574468 0.777315666666666
##       0                0                0                 0
##       1                1                1                 1
##        y_rate_len
## safeh20 0.777315666666668 0.777699715909091 0.78119393442623
##       0                 0                 0                0
##       1                 1                 1                1
##        y_rate_len
## safeh20 0.781658212290503 0.782143714285714 0.786638793103448
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.789825911602208 0.789825911602209 0.790490508474575
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.794213833333334 0.794981931818181 0.798650782122905
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.799524685714285 0.799524685714286 0.799524685714287
##       0                 0                 0                 0
##       1                 2                 1                 2
##        y_rate_len
## safeh20 0.800439473684211 0.801398083832336 0.802198681318681
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.803137584269662 0.804119655172413 0.804119655172414
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.804674603174603 0.80514794117647 0.805631513513514
##       0                 0                0                 0
##       1                 1                1                 1
##        y_rate_len
## safeh20 0.806630718232044 0.806630718232045 0.807675084745763
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.808767745664739 0.810009945652175 0.811112 0.812264147727273
##       0                 0                 0        0                 0
##       1                 1                 2        3                 1
##        y_rate_len
## safeh20 0.813469883720929 0.815643351955307 0.817653225806452
##       0                 0                 0                 0
##       1                 1                 5                 1
##        y_rate_len
## safeh20 0.818911153846152 0.818911153846154 0.818911153846155
##       0                 0                 0                 0
##       1                 2                 1                 3
##        y_rate_len
## safeh20 0.820768095238094 0.820768095238097 0.826540760869565
##       0                 0                 0                 0
##       1                 3                 1                 1
##        y_rate_len
## safeh20 0.827910177514792 0.828010166666668 0.829546363636363
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.829546363636364 0.83105737704918 0.832635921787708
##       0                 0                0                 0
##       1                 1                2                 1
##        y_rate_len
## safeh20 0.832635921787709 0.83263592178771 0.834286628571428
##       0                 0                0                 0
##       1                 1                2                 3
##        y_rate_len
## safeh20 0.835623626373626 0.836861587301588 0.838514432432433
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.839081379310344 0.840240331491713 0.841312978723405
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.842044237288134 0.843071576086956 0.843071576086958
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.843931560693644 0.844908333333333 0.845811978609626
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.847678524590163 0.849628491620112 0.85035935483871
##       0                 0                 0                0
##       1                 1                 3                1
##        y_rate_len
## safeh20 0.852336098901098 0.852336098901099 0.852955079365079
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.854401685393258 0.856562241379311 0.857045138121546
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.857045138121548 0.857906923076924 0.859602391304347
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.859948586387435 0.861513468208091 0.861806499999999
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.861806500000001 0.864110795454545 0.864299672131147
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.864299672131148 0.866522267441861 0.866621061452513
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.866621061452515 0.86904857142857 0.869048571428571
##       0                 0                0                 0
##       1                 1                1                 2
##        y_rate_len
## safeh20 0.869048571428572 0.87131171875 0.871397351351351
##       0                 0             0                 0
##       1                 2             1                 1
##        y_rate_len
## safeh20 0.871489719101122 0.873671170212767 0.873849944751382
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.876133206521739 0.876413389830507 0.876413389830509
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.876716647058822 0.878704666666666 0.878704666666667
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.879095375722543 0.880920819672131 0.880920819672133
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.881393011363635 0.883613631284917 0.885142063492063
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.885761043956043 0.885761043956045 0.886429542857142
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.886429542857143 0.887838810810812 0.888577752808987
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.889377192982456 0.889850265957447 0.890654751381215
##       0                 0                 0                 0
##       1                 2                 3                 2
##        y_rate_len
## safeh20 0.890654751381216 0.89152396551724 0.891523965517242
##       0                 0                0                 0
##       1                 1                2                 1
##        y_rate_len
## safeh20 0.891798534031413 0.894608823529412 0.895602833333333
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.895602833333334 0.896677283236993 0.897541967213116
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.898675227272728 0.900606201117318 0.900606201117319
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.901890523255814 0.902473516483515 0.902473516483516
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.902473516483517 0.903810514285714 0.903810514285715
##       0                 0                 0                 0
##       1                 1                 1                 3
##        y_rate_len
## safeh20 0.907164736842107 0.907459558011048 0.907459558011051
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.909004827586207 0.909194836956522 0.910782542372881
##       0                 0                 0                 0
##       1                 1                 3                 4
##        y_rate_len
## safeh20 0.912500999999999 0.912501 0.912501000000001 0.914076994818652
##       0                 0        0                 0                 0
##       1                 3        1                 4                 1
##        y_rate_len
## safeh20 0.915771612903225 0.915771612903226 0.91595744318182
##       0                 0                 0                0
##       1                 1                 3                1
##        y_rate_len
## safeh20 0.917329047619048 0.917598770949719 0.91759877094972
##       0                 0                 0                0
##       1                 1                 2                1
##        y_rate_len
## safeh20 0.919185989010989 0.919574651162791 0.920300153846155
##       0                 0                 0                 0
##       1                 4                 1                 1
##        y_rate_len
## safeh20 0.920721729729729 0.921191485714285 0.922208457446809
##       0                 0                 0                 0
##       1                 3                 4                 1
##        y_rate_len
## safeh20 0.92275382022472 0.923364107142856 0.924264364640884
##       0                0                 0                 0
##       1                1                 1                 6
##        y_rate_len
## safeh20 0.924264364640885 0.925043969072164 0.925725652173913
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.925725652173914 0.927140053475936 0.92770935 0.927967118644066
##       0                 0                 0          0                 0
##       1                 1                 2          1                 1
##        y_rate_len
## safeh20 0.928509789473684 0.929399166666667 0.930784262295081
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.930784262295082 0.930784262295083 0.931841098265895
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.931841098265897 0.931841098265898 0.932124677419354
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.932124677419355 0.93323965909091 0.933422539682539
##       0                 0                0                 0
##       1                 1                3                 2
##        y_rate_len
## safeh20 0.93342253968254 0.934591340782122 0.934591340782123
##       0                0                 0                 0
##       1                1                 1                 5
##        y_rate_len
## safeh20 0.935898461538461 0.935898461538463 0.937163189189189
##       0                 0                 0                 0
##       1                 3                 3                 1
##        y_rate_len
## safeh20 0.938387553191489 0.938572457142856 0.941069171270717
##       0                 0                 0                 0
##       1                 3                 1                 2
##        y_rate_len
## safeh20 0.94106917127072 0.941469285714286 0.942256467391304
##       0                0                 0                 0
##       1                3                 1                 1
##        y_rate_len
## safeh20 0.942256467391305 0.943405668449197 0.943405668449198
##       0                 0                 0                 0
##       1                 6                 2                 1
##        y_rate_len
## safeh20 0.943966551724138 0.945151694915254 0.94559689119171
##       0                 0                 0                0
##       1                 1                 2                1
##        y_rate_len
## safeh20 0.946297333333332 0.946297333333334 0.946297333333335
##       0                 0                 0                 0
##       1                 2                 2                 1
##        y_rate_len
## safeh20 0.947405409836064 0.947405409836065 0.947405409836066
##       0                 0                 0                 0
##       1                 2                 1                 5
##        y_rate_len
## safeh20 0.948477741935483 0.948477741935486 0.949423005780347
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.949423005780348 0.950521875 0.951583910614524 0.951583910614527
##       0                 0           0                 0                 0
##       1                 1           3                 2                 1
##        y_rate_len
## safeh20 0.952610934065932 0.952610934065935 0.952812289156626
##       0                 0                 0                 0
##       1                 1                 2                 1
##        y_rate_len
## safeh20 0.953896508875739 0.954566648936169 0.955498429319372
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.955953428571429 0.957873977900552 0.957873977900553
##       0                 0                 0                 0
##       1                 2                 2                 8
##        y_rate_len
## safeh20 0.958787282608695 0.958787282608696 0.959671283422461
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.960527368421053 0.961356839378239 0.961447413793102
##       0                 0                 0                 0
##       1                 1                 1                 2
##        y_rate_len
## safeh20 0.962336271186441 0.962336271186442 0.9631955 0.964026557377049
##       0                 0                 0         0                 0
##       1                 1                 1         2                 1
##        y_rate_len
## safeh20 0.96402655737705 0.964830806451611 0.964830806451613
##       0                0                 0                 0
##       1                2                 1                 1
##        y_rate_len
## safeh20 0.965320419161676 0.967004913294798 0.96780409090909
##       0                 0                 0                0
##       1                 1                 2                1
##        y_rate_len
## safeh20 0.967804090909091 0.968576480446925 0.968576480446927
##       0                 0                 0                 0
##       1                 2                 1                 1
##        y_rate_len
## safeh20 0.968576480446928 0.969323406593406 0.969323406593407
##       0                 0                 0                 0
##       1                 4                 6                 2
##        y_rate_len
## safeh20 0.970046108108108 0.970046108108109 0.970745744680851
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.97262703488372 0.972627034883721 0.973334399999999 0.9733344
##       0                0                 0                 0         0
##       1                1                 3                 1         1
##        y_rate_len
## safeh20 0.973334400000001 0.974017921348313 0.974017921348315
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.974678784530386 0.974678784530389 0.975318097826088
##       0                 0                 0                 0
##       1                 5                 4                 1
##        y_rate_len
## safeh20 0.975936898395722 0.9783149122807 0.978928275862068
##       0                 0               0                 0
##       1                 1               1                 3
##        y_rate_len
## safeh20 0.97892827586207 0.979520847457627 0.980093666666666
##       0                0                 0                 0
##       1                1                 3                 3
##        y_rate_len
## safeh20 0.980093666666667 0.980647704918031 0.980647704918034
##       0                 0                 0                 0
##       1                 1                 1                 4
##        y_rate_len
## safeh20 0.981183870967742 0.981703015873015 0.981703015873017
##       0                 0                 0                 0
##       1                 1                 2                 2
##        y_rate_len
## safeh20 0.982693384615385 0.984586820809248 0.98458682080925
##       0                 0                 0                0
##       1                 1                 1                2
##        y_rate_len
## safeh20 0.98508630681818 0.985086306818181 0.985086306818182
##       0                0                 0                 0
##       1                1                 1                 2
##        y_rate_len
## safeh20 0.985569050279329 0.986035879120878 0.986035879120879
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.98603587912088 0.986487567567568 0.986924840425532
##       0                0                 0                 0
##       1                2                 4                 2
##        y_rate_len
## safeh20 0.986924840425533 0.989892603550296 0.990311162790697
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.990311162790698 0.991105955056179 0.991105955056182
##       0                 0                 0                 0
##       1                 1                 3                 1
##        y_rate_len
## safeh20 0.99148359116022 0.991483591160222 0.991848913043478
##       0                0                 0                 0
##       1                1                 5                 5
##        y_rate_len
## safeh20 0.991848913043479 0.992202513368984 0.992544947368421
##       0                 0                 0                 0
##       1                 1                 1                 1
##        y_rate_len
## safeh20 0.99319836734694 0.995784821428571 0.99610245614035
##       0                0                 0                0
##       1                1                 1                1
##        y_rate_len
## safeh20 0.996102456140351 0.996409137931035 0.996705423728813
##       0                 0                 0                 0
##       1                 1                 2                 3
##        y_rate_len
## safeh20 0.996991833333332 0.996991833333333 0.996991833333334
##       0                 0                 0                 0
##       1                 3                 2                 2
##        y_rate_len
## safeh20 0.997268852459016 0.997268852459018 0.997536935483871
##       0                 0                 0                 0
##       1                 7                 1                 1
##        y_rate_len
## safeh20 0.997796507936507 1.00174760479042 1.0021687283237
##       0                 0                0               0
##       1                 1                1               3
##        y_rate_len
## safeh20 1.00236852272727 1.00256162011173 1.00274835164835
##       0                0                0                0
##       1                4                8                9
##        y_rate_len
## safeh20 1.00292902702703 1.00310393617021 1.00778222891566
##       0                0                0                0
##       1                3                3                1
##        y_rate_len
## safeh20 1.00799529069767 1.00809634285714 1.00819398876404
##       0                0                0                0
##       1                3                5                3
##        y_rate_len
## safeh20 1.00828839779005 1.00828839779006 1.00837972826087 1.0085537368421
##       0                0                0                0               0
##       1                2                3                1               2
##        y_rate_len
## safeh20 1.01389 1.01946082417582 1.01946082417583 1.01955418994413
##       0       0                0                0                0
##       1      17                5                5                7
##        y_rate_len
## safeh20 1.01955418994414 1.01965073863636 1.01975063583815
##       0                0                0                0
##       1                2                5                4
##        y_rate_len
## safeh20 1.02423581632653 1.02456252631579 1.02473374331551
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.02491054347826 1.02509320441989 1.02528202247191
##       0                0                0                0
##       1                1                4                2
##        y_rate_len
## safeh20 1.02547731428571 1.02567941860465 1.02880014705882 1.02973203125
##       0                0                0                0             0
##       1                2                3                1             2
##        y_rate_len
## safeh20 1.02998349206349 1.03024306451613 1.03051114754098
##       0                0                0                0
##       1                1                2                7
##        y_rate_len
## safeh20 1.03078816666667 1.03107457627119 1.03137086206896
##       0                0                0                0
##       1                9                4                2
##        y_rate_len
## safeh20 1.03137086206897 1.03447659898477 1.03479494845361
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.03512329842932 1.03546212765957 1.03581194594595 1.0361732967033
##       0                0                0                0               0
##       1                1                1                6               6
##        y_rate_len
## safeh20 1.03654675977654 1.03693295454545 1.0373325433526 1.04015658031088
##       0                0                0               0                0
##       1                5                7               2                1
##        y_rate_len
## safeh20 1.04057131578947 1.04144135869565 1.04189801104972
##       0                0                0                0
##       1                1                3               14
##        y_rate_len
## safeh20 1.04237005617977 1.04285828571429 1.04336354651163
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.04442885542169 1.04607698412698 1.04659612903226
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.04713229508197 1.04768633333333 1.04825915254237
##       0                0                0                0
##       1                7                6                3
##        y_rate_len
## safeh20 1.04885172413793 1.05010035714286 1.05104827225131
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.05164122340426 1.05225340540541 1.05288576923077
##       0                0                0                0
##       1                3                1               12
##        y_rate_len
## safeh20 1.05353932960894 1.05421517045454 1.05591652849741
##       0                0                0                0
##       1                5                1                2
##        y_rate_len
## safeh20 1.05658010526316 1.05726497326203 1.05797217391304
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 1.05870281767956 1.05945808988764 1.06023925714286 1.0610476744186
##       0                0                0                0               0
##       1                9                1                6               1
##        y_rate_len
## safeh20 1.06141609375 1.06217047619048 1.06294919354839 1.06375344262295
##       0             0                0                0                0
##       1             1                2                2                6
##        y_rate_len
## safeh20 1.0645845 1.06544372881356 1.06615237113402 1.0663325862069
##       0         0                0                0               0
##       1         6                3                1               1
##        y_rate_len
## safeh20 1.0669732460733 1.06725263157895 1.06782031914894 1.06869486486486
##       0               0                0                0                0
##       1               2                2                1                3
##        y_rate_len
## safeh20 1.06959824175824 1.07053189944134 1.07149738636363
##       0                0                0                0
##       1                6                7                1
##        y_rate_len
## safeh20 1.07149738636364 1.0724963583815 1.07353058823529 1.07450298913043
##       0                0               0                0                0
##       1                3               3                2                2
##        y_rate_len
## safeh20 1.07460197604791 1.07550762430939 1.0765461235955 1.07654612359551
##       0                0                0               0                0
##       1                1                8               2                2
##        y_rate_len
## safeh20 1.07762022857143 1.07826396825397 1.07873180232558
##       0                0                0                0
##       1                5                3                2
##        y_rate_len
## safeh20 1.07930225806452 1.08037459016393 1.08148266666667
##       0                0                0                0
##       1                1                7                5
##        y_rate_len
## safeh20 1.08262830508475 1.08289821989529 1.08381344827586
##       0                0                0                0
##       1                2                2                3
##        y_rate_len
## safeh20 1.08399941489362 1.0850401754386 1.08513632432432 1.08631071428571
##       0                0               0                0                0
##       1                1               1                1                9
##        y_rate_len
## safeh20 1.08743642487046 1.08752446927374 1.08859768421053
##       0                0                0                0
##       1                1               10                1
##        y_rate_len
## safeh20 1.08877960227273 1.08979620320856 1.09007826589595
##       0                0                0                0
##       1                5                1                3
##        y_rate_len
## safeh20 1.09103380434783 1.09142276470588 1.09188153846154
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.09231243093923 1.09363415730337 1.09435746031746 1.0950012
##       0                0                0                0         0
##       1               10                7                3         4
##        y_rate_len
## safeh20 1.09565532258064 1.09565532258065 1.09623639593909
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.09699573770492 1.09788088757397 1.09838083333333
##       0                0                0                0
##       1                4                1                9
##        y_rate_len
## safeh20 1.09981288135593 1.1001785106383 1.10050371859297 1.10129431034483
##       0                0               0                0                0
##       1                2               5                1                8
##        y_rate_len
## safeh20 1.10157778378378 1.10282771929825 1.10302318681319
##       0                0                0                0
##       1                1                1               10
##        y_rate_len
## safeh20 1.10319637305699 1.10335088235294 1.10451703910615
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.10460647368421 1.10468611940299 1.10606181818182
##       0                0                0                0
##       1                2                1                3
##        y_rate_len
## safeh20 1.10756461956522 1.1076601734104 1.10911723756906 1.11045095238095
##       0                0               0                0                0
##       1                2               1                4                2
##        y_rate_len
## safeh20 1.11072219101124 1.11238217142857 1.1136168852459 1.11410005813953
##       0                0                0               0                0
##       1                2               13               5                1
##        y_rate_len
## safeh20 1.11474816753927 1.115279 1.11587893491124 1.11635760638298
##       0                0        0                0                0
##       1                3        4                2                3
##        y_rate_len
## safeh20 1.11699745762712 1.11772210843374 1.11801924324324
##       0                0                0                0
##       1                5                1                3
##        y_rate_len
## safeh20 1.11877517241379 1.11895632124352 1.11973565934066
##       0                0                0                0
##       1                3                1               12
##        y_rate_len
## safeh20 1.12150960893855 1.12232743315508 1.12252107142857
##       0                0                0                0
##       1                7                1                1
##        y_rate_len
## safeh20 1.12334403409091 1.12409543478261 1.12524208092485
##       0                0                0                0
##       1                4                2                1
##        y_rate_len
## safeh20 1.12592204419889 1.1259220441989 1.12654444444444 1.12720711764706
##       0                0               0                0                0
##       1                2              11                2                2
##        y_rate_len
## safeh20 1.1278102247191 1.1283614516129 1.12924275449102 1.12976314285714
##       0               0               0                0                0
##       1               2               1                1                8
##        y_rate_len
## safeh20 1.13023803278688 1.13023803278689 1.13067314136126
##       0                0                0                0
##       1                5                5                4
##        y_rate_len
## safeh20 1.13178418604651 1.13217716666667 1.13253670212766
##       0                0                0                0
##       1                1                7                2
##        y_rate_len
## safeh20 1.13418203389831 1.1344607027027 1.13625603448276 1.13644813186813
##       0                0               0                0                0
##       1                3               2                2               13
##        y_rate_len
## safeh20 1.13662405263158 1.13840280701754 1.13850217877095
##       0                0                0                0
##       1                2                1                6
##        y_rate_len
## safeh20 1.13859304812834 1.14062625 1.14263793650794 1.14272685082873
##       0                0          0                0                0
##       1                3          7                2                9
##        y_rate_len
## safeh20 1.14282398843931 1.14471451612903 1.14489825842697
##       0                0                0                0
##       1                2                3                3
##        y_rate_len
## safeh20 1.14509929411765 1.14685918032787 1.14714411428571 1.1483856122449
##       0                0                0                0               0
##       1                1                6                3               1
##        y_rate_len
## safeh20 1.14871579787234 1.14907533333333 1.14946831395349
##       0                0                0                0
##       1                3                8                5
##        y_rate_len
## safeh20 1.15090216216216 1.15136661016949 1.15214772727273
##       0                0                0                0
##       1                5                5                1
##        y_rate_len
## safeh20 1.15263284210526 1.1531606043956 1.15316060439561 1.15373689655172
##       0                0               0                0                0
##       1                2               3                7                4
##        y_rate_len
## safeh20 1.15373689655173 1.15436873493976 1.1548586631016 1.15485866310161
##       0                0                0               0                0
##       1                2                1               3                3
##        y_rate_len
## safeh20 1.15549474860335 1.15619035087719 1.15715706521739
##       0                0                0                0
##       1                2                1                6
##        y_rate_len
## safeh20 1.15790846590909 1.15873142857143 1.15953165745856
##       0                0                0                0
##       1                4                1               15
##        y_rate_len
## safeh20 1.16040589595376 1.16106758064516 1.16198629213483
##       0                0                0                0
##       1                3                1                3
##        y_rate_len
## safeh20 1.16348032786885 1.16452508571428 1.16452508571429
##       0                0                0                0
##       1                6                1                5
##        y_rate_len
## safeh20 1.16489489361702 1.16566994011976 1.1659735 1.16623616580311
##       0                0                0         0                0
##       1                2                2        10                1
##        y_rate_len
## safeh20 1.16715244186046 1.16855118644068 1.16864163157895
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.16987307692308 1.17112427807487 1.17121775862069 1.1723103125
##       0                0                0                0            0
##       1               13                3                5            2
##        y_rate_len
## safeh20 1.17248731843575 1.17248731843576 1.17368788043478
##       0                0                0                0
##       1                4                3                5
##        y_rate_len
## safeh20 1.17397789473684 1.17482492063492 1.17519068181818 1.1763364640884
##       0                0                0                0               0
##       1                2                5                4               8
##        y_rate_len
## safeh20 1.17683660714286 1.17798780346821 1.17844806282723 1.1790743258427
##       0                0                0                0               0
##       1                1                3                1               3
##        y_rate_len
## safeh20 1.18010147540984 1.1810739893617 1.18190605714286 1.18287166666667
##       0                0               0                0                0
##       1                8               4                5                9
##        y_rate_len
## safeh20 1.18378508108108 1.18465042105263 1.18483656976744
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.18547138461538 1.18573576271186 1.18658554945055
##       0                0                0                0
##       1                1                2               10
##        y_rate_len
## safeh20 1.18738989304813 1.18787112426035 1.18869862068965
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.18869862068966 1.18947988826816 1.19021869565217
##       0                0                0                0
##       1                3                5                4
##        y_rate_len
## safeh20 1.19091841269841 1.19247289772727 1.19314127071823
##       0                0                0                0
##       1                4                6                9
##        y_rate_len
## safeh20 1.19377370967742 1.19494178571428 1.19494178571429
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.19556971098266 1.19616235955056 1.19672262295082
##       0                0                0                0
##       1                3                3                9
##        y_rate_len
## safeh20 1.19725308510638 1.19823363636364 1.19877582352941
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.19928702857143 1.19976983333333 1.20022654054054
##       0                0                0                0
##       1                3                6                6
##        y_rate_len
## safeh20 1.20065921052632 1.20252069767442 1.20292033898305
##       0                0                0                0
##       1                1                3                7
##        y_rate_len
## safeh20 1.20329802197802 1.20365550802139 1.203994375 1.20617948275862
##       0                0                0           0                0
##       1               11                3           2                4
##        y_rate_len
## safeh20 1.20647245810056 1.20674951086956 1.20674951086957 1.2070119047619
##       0                0                0                0               0
##       1                4                4                1               2
##        y_rate_len
## safeh20 1.20701190476191 1.20749713567839 1.20975511363636
##       0                0                0                0
##       1                1                1                8
##        y_rate_len
## safeh20 1.20994607734807 1.21012677419355 1.2102980104712 1.21046051020408
##       0                0                0               0                0
##       1                4                1               1                1
##        y_rate_len
## safeh20 1.21304696428571 1.21315161849711 1.21325039325843 1.2133437704918
##       0                0                0                0               0
##       1                1                4                3               3
##        y_rate_len
## safeh20 1.21343218085106 1.216668 1.21967955445545 1.21975598984772
##       0                0        0                0                0
##       1                1       21                1                1
##        y_rate_len
## safeh20 1.21983640625 1.21992112299465 1.22001049450549 1.2200104945055
##       0             0                0                0               0
##       1             1                4                9               3
##        y_rate_len
## safeh20 1.22010491525424 1.22020482558139 1.22031071856287
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.22293948453608 1.2231053968254 1.22328032608696 1.22346502793296
##       0                0               0                0                0
##       1                1               5                1                5
##        y_rate_len
## safeh20 1.22366034482758 1.22366034482759 1.22386721893491
##       0                0                0                0
##       1                1                4                1
##        y_rate_len
## safeh20 1.22647983870968 1.2267508839779 1.22703732954545 1.22703732954546
##       0                0               0                0                0
##       1                3              14                6                1
##        y_rate_len
## safeh20 1.22766198795181 1.22895757575758 1.22927595854922
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.22961127659574 1.22996491803279 1.23033842696629
##       0                0                0                0
##       1                1                3                3
##        y_rate_len
## safeh20 1.23073352601156 1.23267678947368 1.23310945945946
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.23356616666667 1.23404897142857 1.23456017647059 1.2356784375
##       0                0                0                0            0
##       1                5                8                2            1
##        y_rate_len
## safeh20 1.23618673796791 1.23672296703297 1.23728949152542
##       0                0                0                0
##       1                2                8                2
##        y_rate_len
## safeh20 1.23788895348837 1.23852431137725 1.23861819587629
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.23919888888889 1.23981114130435 1.24045759776536
##       0                0                0                0
##       1                4                7                8
##        y_rate_len
## safeh20 1.24114120689655 1.24186526627219 1.24214795811518
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 1.24283290322581 1.24355569060773 1.24355569060774
##       0                0                0                0
##       1                5                4                7
##        y_rate_len
## safeh20 1.24431954545455 1.24503590673575 1.24512807017544
##       0                0                0                0
##       1                3                1                1
##        y_rate_len
## safeh20 1.24579037234043 1.24658606557377 1.24742646067416
##       0                0                0                0
##       1                1                6                3
##        y_rate_len
## safeh20 1.24831543352601 1.24868557894737 1.24955091891892
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.25046433333333 1.25142994285714 1.25152046875 1.25245235294117
##       0                0                0             0                0
##       1                3                6             1                1
##        y_rate_len
## safeh20 1.25245235294118 1.25343543956044 1.25447406779661
##       0                0                0                0
##       1                2               11                1
##        y_rate_len
## safeh20 1.25529238095238 1.25557308139535 1.25634195652174
##       0                0                0                0
##       1                2                3                2
##        y_rate_len
## safeh20 1.25745016759776 1.25745016759777 1.25807293193717
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.25862206896552 1.25918596774193 1.25918596774194
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 1.26036049723757 1.26160176136364 1.26196946808511
##       0                0                0                0
##       1               11                5                5
##        y_rate_len
## safeh20 1.26320721311475 1.26346292307692 1.26430861445783
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.26451449438202 1.26469436842105 1.26589734104046
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.26599237837838 1.2673625 1.26871796791444 1.26881091428571
##       0                0         0                0                0
##       1                3         8                2                6
##        y_rate_len
## safeh20 1.26881091428572 1.2699756185567 1.27014791208791 1.27034452941176
##       0                0               0                0                0
##       1                2               3                8                1
##        y_rate_len
## safeh20 1.27138587301587 1.2716586440678 1.27287277173913 1.27325720930233
##       0                0               0                0                0
##       1                4               2                5                3
##        y_rate_len
## safeh20 1.27399790575916 1.27444273743017 1.27553903225806
##       0                0                0                0
##       1                2                6                1
##        y_rate_len
## safeh20 1.27553903225807 1.27610293103448 1.27655580310881 1.2771653038674
##       0                0                0                0               0
##       1                1                2                2              21
##        y_rate_len
## safeh20 1.27814856382979 1.27888397727273 1.27982836065574
##       0                0                0                0
##       1                3                3                6
##        y_rate_len
## safeh20 1.28070315789474 1.28151578680203 1.28160252808989
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 1.28243383783784 1.28347924855491 1.28347924855492
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.28426066666667 1.2849835828877 1.28546767857143 1.28619188571428
##       0                0               0                0                0
##       1               12               3                2                2
##        y_rate_len
## safeh20 1.28619188571429 1.28686038461538 1.28747936507937
##       0                0                0                0
##       1                6               13                5
##        y_rate_len
## safeh20 1.28823670588235 1.28884322033898 1.28940358695652
##       0                0                0                0
##       1                1                3                5
##        y_rate_len
## safeh20 1.28992287958115 1.29040545454545 1.2909413372093 1.29143530726257
##       0                0                0               0                0
##       1                1                1               1                7
##        y_rate_len
## safeh20 1.29189209677419 1.29358379310345 1.29397011049724
##       0                0                0                0
##       1                1                1                7
##        y_rate_len
## safeh20 1.29432765957447 1.29616619318182 1.29644950819672
##       0                0                0                0
##       1                3                4                9
##        y_rate_len
## safeh20 1.29671194736842 1.29869056179775 1.2988752972973 1.2990465625
##       0                0                0               0            0
##       1                1                2               2            1
##        y_rate_len
## safeh20 1.30106115606937 1.30115883333333 1.30124919786096
##       0                0                0                0
##       1                4                8                2
##        y_rate_len
## safeh20 1.30357285714286 1.30593440217391 1.30612888235294
##       0                0                0                0
##       1               13                3                3
##        y_rate_len
## safeh20 1.30807569948186 1.30807569948187 1.30824516129032
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.30842787709497 1.30862546511628 1.31002618811881
##       0                0                0                0
##       1                7                1                1
##        y_rate_len
## safeh20 1.31050675531915 1.31077491712707 1.31106465517241
##       0                0                0                0
##       1                3               11                3
##        y_rate_len
## safeh20 1.31137868263473 1.31272073684211 1.3130706557377 1.31307065573771
##       0                0                0               0                0
##       1                1                1               2                5
##        y_rate_len
## safeh20 1.31344840909091 1.3138574556213 1.31531675675676 1.31577859550562
##       0                0               0                0                0
##       1                6               1                4                2
##        y_rate_len
## safeh20 1.31627824561404 1.31751481283422 1.318057 1.31864306358382
##       0                0                0        0                0
##       1                1                2        5                2
##        y_rate_len
## safeh20 1.31966634920635 1.32028532967033 1.32095382857143 1.3224652173913
##       0                0                0                0               0
##       1                3                9                5               3
##        y_rate_len
## safeh20 1.32321237288135 1.32321237288136 1.32383564766839
##       0                0                0                0
##       1                5                2                1
##        y_rate_len
## safeh20 1.32402105882353 1.32459822580645 1.32542044692737
##       0                0                0                0
##       1                1                1                8
##        y_rate_len
## safeh20 1.32585615384615 1.32668585106383 1.3275797237569 1.32757972375691
##       0                0                0               0                0
##       1                1                2               1                5
##        y_rate_len
## safeh20 1.32854551724138 1.32872952631579 1.3295922754491 1.32969180327869
##       0                0                0               0                0
##       1                1                1               1                6
##        y_rate_len
## safeh20 1.330730625 1.33175821621622 1.33185550295858 1.33269046391753
##       0           0                0                0                0
##       1          10                3                2                1
##        y_rate_len
## safeh20 1.33286662921348 1.33378042780749 1.33495516666667
##       0                0                0                0
##       1                1                3                6
##        y_rate_len
## safeh20 1.33575984126984 1.33622497109826 1.33622497109827 1.3369978021978
##       0                0                0                0               0
##       1                1                1                1              10
##        y_rate_len
## safeh20 1.33760186746988 1.33769780104712 1.3383348 1.33899603260869
##       0                0                0         0                0
##       1                1                2         4                3
##        y_rate_len
## safeh20 1.3389960326087 1.33978321428571 1.34039694915254 1.34095129032258
##       0               0                0                0                0
##       1               1                1                3                1
##        y_rate_len
## safeh20 1.34241301675978 1.34286494680851 1.34399372093023
##       0                0                0                0
##       1                5                4                3
##        y_rate_len
## safeh20 1.34438453038674 1.34473831578947 1.34602637931034
##       0                0                0                0
##       1               11                1                1
##        y_rate_len
## safeh20 1.34602637931035 1.34631295081967 1.34801284090909
##       0                0                0                0
##       1                2                4                4
##        y_rate_len
## safeh20 1.34819967567568 1.34995466292135 1.35004604278075
##       0                0                0                0
##       1                4                1                3
##        y_rate_len
## safeh20 1.35185333333333 1.35371027472527 1.35380687861272
##       0                0                0                0
##       1                6               10                1
##        y_rate_len
## safeh20 1.35552684782609 1.35571577142857 1.35730435483871
##       0                0                0                0
##       1                4                5                1
##        y_rate_len
## safeh20 1.35758152542373 1.35788839285714 1.35904404255319
##       0                0                0                0
##       1                3                1                4
##        y_rate_len
## safeh20 1.35940558659218 1.36074710526316 1.36118933701657
##       0                0                0                0
##       1                8                1                2
##        y_rate_len
## safeh20 1.36118933701658 1.36167784883721 1.36293409836066
##       0                0                0                0
##       1                2                3                1
##        y_rate_len
## safeh20 1.36350724137931 1.36414290909091 1.36464113513513
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.36464113513514 1.36529505681818 1.36631165775401
##       0                0                0                0
##       1                1                6                2
##        y_rate_len
## safeh20 1.36704269662921 1.3672153030303 1.36785159763313 1.36794682539682
##       0                0               0                0                0
##       1                3               1                1                1
##        y_rate_len
## safeh20 1.36794682539683 1.3687515 1.37042274725275 1.37138878612717
##       0                0         0                0                0
##       1                4         5                7                3
##        y_rate_len
## safeh20 1.37205766304348 1.37309674285714 1.37365741935484
##       0                0                0                0
##       1                4                7                3
##        y_rate_len
## safeh20 1.37476610169492 1.37522313829787 1.37639815642458
##       0                0                0                0
##       1                3                3                2
##        y_rate_len
## safeh20 1.37799414364641 1.37825671875 1.37936197674419 1.37955524590164
##       0                0             0                0                0
##       1                6             1                1                2
##        y_rate_len
## safeh20 1.38098810344828 1.3810825945946 1.38257727272727 1.38413073033708
##       0                0               0                0                0
##       1                2               2                9                4
##        y_rate_len
## safeh20 1.38547272251309 1.38564966666666 1.38564966666667
##       0                0                0                0
##       1                1                1                6
##        y_rate_len
## safeh20 1.38713521978022 1.38824938461539 1.38897069364162
##       0                0                0                0
##       1                6                1                2
##        y_rate_len
## safeh20 1.39001048387097 1.39047771428571 1.39140223404255 1.3919506779661
##       0                0                0                0               0
##       1                3                2                2               4
##        y_rate_len
## safeh20 1.39276468421053 1.39339072625698 1.39479895027624
##       0                0                0                0
##       1                1                5                3
##        y_rate_len
## safeh20 1.39479895027625 1.39558976470588 1.39617639344262
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.39704610465116 1.39752405405405 1.39846896551724
##       0                0                0                0
##       1                2                4                4
##        y_rate_len
## safeh20 1.39884288770053 1.39985948863637 1.40013380952381
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.40121876404494 1.40244664670659 1.40254783333333
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.40254783333334 1.40384769230769 1.40521596491228 1.4063635483871
##       0                0                0                0               0
##       1                2                8                1               2
##        y_rate_len
## safeh20 1.40655260115607 1.40785868571428 1.40785868571429
##       0                0                0                0
##       1                4                1                1
##        y_rate_len
## safeh20 1.40877347368421 1.40913525423729 1.41038329608938
##       0                0                0                0
##       1                1                3                2
##        y_rate_len
## safeh20 1.41038329608939 1.41160375690608 1.41279754098361
##       0                0                0                0
##       1                3                6                6
##        y_rate_len
## safeh20 1.41348194117647 1.41396551351351 1.41473023255814
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.41594982758621 1.4162273015873 1.41714170454546 1.41732267015707
##       0                0               0                0                0
##       1                3               1                1                2
##        y_rate_len
## safeh20 1.41830679775281 1.419446 1.42056016483516 1.42056016483517
##       0                0        0                0                0
##       1                3        6                8                1
##        y_rate_len
## safeh20 1.42066023952096 1.42271661290323 1.42376042553191
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.42413450867052 1.42478226315789 1.4247822631579 1.42523965714286
##       0                0                0               0                0
##       1                4                1               1                7
##        y_rate_len
## safeh20 1.42631983050847 1.42737586592179 1.42840856353591
##       0                0                0                0
##       1                1                5               11
##        y_rate_len
## safeh20 1.42941868852459 1.43137411764706 1.43241436046512
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.43324764397906 1.43343068965517 1.43442392045455
##       0                0                0                0
##       1                2                3                4
##        y_rate_len
## safeh20 1.43504430769231 1.43539483146067 1.43591527918782
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.43634416666667 1.43727263736264 1.43818092391304
##       0                0                0                0
##       1                4                6                1
##        y_rate_len
## safeh20 1.43887383233533 1.43906967741935 1.43906967741936
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.43984378698225 1.44079105263158 1.44171641618497
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.44262062857143 1.44350440677966 1.44402515151515
##       0                0                0                0
##       1                3                4                1
##        y_rate_len
## safeh20 1.44436843575419 1.44521337016574 1.44521337016575
##       0                0                0                0
##       1                4                6                1
##        y_rate_len
## safeh20 1.44684843243243 1.44841428571429 1.44926629411765
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.45091155172414 1.45170613636364 1.45248286516854
##       0                0                0                0
##       1                2                4                4
##        y_rate_len
## safeh20 1.45324233333333 1.45398510989011 1.45471173913043
##       0                0                0                0
##       1                1                7                1
##        y_rate_len
## safeh20 1.45471173913044 1.45542274193548 1.45611861702128
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.45812015463917 1.45929832369942 1.4600016 1.46136100558659
##       0                0                0         0                0
##       1                1                2         5                3
##        y_rate_len
## safeh20 1.46201817679558 1.46266098360656 1.46390534759358
##       0                0                0                0
##       1                6                6                1
##        y_rate_len
## safeh20 1.46450777777778 1.46509759162304 1.46567518134715
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.46651946428571 1.46715847058823 1.46778261627907 1.4683924137931
##       0                0                0                0               0
##       1                1                1                1               2
##        y_rate_len
## safeh20 1.46898835227273 1.4701405 1.47069758241758 1.47124255434783
##       0                0         0                0                0
##       1                4         4                3                1
##        y_rate_len
## safeh20 1.47177580645161 1.47229771276596 1.47280863157895
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.47379886597938 1.47583988165681 1.47688023121387
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.47738257142857 1.47787355932204 1.47835357541899
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.47882298342541 1.47882298342542 1.47928213114754
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 1.47973135135135 1.48060126984127 1.48102256544503
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.48505064705882 1.48546674418605 1.48587327586207
##       0                0                0                0
##       1                1                2                5
##        y_rate_len
## safeh20 1.48703866666667 1.48741005494505 1.48777336956522
##       0                0                0                0
##       1                6                2                2
##        y_rate_len
## safeh20 1.48812887096774 1.48847680851064 1.48881742105263
##       0                0                0                0
##       1                2                3                3
##        y_rate_len
## safeh20 1.49415368421053 1.49476354285714 1.4953461452514 1.49562779005525
##       0                0                0               0                0
##       1                1                2               3                5
##        y_rate_len
## safeh20 1.49590327868852 1.49643657754011 1.49719507772021
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.50335413793103 1.50355278409091 1.50374696629213
##       0                0                0                0
##       1                4                3                1
##        y_rate_len
## safeh20 1.50393683333333 1.50412252747253 1.50430418478261
##       0                0                0                0
##       1                3                4                1
##        y_rate_len
## safeh20 1.50465590425532 1.50482621052632 1.5053162755102 1.51204404624277
##       0                0                0               0                0
##       1                1                1               2                2
##        y_rate_len
## safeh20 1.51214451428571 1.51224271186441 1.51243259668508
##       0                0                0                0
##       1                2                4                2
##        y_rate_len
## safeh20 1.51252442622951 1.51270219251337 1.51278825396825
##       0                0                0                0
##       1                2                1                1
##        y_rate_len
## safeh20 1.51287251308901 1.520835 1.528797486911 1.52905572972973
##       0                0        0              0                0
##       1                1       19              1                1
##        y_rate_len
## safeh20 1.52923740331492 1.52962595375723 1.52983402366864
##       0                0                0                0
##       1                4                1                2
##        y_rate_len
## safeh20 1.53701409574468 1.53736581521739 1.53754747252747
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.53773316666667 1.53792303370787 1.53811721590909
##       0                0                0                0
##       1                3                2                1
##        y_rate_len
## safeh20 1.53831586206897 1.53915831325301 1.54472246073298
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.54497523809524 1.54523342245989 1.54549718918919
##       0                0                0                0
##       1                1                2                2
##        y_rate_len
## safeh20 1.54576672131147 1.54604220994475 1.5463238547486 1.54690645714286
##       0                0                0               0                0
##       1                3                1               5                2
##        y_rate_len
## safeh20 1.55354112903226 1.55389663043478 1.55425994505494
##       0                0                0                0
##       1                1                2                4
##        y_rate_len
## safeh20 1.55579672413793 1.56238786885246 1.56284701657459
##       0                0                0                0
##       1                2                1                2
##        y_rate_len
## safeh20 1.56331642458101 1.56379644067797 1.56428742857143
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.56478976878613 1.56530385964912 1.56692090909091
##       0                0                0                0
##       1                1                2                1
##        y_rate_len
## safeh20 1.56787113402062 1.56836109375 1.56937228723404 1.56989419354839
##       0                0             0                0                0
##       1                1             1                1                1
##        y_rate_len
## safeh20 1.57042744565217 1.57097241758242 1.5715295 1.57268164772727
##       0                0                0         0                0
##       1                1                2         3                2
##        y_rate_len
## safeh20 1.5732775862069 1.57515053571429 1.57599481865285 1.57657240837696
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.57776465240642 1.57838010810811 1.57900901639344
##       0                0                0                0
##       1                1                1                3
##        y_rate_len
## safeh20 1.57965182320442 1.58030899441341 1.58098101694915 1.5816684
##       0                0                0                0         0
##       1                2                5                4         1
##        y_rate_len
## safeh20 1.58237167630058 1.58555138297872 1.58624725806452
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.58768489010989 1.58996386363636 1.59075844827586
##       0                0                0                0
##       1                1                3                2
##        y_rate_len
## safeh20 1.59175476683938 1.59240370588235 1.59563016393443
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.59645662983425 1.59645662983426 1.59730156424581
##       0                0                0                0
##       1                3                1                2
##        y_rate_len
## safeh20 1.59816559322034 1.59995358381503 1.60378963636364
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60439736263736 1.60532583333333 1.60627516853933
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.60823931034483 1.60925563953488 1.61326143646409
##       0                0                0                0
##       1                1                1                2
##        y_rate_len
## safeh20 1.61643034285714 1.61753549132948 1.61895338709677
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.62001989130435 1.62110983516483 1.62110983516484
##       0                0                0                0
##       1                2                1                4
##        y_rate_len
## safeh20 1.62119467005076 1.622224 1.62327466321243 1.62434732984293
##       0                0        0                0                0
##       1                1        1                1                1
##        y_rate_len
## safeh20 1.6265614973262 1.63077487951807 1.63128670391061 1.63289652631579
##       0               0                0                0                0
##       1               1                1                1                1
##        y_rate_len
## safeh20 1.63381131428571 1.63782230769231 1.64027230366492
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.64181051136364 1.64320103448276 1.64414594594595
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.64549360655738 1.64626469072165 1.64687104972376
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.64827927374302 1.65453478021978 1.65602033333333
##       0                0                0                0
##       1                2                2                1
##        y_rate_len
## safeh20 1.66230802325581 1.66341328125 1.66367585635359 1.66690389830509
##       0                0             0                0                0
##       1                1             1                2                2
##        y_rate_len
## safeh20 1.67124725274725 1.6729185 1.67535834224599 1.67873590163934
##       0                0         0                0                0
##       1                3         1                2                1
##        y_rate_len
## safeh20 1.68226441340782 1.68262595744681 1.68595422857143
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.68981666666667 1.7026739673913 1.710939375 1.71197819672131
##       0                0               0           0                0
##       1                2               1           1                1
##        y_rate_len
## safeh20 1.71312448275862 1.71409027624309 1.71624955307262
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.71624955307263 1.71845762711864 1.71845762711865 1.723613
##       0                0                0                0        0
##       1                1                2                1        1
##        y_rate_len
## safeh20 1.72589140449438 1.72822159090909 1.73089508287293
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.73359430051813 1.73809714285714 1.74042080213904
##       0                0                0                0
##       1                1                3                1
##        y_rate_len
## safeh20 1.74522049180328 1.74734234042553 1.74977790322581
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.75023469273743 1.75174712041885 1.75480961538462
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.76184163934426 1.76613096774193 1.77846278688525 1.77937695
##       0                0                0                0          0
##       1                1                1                1          1
##        y_rate_len
## safeh20 1.78421983240223 1.78719593220339 1.78823456043956
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.79654192982456 1.80121240223464 1.80494703296703
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.80810383333333 1.81093647398844 1.81133157303371
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.81170508196721 1.8149191160221 1.81519016129032 1.81800965517241
##       0                0               0                0                0
##       1                1               1                1                1
##        y_rate_len
## safeh20 1.81820497206704 1.82146517441861 1.825002 1.8283262295082
##       0                0                0        0               0
##       1                1                1        2               1
##        y_rate_len
## safeh20 1.83492048913043 1.83549051724138 1.83837197802198
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.83914930232558 1.84190016666667 1.84238297142857
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.84610028901734 1.84852872928177 1.85683343023256
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.85788491891892 1.86156852459016 1.8625956741573 1.87432637837838
##       0                0                0               0                0
##       1                1                1               1                1
##        y_rate_len
## safeh20 1.88793310344828 1.89259466666667 1.89507188481675
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.89894314917127 1.90541396551724 1.91190685714286 1.9157479558011
##       0                0                0                0               0
##       1                1                1                1               1
##        y_rate_len
## safeh20 1.92016039106145 1.92289482758621 1.92394789156627
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 1.93864681318681 1.9670680239521 1.9753374137931 1.99281827586207
##       0                0               0               0                0
##       1                1               1               1                1
##        y_rate_len
## safeh20 1.99341084745763 2.05563412087912 2.06102229508197
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.22476434285714 2.25618379120879 2.49790776536313
##       0                0                0                0
##       1                1                1                1
##        y_rate_len
## safeh20 2.65928862857143
##       0                0
##       1                1
```




# Results Detail

## Results Plots
![](/tmp/efddd890-2805-485d-96d2-24c3a62cd783/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/efddd890-2805-485d-96d2-24c3a62cd783/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                3.3426036   3.2760672   3.4091400
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                3.2599635   3.0617293   3.4581977
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                3.4643204   3.3682677   3.5603732
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                3.1248070   2.9395942   3.3100198
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                3.3112867   3.1955288   3.4270445
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4639273   3.3685736   3.5592811
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                3.6699450   3.6304727   3.7094174
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                3.7186612   3.7083000   3.7290223
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                2.0139478   1.9448484   2.0830471
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                2.0158302   1.7571949   2.2744656
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.9534675   1.8671741   2.0397608
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.4475378   1.3225053   1.5725702
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7391351   1.6274174   1.8508528
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8166518   1.7374596   1.8958440
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                1.7964750   1.5589897   2.0339604
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.9203110   1.9098564   1.9307655
6-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                1.2139751   1.1788504   1.2490997
6-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                1.1684744   1.1091842   1.2277646
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.1933412   1.1511290   1.2355535
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.2731518   1.2295929   1.3167107
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9647020   0.9107254   1.0186786
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0186156   0.9777549   1.0594764
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                1.2473395   1.2146138   1.2800651
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                1.2716484   1.2430162   1.3002807
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                1.2402520   0.9886062   1.4918979
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.1068014   1.1000578   1.1135450
12-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8460440   0.8242665   0.8678216
12-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.8033566   0.7491219   0.8575913
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.8758195   0.8523433   0.8992957
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.9895899   0.9601402   1.0190396
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8051839   0.7664622   0.8439056
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7465372   0.7179989   0.7750755
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.8257803   0.7856408   0.8659198
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.8435610   0.8249727   0.8621492
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4914257   0.4796432   0.5032081
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.7967375   0.7914270   0.8020481


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                3.3389528   3.2747209   3.4031847
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                3.4372874   3.3434154   3.5311594
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4800204   3.4022349   3.5578058
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                3.7184741   3.7081307   3.7288174
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                2.0141715   1.9468382   2.0815048
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.9844707   1.9033268   2.0656145
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8286113   1.7605412   1.8966813
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
6-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                1.2121791   1.1783399   1.2460182
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.1896669   1.1483348   1.2309989
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0012814   0.9640416   1.0385213
6-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                1.2790810   1.2528925   1.3052695
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                1.1069558   1.1002095   1.1137021
12-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.8443972   0.8230714   0.8657230
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.8691564   0.8467327   0.8915801
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7647577   0.7413956   0.7881199
12-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.8407809   0.8238743   0.8576875
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.7967251   0.7914074   0.8020427


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.0826401   -0.2917427    0.1264624
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.3395134   -0.5473406   -0.1316862
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1526406    0.0029236    0.3023577
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0487161    0.0084088    0.0890234
3-6 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           1                    0                  0.0018825   -0.2643173    0.2680822
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.5059297   -0.6563531   -0.3555063
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0775167   -0.0580013    0.2130347
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.1238359   -0.1131093    0.3607811
6-12 months    ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   PERU                           1                    0                 -0.0455007   -0.1144088    0.0234075
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0798106    0.0293681    0.1302530
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0539137   -0.0057498    0.1135771
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    0                  0.0243089   -0.0157610    0.0643788
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.1334506   -0.3847393    0.1178380
12-24 months   ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   PERU                           1                    0                 -0.0426875   -0.0993663    0.0139914
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.1137704    0.0756996    0.1518412
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0586467   -0.1067374   -0.0105560
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                  0.0177807   -0.0264540    0.0620153
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.3053119    0.2929369    0.3176868
