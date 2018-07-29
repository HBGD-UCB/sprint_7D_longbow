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

**Intervention Variable:** impfloor

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
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              218     237
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               53     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              581     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              546     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            18670   20001
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1331   20001
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1623    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              182    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              172     174
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11     194
0-3 months     ki0047075b-MAL-ED          INDIA                          1              183     194
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               67      67
0-3 months     ki1000108-IRC              INDIA                          1              280     280
0-3 months     ki0047075b-MAL-ED          NEPAL                          0              100     168
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               68     168
0-3 months     ki0047075b-MAL-ED          PERU                           0              204     260
0-3 months     ki0047075b-MAL-ED          PERU                           1               56     260
0-3 months     ki1114097-CONTENT          PERU                           0                2      29
0-3 months     ki1114097-CONTENT          PERU                           1               27      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              195     215
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463     521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               43     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              531     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            11469   12550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1081   12550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1639    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              200    1839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1              214     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214     214
3-6 months     ki1000108-IRC              INDIA                          1              297     297
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              301     370
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               69     370
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267
3-6 months     ki1114097-CONTENT          PERU                           0               14     214
3-6 months     ki1114097-CONTENT          PERU                           1              200     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               16     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              204     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               52     481
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              429     481
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               40     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              505     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              174     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              502     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             8973    9815
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              842    9815
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             2773    3158
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              385    3158
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               14     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1              210     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              225     225
6-12 months    ki1000108-IRC              INDIA                          1              299     299
6-12 months    ki0047075b-MAL-ED          NEPAL                          0              124     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     223
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              306     377
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               71     377
6-12 months    ki0047075b-MAL-ED          PERU                           0              183     237
6-12 months    ki0047075b-MAL-ED          PERU                           1               54     237
6-12 months    ki1114097-CONTENT          PERU                           0               14     213
6-12 months    ki1114097-CONTENT          PERU                           1              199     213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              211     221
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     221
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              189     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              371     419
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               37     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              421     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              327     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             4241    4641
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              400    4641
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3218    3634
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              416    3634
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               14     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1              211     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              228     228
12-24 months   ki1000108-IRC              INDIA                          1              297     297
12-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     219
12-24 months   ki0047075b-MAL-ED          NEPAL                          1               96     219
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              219     276
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               57     276
12-24 months   ki0047075b-MAL-ED          PERU                           0              145     191
12-24 months   ki0047075b-MAL-ED          PERU                           1               46     191
12-24 months   ki1114097-CONTENT          PERU                           0                5      38
12-24 months   ki1114097-CONTENT          PERU                           1               33      38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              193     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     205


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         y_rate_len
## impfloor 1.00105594936709 1.44841428571429 1.46586506024096
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.78921764705882 1.81051785714286 1.87757407407407
##        0                0                0                0
##        1                2                2                1
##         y_rate_len
## impfloor 1.89553347826087 2.12209534883721 2.17262142857143
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 2.36574333333333 2.44732068965517 2.56526385542169
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.87454527472528 2.93173012048193 2.96748292682927 3.04167
##        0                0                0                0       0
##        1                1                1                1       1
##         y_rate_len
## impfloor 3.07509494505495 3.07788035714286 3.14655517241379
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.22059176470588 3.25893214285714 3.31204066666667
##        0                0                0                0
##        1                1                3                1
##         y_rate_len
## impfloor 3.32461604651163 3.37963333333333 3.56013647727273
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.62103571428571 3.62660653846154 3.63807588235294
##        0                0                0                0
##        1                3                1                1
##         y_rate_len
## impfloor 3.70935365853659 3.7101689010989 3.71759666666667
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 3.72753676470588 3.75270974025974 3.75514814814815
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 3.75735705882353 3.8020875 3.84578965517241 3.88213144736842
##        0                0         0                0                0
##        1                1         2                1                1
##         y_rate_len
## impfloor 3.89957692307692 3.94290555555556 4.01099340659341
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.13066296296296 4.258338 4.27282214285714 4.34524285714286
##        0                0        0                0                0
##        1                1        1                1                3
##         y_rate_len
## impfloor 4.40241710526316 4.42774746835443 4.63669207317073
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 4.70734642857143 4.88839821428571 5.05723445783132
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 5.26442884615385 5.36765294117647 5.61260535714286
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 5.82629746478873
##        0                0
##        1                1
##         y_rate_len
## impfloor 0.835623626373626 0.902473516483517 0.946297333333332
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 1.04768633333333 1.05797217391304 1.09750979381443 1.115279
##        0                0                0                0        0
##        1                1                1                1        2
##         y_rate_len
## impfloor 1.12409543478261 1.14907533333333 1.22366034482759
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.26196946808511 1.31272073684211 1.318057 1.3369978021978
##        0                0                0        0               0
##        1                1                1        1               1
##         y_rate_len
## impfloor 1.35185333333333 1.36704269662921 1.38257727272727
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.40121876404494 1.419446 1.520835 1.55463133333333
##        0                0        0        0                0
##        1                1        1        1                1
##         y_rate_len
## impfloor 1.56989419354839 1.58842766666667 1.68262595744681
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.74297943820225 1.78304793103448 1.78532804347826
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.79120566666667 1.79735045454546 1.85008793814433
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.85145130434783 1.87968370786517 1.95063619565217
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.97207175824176 1.98369782608696 1.99281827586207
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.99398366666667 2.00392376470588 2.01675945652174 2.02778
##        0                0                0                0       0
##        1                1                1                1       1
##         y_rate_len
## impfloor 2.04982108695652 2.06157633333333 2.10577153846154
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 2.13564063829787 2.14299477272727 2.15746360465116
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.20258862068965 2.23947131868132 2.24668806818182
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 2.26435433333333 2.2812525 2.2890918556701 2.28942903225806
##        0                0         0               0                0
##        1                1         2               1                1
##         y_rate_len
## impfloor 2.30632120879121 2.31431413043478 2.32397258426966
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.33974615384615 2.36967313953488 2.3731710989011
##        0                0                0               0
##        1                1                1               1
##         y_rate_len
## impfloor 2.39232471910112 2.39953966666667 2.40659604395604 2.433336
##        0                0                0                0        0
##        1                2                1                1        1
##         y_rate_len
## impfloor 2.44656065217392 2.46067685393258 2.50092866666667
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.52393893617021 2.52902898876404 2.534725 2.56320505617978
##        0                0                0        0                0
##        1                1                1        1                1
##         y_rate_len
## impfloor 2.56852133333333 2.59654756097561 2.59738112359551
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.60231766666667 2.61649032258065 2.64493043478261
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.6491964516129 2.66991033333333 2.67799206521739
##        0               0                0                0
##        1               1                1                2
##         y_rate_len
## impfloor 2.68572989361702 2.70370666666667 2.70742054945055
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.72149421052632 2.74731483870968 2.77129933333333
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 2.81272709677419 2.81516265957447 2.83189965517241
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.83661359550562 2.838892 2.84112032967033 2.86686137931035
##        0                0        0                0                0
##        1                1        1                2                1
##         y_rate_len
## impfloor 2.87078966292135 2.87268833333333 2.87636184782609
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.87987904255319 2.88158210526316 2.90341227272727
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 2.90496573033708 2.940281 2.94355161290323 2.97331786516854
##        0                0        0                0                0
##        1                1        2                1                2
##         y_rate_len
## impfloor 3.00787366666667 3.00860836956522 3.04167 3.07402819148936
##        0                0                0       0                0
##        1                1                1       4                1
##         y_rate_len
## impfloor 3.07437612903226 3.07623443181818 3.10851989010989
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.11079886363636 3.13978838709677 3.14194483516483
##        0                0                0                0
##        1                3                1                1
##         y_rate_len
## impfloor 3.14655517241379 3.17249451612903 3.17536978021978
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.17992772727273 3.20175789473684 3.21065166666667
##        0                0                0                0
##        1                1                2                2
##         y_rate_len
## impfloor 3.23790677419355 3.24003978260869 3.244448 3.24672640449438
##        0                0                0        0                0
##        1                1                1        2                1
##         y_rate_len
## impfloor 3.26579305263158 3.27310141304348 3.27564461538461
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 3.28362102272727 3.28640206896552 3.30053553191489
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.30616304347826 3.345837 3.37963333333333 3.3834306741573
##        0                0        0                0               0
##        1                1        1                2               1
##         y_rate_len
## impfloor 3.39128724137931 3.4093443956044 3.41760674157303
##        0                0               0                0
##        1                1               1                2
##         y_rate_len
## impfloor 3.45178280898876 3.45644318181818 3.47619428571429
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.48102233333333 3.48595887640449 3.548615 3.57065608695652
##        0                0                0        0                0
##        1                1                2        4                1
##         y_rate_len
## impfloor 3.58596884210526 3.58848707865168 3.61620766666667
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.62266314606742 3.62926534090909 3.64293034883721
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.66984097826087 3.67098103448276 3.67674395604396
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.68578835294118 3.69839420454546 3.70290260869565
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 3.71759666666667 3.73596423913043 3.73596423913044
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.74090448275862 3.74605673684211 3.74903511627907 3.751393
##        0                0                0                0        0
##        1                1                1                1        1
##         y_rate_len
## impfloor 3.75936741573034 3.76120483870968 3.77586620689655
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.77701879120879 3.78590840425532 3.8020875 3.8277195505618
##        0                0                0         0               0
##        1                1                1         1               1
##         y_rate_len
## impfloor 3.83514913043478 3.84210947368421 3.84578965517241 3.852782
##        0                0                0                0        0
##        1                1                1                1        1
##         y_rate_len
## impfloor 3.87121636363636 3.89050813953488 3.89202935483871
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 3.90614463157895 3.93024775280899 3.93816221052631
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.94034522727273 3.94769936170213 3.95067482758621
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.96442382022472 3.97490965909091 3.99859988764045
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 4.0004572826087 4.01099340659341 4.03277595505618
##        0               0                0                0
##        1               1                3                1
##         y_rate_len
## impfloor 4.06658054347826 4.06734941860465 4.0778432967033
##        0                0                0               0
##        1                1                1               2
##         y_rate_len
## impfloor 4.11520058823529 4.12097225806452 4.19074533333333
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.19540689655172 4.19882706521739 4.20365629213483
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.21686068181818 4.21909064516129 4.22454166666667
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.23892308510638 4.24419069767442 4.26533034482759
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 4.29213433333333 4.30363946808511 4.32593066666667
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 4.33525379310345 4.36413521739131 4.37453662921348
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 4.39352333333333 4.4014754117647 4.41532741935484
##        0                0               0                0
##        1                2               1                1
##         y_rate_len
## impfloor 4.42731966666667 4.44288876404494 4.461116 4.49491233333333
##        0                0                0        0                0
##        1                1                1        1                1
##         y_rate_len
## impfloor 4.51236758241758 4.52870866666667 4.59706943181818
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.6137691011236 4.66619829545455 4.74238870967742 4.7608747826087
##        0               0                0                0               0
##        1               1                2                1               1
##         y_rate_len
## impfloor 4.765283 4.79907933333333 4.88717764044944 4.92960310344828
##        0        0                0                0                0
##        1        1                1                1                1
##         y_rate_len
## impfloor 4.94271375 5.12641011235955 5.18086648351648 5.23843166666667
##        0          0                0                0                0
##        1          2                1                1                1
##         y_rate_len
## impfloor 5.272228 5.28114131868132 5.28986086956522 5.2972904494382
##        0        0                0                0               0
##        1        1                1                1               1
##         y_rate_len
## impfloor 5.30523837209302 5.475006 5.75272369565217 6.45509966666666
##        0                0        0                0                0
##        1                1        1                1                1
##         y_rate_len
## impfloor 6.50851967741935 6.59598101123595
##        0                0                0
##        1                1                1
##         y_rate_len
## impfloor 0 0.0339851396648037 0.192193434065934 0.224311946902655
##        0 0                  0                 0                 0
##        1 1                  1                 1                 1
##         y_rate_len
## impfloor 0.259043324175824 0.270370666666667 0.280377402234637
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.301582011331445 0.317914661016949 0.359318159340659
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.367674395604396 0.368427633802817 0.371943342391304
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.373975819672131 0.389532670299728 0.390596967213114 0.405556
##        0                 0                 0                 0        0
##        1                 1                 1                 1        1
##         y_rate_len
## impfloor 0.426477539682539 0.431038796791444 0.448246105263157
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.449709274193548 0.452479834710744 0.454597418478261
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.46794923076923 0.467949230769231 0.48159775 0.483333863013698
##        0                0                 0          0                 0
##        1                1                 1          1                 1
##         y_rate_len
## impfloor 0.489276675603217 0.502755371900826 0.504048171428572
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.515121532258064 0.515537288135593 0.518086648351647
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.51972512605042 0.524708571428572 0.525000575342465
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.530817756232687 0.534799120879121 0.535795528455285
##        0                 0                 0                 0
##        1                 1                 2                 2
##         y_rate_len
## impfloor 0.540187295081967 0.544038536585366 0.549906440677967
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.552281544715447 0.553030909090909 0.55833394520548
##        0                 0                 0                0
##        1                 1                 2                1
##         y_rate_len
## impfloor 0.56626835106383 0.566667287671233 0.56876756097561
##        0                0                 0                0
##        1                1                 1                1
##         y_rate_len
## impfloor 0.569789421487603 0.571363425414364 0.575451081081081
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.575889519999999 0.577010569105691 0.581495735294118
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.582986749999999 0.58400064 0.587132010723861 0.588993901734104
##        0                 0          0                 0                 0
##        1                 1          1                 1                 1
##         y_rate_len
## impfloor 0.591667315068494 0.598361311475409 0.600000657534246
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.600000657534247 0.60011327027027 0.600222879999999
##        0                 0                0                 0
##        1                 2                1                 1
##         y_rate_len
## impfloor 0.609982601626015 0.611732513966481 0.619599444444445
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.620748979591837 0.628444214876033 0.631603606557377
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.639006302521008 0.639914180327869 0.641667369863014
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.641739624277456 0.646985055248619 0.650000712328767
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.653581983471075 0.659440650406504 0.660142664835165
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.663789861878453 0.667683658536585 0.668498901098901
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.670340495867769 0.671322261580381 0.673156475409836
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.674099837837838 0.675926666666667 0.677809470752089
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.681334080000001 0.681606722689076 0.682168733509235
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.691288636363636 0.69547826446281 0.69755632 0.699929744318181
##        0                 0                0          0                 0
##        1                 2                1          1                 1
##         y_rate_len
## impfloor 0.70255964673913 0.710280082417582 0.717141707317073
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.720858208092486 0.721049836512261 0.722606685082872
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.725760402144773 0.727355869565217 0.727355869565218
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.728059308510638 0.7300008 0.735887903225806 0.737374545454545
##        0                 0         0                 0                 0
##        1                 1         1                 1                 1
##         y_rate_len
## impfloor 0.741870731707317 0.74964671388102 0.753991436619718
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.756216298342541 0.756262213114754 0.758462699228792
##        0                 0                 0                 0
##        1                 2                 1                 1
##         y_rate_len
## impfloor 0.760417499999999 0.7604175 0.762489482288829 0.770777411444141
##        0                 0         0                 0                 0
##        1                 1         1                 1                 1
##         y_rate_len
## impfloor 0.772748594594595 0.773453228571429 0.775000849315068
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.78119393442623 0.781658212290503 0.783847731092437
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.785213722826087 0.78576475 0.797815081967213 0.799571788617886
##        0                 0          0                 0                 0
##        1                 1          1                 1                 1
##         y_rate_len
## impfloor 0.803623039772727 0.806125655737705 0.808334219178082
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.817653225806452 0.818911153846155 0.825000904109589
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.828792915531335 0.830316601671309 0.833334246575342
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.837080844686648 0.839081379310344 0.839081379310345
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.844908333333333 0.845368773841962 0.847149469496021
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.853944786096257 0.858824470588235 0.864474631578947
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.869048571428571 0.869048571428572 0.873586684073107
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.884398614130435 0.889231393442623 0.891667643835617
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.893121939058172 0.894117280219779 0.89411728021978
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 0.895096348773842 0.896580413223141 0.90000098630137
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 0.905161849865952 0.914163114754098 0.915957443181818
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.919185989010989 0.920950083333334 0.921718181818182
##        0                 0                 0                 0
##        1                 2                 2                 1
##         y_rate_len
## impfloor 0.922208457446809 0.927542225274725 0.931841098265895
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.941469285714286 0.941667698630137 0.943676011080333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.944254697802198 0.94647710106383 0.947405409836065
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.953604648648648 0.955235206611569 0.95711216 0.968953047091413
##        0                 0                 0          0                 0
##        1                 1                 1          1                 1
##         y_rate_len
## impfloor 0.969421140350878 0.971289579831933 0.972337131147541
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.981183870967742 0.995163799472296 0.997268852459016
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.999885994475139 1.00544091666667 1.00824158774373
##        0                 0                0                0
##        1                 1                1                1
##         y_rate_len
## impfloor 1.01108144044321 1.01666778082192 1.01946082417582
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.02241008403361 1.03037601626016 1.03064851239669
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.04686203252032 1.05578628099174 1.05761571428571
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.07038240469208 1.07159105691057 1.08333452054795
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.08631071428571 1.11613100840336 1.13000589385475
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.18985438016529 1.1912545691906 1.21003765667575
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.22836673076923 1.25000136986301 1.2673625 1.35008851174935
##        0                0                0         0                0
##        1                1                1         1                1
##         y_rate_len
## impfloor 1.36529505681818 1.38858847826087 1.40188701117318
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.40568039164491 1.42393969529086 1.47449376731302
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.58731959016393
##        0                0
##        1                1
##         y_rate_len
## impfloor 0.189076783783784 0.190104375000001 0.226239917355372
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.271123788300836 0.275755796703296 0.336096132596685
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.353878504155125 0.360737142857143 0.405004972826087
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.415158300835654 0.420393414634146 0.465994011142061
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.495741795580111 0.512455271739131 0.531876721311476 0.53229225
##        0                 0                 0                 0          0
##        1                 1                 1                 1          1
##         y_rate_len
## impfloor 0.53333391780822 0.536272396694214 0.536765294117647
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.540741333333334 0.557502857142858 0.564520470914128
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.58333397260274 0.591435833333333 0.611640163043479
##        0                0                 0                 0
##        1                2                 1                 1
##         y_rate_len
## impfloor 0.61337544198895 0.616783083333333 0.618501142061281
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.62671771978022 0.630180248618785 0.641216918918919
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.646458474114441 0.648777257617729 0.650000712328767
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.654122580645161 0.658334054794521 0.662299112903225
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.666667397260274 0.668498901098901 0.676855137362637
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.679702793296089 0.683334082191781 0.684169674796748
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.687099008264462 0.68868 0.688997071823205 0.689777622950819
##        0                 0       0                 0                 0
##        1                 1       2                 2                 1
##         y_rate_len
## impfloor 0.691667424657534 0.692824833333334 0.694754707520892
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.69547826446281 0.697399475138121 0.699331329639889
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.701923846153847 0.705077142857142 0.706982756756756
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.708334109589041 0.710280082417582 0.714204281767956
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.714709344262295 0.716667452054794 0.718636318681319
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.720616033057851 0.725000794520548 0.727355869565217
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.728995289256198 0.731330491803278 0.733334136986301
##        0                 0                 0                 0
##        1                 3                 1                 1
##         y_rate_len
## impfloor 0.733627723577236 0.73507025 0.735348791208791 0.737117799442897
##        0                 0          0                 0                 0
##        1                 1          1                 1                 1
##         y_rate_len
## impfloor 0.739411491712707 0.739641065573771 0.741459722991689
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.741667479452054 0.743705027472528 0.743886684782609
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.745753801652892 0.749767394957983 0.752061263736264
##        0                 0                 0                 0
##        1                 2                 1                 1
##         y_rate_len
## impfloor 0.75413305785124 0.756216298342541 0.7604175 0.760417500000001
##        0                0                 0         0                 0
##        1                1                 1         1                 1
##         y_rate_len
## impfloor 0.762512314049586 0.7625356545961 0.764618701657458
##        0                 0               0                 0
##        1                 1               1                 1
##         y_rate_len
## impfloor 0.764665642458101 0.766667506849315 0.768773736263736
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.768866583333333 0.768866583333334 0.770891570247934
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.771008272980501 0.772883360655737 0.773021104972376
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.773161927374301 0.775000849315068 0.777129972527472
##        0                 0                 0                 0
##        1                 1                 2                 4
##         y_rate_len
## impfloor 0.779480891364903 0.781423508287293 0.783085772357724
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.785486208791209 0.787353269754768 0.789504508196721
##        0                 0                 0                 0
##        1                 1                 1                 3
##         y_rate_len
## impfloor 0.790997292225201 0.791667534246575 0.79236781512605
##        0                 0                 0                0
##        1                 1                 2                1
##         y_rate_len
## impfloor 0.793842445054945 0.795641198910082 0.797815081967214
##        0                 0                 0                 0
##        1                 3                 1                 1
##         y_rate_len
## impfloor 0.798228314917127 0.799571788617886 0.800439473684211
##        0                 0                 0                 0
##        1                 2                 1                 1
##         y_rate_len
## impfloor 0.801300161290322 0.804408595041322 0.804408595041323
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.804898746518106 0.808334219178082 0.813852243243243
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.814436229508196 0.817290831024931 0.818911153846154
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.820504986376022 0.822746803278688 0.825716509695291
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.826540760869565 0.828010166666666 0.828792915531335
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.829546363636363 0.829546363636364 0.833334246575342
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.835623626373626 0.837925619834711 0.843071576086956
##        0                 0                 0                 0
##        1                 2                 2                 1
##         y_rate_len
## impfloor 0.844908333333333 0.852336098901099 0.853656702997275
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.854955891891891 0.855989098360656 0.858124776536312
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.858334273972602 0.858535887096774 0.859419224376732 0.8618065
##        0                 0                 0                 0         0
##        1                 1                 1                 1         1
##         y_rate_len
## impfloor 0.861944632152589 0.86294570224719 0.863063388429752
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.865447541436464 0.867867798913043 0.870255583333333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.8714426446281 0.872610245901639 0.873849944751382
##        0               0                 0                 0
##        1               2                 2                 1
##         y_rate_len
## impfloor 0.87500095890411 0.877404807692308 0.879821900826446
##        0                0                 0                 0
##        1                2                 3                 3
##         y_rate_len
## impfloor 0.880920819672132 0.882252348066298 0.886808419618529
##        0                 0                 0                 0
##        1                 1                 2                 2
##         y_rate_len
## impfloor 0.891667643835617 0.894117280219779 0.895096348773842
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.895602833333333 0.90000098630137 0.900929429347827
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.901547617728531 0.902741631016042 0.903384277929156
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.909194836956522 0.909973296398892 0.913338925619835
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.914973902439025 0.918398975069253 0.920169075630252
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.921718181818182 0.92394814516129 0.926095055865922
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.927542225274726 0.931459918699187 0.931988022284123
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.932124677419355 0.933334356164384 0.93716318918919
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 0.937848249999999 0.938476694214876 0.940460640668524
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.941069171270718 0.941667698630137 0.946855950413223
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.952610934065935 0.955235206611571 0.96096717032967
##        0                 0                 0                0
##        1                 2                 1                1
##         y_rate_len
## impfloor 0.962769495798319 0.96627638121547 0.968576480446928
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.971289579831933 0.972337131147541 0.974351114206128
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.975318097826088 0.977378725761772 0.977679642857142
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.980372975206612 0.980917967479674 0.980917967479675
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.991848913043478 0.994392115384616 0.994551498637602
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.999768969359331 1.00274835164835 1.01110458791209
##        0                 0                0                0
##        1                 1                1                2
##         y_rate_len
## impfloor 1.01114975675676 1.01389 1.01941528610354 1.02226925619835
##        0                0       0                0                0
##        1                1       1                1                1
##         y_rate_len
## impfloor 1.02482142857143 1.02770321525886 1.02781706043956
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.03635847645429 1.04478415512465 1.04504304469274
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.05613541666667 1.05797217391304 1.05870281767956
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.06416553719008 1.06710522099448 1.07743079019074
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.08037459016393 1.08148266666667 1.08691254847645
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.09699573770492 1.10000120547945 1.10071483425414
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.10302318681319 1.10530631147541 1.11666789041096
##        0                0                0                0
##        1                1                2                2
##         y_rate_len
## impfloor 1.1280918956044 1.14795809917355 1.16198629213483
##        0               0                0                0
##        1               1                1                1
##         y_rate_len
## impfloor 1.17116933518005 1.17769395543176 1.17959501385042
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.18841204918033 1.20985193277311 1.23515328729282
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.25147730245232 1.26666805479452 1.28940358695652
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.33230173553719 1.36030241666667 1.40645465181058
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.40894795640327 1.67757844011142
##        0                0                0
##        1                1                1
##         y_rate_len
## impfloor -0.736404315789473 -0.286274823529411 -0.168981666666667 0
##        0                  0                  0                  0 0
##        1                  1                  1                  1 1
##         y_rate_len
## impfloor 0.231012911392406 0.334249450549451 0.353682558139535
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.357843529411765 0.418578440366972 0.434524285714285
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.563272222222222 0.5739 0.575451081081079 0.654122580645161
##        0                 0      0                 0                 0
##        1                 1      1                 1                 1
##         y_rate_len
## impfloor 0.668498901098901 0.679902705882352 0.699234482758621
##        0                 0                 0                 0
##        1                 3                 1                 1
##         y_rate_len
## impfloor 0.70736511627907 0.715687058823529 0.724207142857143
##        0                0                 0                 0
##        1                1                 1                 3
##         y_rate_len
## impfloor 0.727355869565218 0.760417499999999 0.786049550561797
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.814733035714286 0.826132592592594 0.837156880733945
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.844908333333333 0.898675227272728 0.906029361702127
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.927338414634146 0.958787282608695 0.960527368421053
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.991105955056179 0.991848913043478 1.00310393617021
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 1.0034375257732 1.00404640776699 1.01389 1.04885172413793
##        0               0                0       0                0
##        1               1                1       1                2
##         y_rate_len
## impfloor 1.0645845 1.06782031914894 1.07149738636364 1.07353058823529
##        0         0                0                0                0
##        1         1                1                1                1
##         y_rate_len
## impfloor 1.08148266666667 1.08631071428571 1.11656240506329
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.11734816326531 1.13253670212766 1.14062625 1.15214772727273
##        0                0                0          0                0
##        1                1                1          1                1
##         y_rate_len
## impfloor 1.15715706521739 1.15873142857143 1.16778401785714
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.16987307692308 1.21103527777778 1.216668 1.22209955357143
##        0                0                0        0                0
##        1                1                1        1                1
##         y_rate_len
## impfloor 1.24563628571428 1.24786461538462 1.25245235294118
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.27460457142857 1.28263192771084 1.28791432432432
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.29358379310345 1.34095129032258 1.34399372093023
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.35185333333333 1.35788839285714 1.36150942857143
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.36350724137931 1.3687515 1.38564966666667 1.38858847826087
##        0                0         0                0                0
##        1                1         1                1                1
##         y_rate_len
## impfloor 1.41473023255814 1.44841428571429 1.45324233333333
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.45471173913043 1.457466875 1.46586506024096 1.48777336956522
##        0                0           0                0                0
##        1                1           1                1                1
##         y_rate_len
## impfloor 1.48847680851064 1.50412252747253 1.50482621052632
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.50737628318584 1.50805487394958 1.53754747252747
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.55187244897959 1.56787113402062 1.578225 1.58842766666667
##        0                0                0        0                0
##        1                1                1        1                1
##         y_rate_len
## impfloor 1.61029588235294 1.61790957446808 1.63289652631579
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.65308152173913 1.66230802325581 1.66491410526316
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.66801258064516 1.70071870967742 1.70880337078652 1.710939375
##        0                0                0                0           0
##        1                1                1                1           1
##         y_rate_len
## impfloor 1.73342483870968 1.77681712871287 1.77970053191489
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.78921764705882 1.80017204081633 1.81051785714286
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.81838967391304 1.837675625 1.83837197802198 1.84343636363636
##        0                0           0                0                0
##        1                1           1                1                1
##         y_rate_len
## impfloor 1.85701957894737 1.87757407407407 1.88293857142857
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.89259466666667 1.89695548387097 1.91190685714286
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.91817027027027 1.92966161290323 1.93864681318681
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.95063619565217 1.95535928571429 1.9575103960396
##        0                0                0               0
##        1                1                1               1
##         y_rate_len
## impfloor 1.96236774193548 1.9681394117647 1.97145277777778
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.97207175824176 1.98251705357143 2.00473704545454
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.01803105769231 2.02778 2.04621436363636 2.05760029411765
##        0                0       0                0                0
##        1                1       1                1                1
##         y_rate_len
## impfloor 2.08114263157895 2.09770344827586 2.10577153846154
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 2.11594434782609 2.12209534883721 2.14517778947368
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.14706117647059 2.14900597826087 2.15451625 2.15860451612903
##        0                0                0          0                0
##        1                2                1          1                1
##         y_rate_len
## impfloor 2.17262142857143 2.1900024 2.24123052631579 2.25773443298969
##        0                0         0                0                0
##        1                1         1                1                1
##         y_rate_len
## impfloor 2.26032357798165 2.27414579439252 2.2812525 2.31431413043478
##        0                0                0         0                0
##        1                1                1         1                1
##         y_rate_len
## impfloor 2.33728326315789 2.33974615384615 2.35367321428571
##        0                0                0                0
##        1                1                4                1
##         y_rate_len
## impfloor 2.35398808695652 2.37739724137931 2.39232471910112
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.40131842105263 2.42152368932039 2.42686436170213 2.433336
##        0                0                0                0        0
##        1                1                1                1        1
##         y_rate_len
## impfloor 2.45407465909091 2.46621891891892 2.47577790697674
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.50490470588235 2.54029582417582 2.55776795454546
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.57372076923077 2.68861901785714 2.82216804123711
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.89682857142857 2.90496573033708 2.9166698630137
##        0                0                0               0
##        1                1                1               1
##         y_rate_len
## impfloor 2.92901555555555 3.00824505494505 3.04167 3.13574226804124
##        0                0                0       0                0
##        1                1                1       1                1
##         y_rate_len
## impfloor 3.14902305882353 3.20175789473684 3.23581914893617
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.25893214285714 3.35274988636364 3.35524422680412
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.39535255813954 3.4535628125 3.60197763157895 3.62103571428571
##        0                0            0                0                0
##        1                1            1                1                1
##         y_rate_len
## impfloor 3.64331901098901 3.66077097345133 3.66466265060241 3.9605078125
##        0                0                0                0            0
##        1                1                1                1            1
##         y_rate_len
## impfloor 4.27062757575758 4.28953461538462 4.34524285714286
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.37021551724138 4.40071404255319 4.53582368421053
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 0.136704269662923 0.547500599999999 0.568224065934067
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.656724204545454 0.661232608695652 0.768773736263735
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.786049550561799 0.841312978723405 0.859602391304346
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.878704666666669 0.898675227272725 0.948477741935486
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.981183870967742 0.991848913043478 1.00274835164835 1.01389
##        0                 0                 0                0       0
##        1                 1                 1                1       1
##         y_rate_len
## impfloor 1.02456252631579 1.03617329670329 1.04659612903226
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.05797217391304 1.05945808988764 1.0610476744186
##        0                0                0               0
##        1                1                1               1
##         y_rate_len
## impfloor 1.06959824175824 1.077258125 1.11200838709677 1.14471451612903
##        0                0           0                0                0
##        1                1           1                1                1
##         y_rate_len
## impfloor 1.15715706521739 1.16489489361702 1.17742064516129
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.18287166666667 1.19616235955056 1.20975511363636 1.216668
##        0                0                0                0        0
##        1                1                1                1        2
##         y_rate_len
## impfloor 1.22366034482759 1.23033842696629 1.23788895348837
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.24283290322581 1.25046433333333 1.25634195652174
##        0                0                0                0
##        1                1                1                3
##         y_rate_len
## impfloor 1.26451449438202 1.2673625 1.27014791208791 1.27553903225806
##        0                0         0                0                0
##        1                1         1                2                2
##         y_rate_len
## impfloor 1.27888397727273 1.28426066666667 1.28940358695652
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.29432765957447 1.29869056179775 1.31272073684211 1.318057
##        0                0                0                0        0
##        1                1                2                1        1
##         y_rate_len
## impfloor 1.3224652173913 1.32854551724138 1.330730625 1.33286662921348
##        0               0                0           0                0
##        1               3                1           1                1
##         y_rate_len
## impfloor 1.36704269662921 1.37042274725275 1.38564966666667
##        0                0                0                0
##        1                3                1                1
##         y_rate_len
## impfloor 1.40121876404494 1.40384769230769 1.419446 1.42165010869565
##        0                0                0        0                0
##        1                1                1        1                2
##         y_rate_len
## impfloor 1.42376042553191 1.4257828125 1.43137411764706 1.43727263736264
##        0                0            0                0                0
##        1                2            1                1                1
##         y_rate_len
## impfloor 1.44079105263158 1.45611861702128 1.45876010204082
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.4683924137931 1.47069758241758 1.48546674418605
##        0               0                0                0
##        1               1                2                1
##         y_rate_len
## impfloor 1.48979755102041 1.520835 1.53792303370787 1.53872717647059
##        0                0        0                0                0
##        1                1        2                1                1
##         y_rate_len
## impfloor 1.55319319148936 1.55389663043478 1.55463133333333
##        0                0                0                0
##        1                1                3                1
##         y_rate_len
## impfloor 1.55539943181818 1.56989419354839 1.57097241758242
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.5732775862069 1.58555138297872 1.58555138297873
##        0               0                0                0
##        1               1                1                1
##         y_rate_len
## impfloor 1.58842766666667 1.61790957446808 1.62001989130435 1.622224
##        0                0                0                0        0
##        1                1                1                2        2
##         y_rate_len
## impfloor 1.62946607142857 1.6353064516129 1.64045123595506
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.65308152173913 1.66230802325581 1.66491410526316
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.66801258064516 1.67124725274725 1.67462730337079 1.6792553125
##        0                0                0                0            0
##        1                1                3                1            1
##         y_rate_len
## impfloor 1.68981666666667 1.70071870967742 1.7046721978022
##        0                0                0               0
##        1                1                2               2
##         y_rate_len
## impfloor 1.70880337078652 1.723613 1.73809714285714 1.73809714285715
##        0                0        0                0                0
##        1                1        2                2                1
##         y_rate_len
## impfloor 1.74297943820225 1.75226641304348 1.76278602272727
##        0                0                0                0
##        1                3                1                1
##         y_rate_len
## impfloor 1.76613096774193 1.76841279069767 1.77715550561798
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.77970053191489 1.78304793103448 1.79735045454546 1.825002
##        0                0                0                0        0
##        1                1                1                1        2
##         y_rate_len
## impfloor 1.83837197802198 1.84343636363636 1.84441691489362
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.85879833333333 1.86424935483871 1.86647931818182
##        0                0                0                0
##        1                3                1                2
##         y_rate_len
## impfloor 1.87968370786517 1.89259466666666 1.89695548387097 1.90104375
##        0                0                0                0          0
##        1                2                1                1          2
##         y_rate_len
## impfloor 1.90522186813187 1.91757456521739 1.91914892857143
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.92289482758621 1.926391 1.93560818181818 1.93864681318681
##        0                0        0                0                0
##        1                1        1                1                1
##         y_rate_len
## impfloor 1.9414914893617 1.95063619565217 1.96018733333333 1.964411875
##        0               0                0                0           0
##        1               4                1                1           1
##         y_rate_len
## impfloor 1.97207175824176 1.98221191011236 2.00620787234043 2.0075022
##        0                0                0                0         0
##        1                1                1                2         1
##         y_rate_len
## impfloor 2.01638797752809 2.01675945652174 2.01710747368421 2.02778
##        0                0                0                0       0
##        1                1                1                1       2
##         y_rate_len
## impfloor 2.03892164835165 2.07092425531915 2.0828827173913
##        0                0                0               0
##        1                1                2               1
##         y_rate_len
## impfloor 2.08288271739131 2.09537266666667 2.09770344827586
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.10577153846154 2.11127682352941 2.12589838709677
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 2.13230474226804 2.13919648351648 2.15746360465116
##        0                0                0                0
##        1                1                2                2
##         y_rate_len
## impfloor 2.16296533333333 2.17262142857143 2.17755920454546 2.1862003125
##        0                0                0                0            0
##        1                1                1                1            1
##         y_rate_len
## impfloor 2.18726831460674 2.19131064516129 2.19676166666667
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.20035702127659 2.20921294736842 2.21512923913044
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.22401677419355 2.230558 2.2556204494382 2.25672290322581
##        0                0        0               0                0
##        1                1        2               1                1
##         y_rate_len
## impfloor 2.26435433333333 2.27289626373626 2.2812525 2.30429545454545
##        0                0                0         0                0
##        1                1                2         2                1
##         y_rate_len
## impfloor 2.30526568421053 2.30632120879121 2.31431413043478
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.32213516129032 2.32397258426966 2.32978978723404 2.3420859
##        0                0                0                0         0
##        1                1                1                1         1
##         y_rate_len
## impfloor 2.34737576086957 2.35038136363637 2.36176729411765
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.38043739130435 2.40659604395604 2.41349902173913
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 2.42650078651685 2.44656065217391 2.45295967741935
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 2.45407465909091 2.4796222826087 2.48566580645161
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 2.50092866666667 2.50859381443299 2.51724413793104
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.51837193548387 2.534725 2.5664090625 2.57880717391304
##        0                0        0            0                0
##        1                1        1            1                1
##         y_rate_len
## impfloor 2.598093125 2.60714571428571 2.6210135106383 2.62689681818182
##        0           0                0               0                0
##        1           1                1               1                2
##         y_rate_len
## impfloor 2.63155719101124 2.64493043478261 2.66146125 2.66573325842697
##        0                0                0          0                0
##        1                1                2          1                2
##         y_rate_len
## impfloor 2.6739956043956 2.69205275862069 2.70742054945055
##        0               0                0                0
##        1               3                1                1
##         y_rate_len
## impfloor 2.71460870967742 2.737503 2.76197620689655 2.76233295918367
##        0                0        0                0                0
##        1                1        1                1                1
##         y_rate_len
## impfloor 2.76826146067416 2.77427043956044 2.8287531 2.82946046511628
##        0                0                0         0                0
##        1                1                2         1                1
##         y_rate_len
## impfloor 2.84112032967033 2.90797021978022 2.96924928571429
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.00670827586207 3.00749393258427 3.07546633333333
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.07584606741573 3.14085489130435 3.14536329545455
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 3.18151689655172 3.20697815217391 3.24672640449438
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 3.39128724137931 3.6010575862069 3.67098103448276
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 3.92473548387097 4.19540689655172 4.54502413793103
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 4.66168989130435
##        0                0
##        1                1
##         y_rate_len
## impfloor 0.13419132352941 0.163922335329342 0.189030338983051
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.362103571428571 0.369220057803467 0.393998704663212
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.410112808988765 0.414773181818183 0.422905989304812
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.436752615384615 0.450617777777777 0.465561734693878
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.490591935483871 0.494271374999999 0.509599162303665
##        0                 0                 0                 0
##        1                 2                 1                 1
##         y_rate_len
## impfloor 0.527457225433526 0.528986086956522 0.539941420118343
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.547178730158731 0.563272222222222 0.567091016949152
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.583118082901555 0.584936538461538 0.598626542553192
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.599343842364532 0.601460169491525 0.611390954773869
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.621777845303868 0.623932307692308 0.628170978260869
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.628725083798883 0.640351578947368 0.643739682539683
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.650624598930481 0.663342925531914 0.663342925531915
##        0                 0                 0                 0
##        1                 3                 1                 1
##         y_rate_len
## impfloor 0.664845901639344 0.670475645161289 0.684773874345549
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.687383050847458 0.688377947368421 0.705542010309278
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.705801878453039 0.713861326530614 0.716623821989529
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.724207142857143 0.727355869565218 0.736404315789474
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.736899432989691 0.747381771428571 0.747951639344262
##        0                 0                 0                 0
##        1                 1                 2                 1
##         y_rate_len
## impfloor 0.752061263736264 0.756022023121387 0.7604175 0.764665642458101
##        0                 0                 0         0                 0
##        1                 1                 1         1                 1
##         y_rate_len
## impfloor 0.768098484848485 0.775936224489796 0.779915384615385
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.780749518716577 0.78982591160221 0.791914082840236
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_len
## impfloor 0.79277569148936 0.794213833333334 0.815643351955307
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 0.817653225806452 0.822072972972973 0.823435524861879
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.830971701030927 0.834006290322581 0.844023612565445
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.847678524590163 0.849628491620112 0.8820843 0.883065483870969
##        0                 0                 0         0                 0
##        1                 1                 1         1                 2
##         y_rate_len
## impfloor 0.894608823529412 0.90060620111732 0.902473516483517
##        0                 0                0                 0
##        1                 3                1                 1
##         y_rate_len
## impfloor 0.929836943005182 0.930784262295082 0.931123469387755
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.940722680412371 0.943405668449197 0.94559689119171
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 0.951583910614524 0.953604648648648 0.954942906976745
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.960527368421053 0.964026557377049 0.981183870967742
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.99319836734694 0.997796507936508 0.999195942028985
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_len
## impfloor 1.00236852272727 1.00256162011173 1.00274835164835
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.00837972826087 1.0085537368421 1.01389 1.01928303191489
##        0                0               0       0                0
##        1                1               1       2                1
##         y_rate_len
## impfloor 1.01955418994413 1.02973203125 1.03357718446602 1.03512329842932
##        0                0             0                0                0
##        1                1             1                1                1
##         y_rate_len
## impfloor 1.04057131578947 1.04189801104972 1.04713229508197
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.05726497326203 1.06869486486486 1.08631071428571
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.09281556886228 1.0950012 1.10302318681319 1.10931494117647
##        0                0         0                0                0
##        1                1         2                1                1
##         y_rate_len
## impfloor 1.11072219101124 1.11238217142857 1.11973565934066
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.12061526315789 1.12334403409091 1.13253670212766
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.13644813186813 1.14439069306931 1.14685918032787
##        0                0                0                0
##        1                1                1                3
##         y_rate_len
## impfloor 1.15037519230769 1.15316060439561 1.16299147058824
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.16864163157895 1.18199611398964 1.19616235955056
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.19672262295082 1.20365550802139 1.21304696428571 1.216668
##        0                0                0                0        0
##        1                1                1                1        1
##         y_rate_len
## impfloor 1.22278190954774 1.22597923469388 1.22961127659574
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.23510236363636 1.24149795918367 1.24512807017544
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.25343543956044 1.26346292307692 1.27014791208791
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.27057101265823 1.29143530726257 1.29189209677419
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.30602779661017 1.31627824561403 1.32700308823529
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.3369978021978 1.35185333333333 1.35788839285714
##        0               0                0                0
##        1               1                2                1
##         y_rate_len
## impfloor 1.35980541176471 1.3672153030303 1.37318111650485
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.37476610169492 1.37522313829787 1.37562964824121 1.39409875
##        0                0                0                0          0
##        1                1                1                1          1
##         y_rate_len
## impfloor 1.3991682 1.40384769230769 1.40655260115607 1.41220392857143
##        0         0                0                0                0
##        1         1                1                1                2
##         y_rate_len
## impfloor 1.43030910714286 1.43048836633663 1.44521337016575
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.44841428571429 1.45248286516854 1.48060126984127
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.48102256544503 1.48374146341463 1.49562779005525
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.49590327868852 1.52825370731707 1.52847738693467
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.52888174603175 1.54523342245989 1.55389663043478
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.56886136842105 1.56989419354839 1.57042744565217
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.58768489010989 1.61300681818182 1.65308152173913
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.66801258064516 1.67124725274725 1.68436564516129
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.70880337078652 1.71189467336683 1.71581384615385
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.72822159090909 1.74051116666667 1.77567762162162
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.77820707692308 1.79380538461538 1.80185885869565 1.825002
##        0                0                0                0        0
##        1                1                1                1        1
##         y_rate_len
## impfloor 1.87179692307692 1.92105473684211 2.03377934911243
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.07634958083832 2.10707865921788 2.12589838709677
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.20921294736842 2.30854953846154 2.53752580110497
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.76978888268156 2.93248184615385
##        0                0                0
##        1                1                1
##         y_rate_len
## impfloor 0.482013278688526 0.526126702702703 0.536765294117647
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.565119016393444 0.598361311475409 0.698088196721311
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.735348791208792 0.760417500000001 0.764483903743316
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.772487619047619 0.785486208791209 0.793479130434783
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.794213833333334 0.794981931818182 0.829546363636363
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.859602391304348 0.861806500000001 0.864299672131148
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.866712419354838 0.871397351351351 0.876133206521739
##        0                 0                 0                 0
##        1                 2                 1                 1
##         y_rate_len
## impfloor 0.880483421052632 0.880920819672132 0.885142063492063
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.885761043956046 0.889850265957447 0.89266402173913
##        0                 0                 0                0
##        1                 1                 2                1
##         y_rate_len
## impfloor 0.897541967213116 0.904280270270269 0.90428027027027
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 0.907459558011051 0.914163114754098 0.919185989010989
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.920721729729729 0.922208457446809 0.924264364640884
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.929399166666667 0.932124677419355 0.935898461538461
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.942256467391304 0.947405409836066 0.949516031746033
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.952610934065935 0.957873977900553 0.964026557377049
##        0                 0                 0                 0
##        1                 1                 1                 3
##         y_rate_len
## impfloor 0.964830806451614 0.974678784530386 0.975318097826088
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_len
## impfloor 0.975936898395722 0.981703015873015 0.986487567567568
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_len
## impfloor 0.991483591160221 0.997268852459016 0.99753693548387
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_len
## impfloor 1.00310393617021 1.00819398876405 1.01928303191489
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.01937048648649 1.01955418994413 1.02491054347826
##        0                0                0                0
##        1                2                1                2
##         y_rate_len
## impfloor 1.03051114754098 1.03078816666667 1.03654675977654
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.03693295454545 1.04099935828877 1.04144135869565
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.04659612903226 1.04713229508197 1.04768633333333
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.05797217391304 1.06375344262295 1.06869486486486
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.07353058823529 1.07550762430939 1.07930225806452
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.08037459016393 1.08631071428571 1.08752446927374
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.09231243093923 1.09699573770492 1.09838083333333
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.1001785106383 1.10302318681319 1.10451703910615
##        0               0                0                0
##        1               1                3                1
##         y_rate_len
## impfloor 1.10911723756906 1.1136168852459 1.115279 1.11635760638298
##        0                0               0        0                0
##        1                1               3        1                1
##         y_rate_len
## impfloor 1.12334403409091 1.1259220441989 1.12654444444444
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.13023803278688 1.13217716666667 1.1341820338983 1.1344607027027
##        0                0                0               0               0
##        1                2                2               2               1
##         y_rate_len
## impfloor 1.13850217877095 1.15090216216216 1.15316060439561
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.15549474860335 1.15715706521739 1.16198629213483
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.16348032786885 1.1659735 1.16987307692308 1.17368788043478
##        0                0         0                0                0
##        1                4         2                3                2
##         y_rate_len
## impfloor 1.1763364640884 1.17742064516129 1.18010147540984
##        0               0                0                0
##        1               2                1                2
##         y_rate_len
## impfloor 1.19021869565217 1.19091841269841 1.19314127071823
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.19672262295082 1.20329802197802 1.20365550802139
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.2133437704918 1.21343218085106 1.22328032608696
##        0               0                0                0
##        1               2                1                2
##         y_rate_len
## impfloor 1.22346502793296 1.2267508839779 1.22996491803279
##        0                0               0                0
##        1                1               1                2
##         y_rate_len
## impfloor 1.23033842696629 1.23310945945946 1.23356616666667
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.23981114130435 1.24579037234043 1.24955091891892
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.25245235294118 1.25343543956044 1.25529238095238
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.25918596774194 1.26036049723757 1.27014791208791
##        0                0                0                0
##        1                1                2                2
##         y_rate_len
## impfloor 1.2716586440678 1.27287277173913 1.27553903225806
##        0               0                0                0
##        1               1                2                1
##         y_rate_len
## impfloor 1.27982836065574 1.28243383783784 1.2849835828877
##        0                0                0               0
##        1                1                2               1
##         y_rate_len
## impfloor 1.28686038461538 1.29143530726257 1.29189209677419
##        0                0                0                0
##        1                2                1                2
##         y_rate_len
## impfloor 1.29397011049724 1.29644950819672 1.2988752972973
##        0                0                0               0
##        1                1                1               1
##         y_rate_len
## impfloor 1.31077491712707 1.31531675675676 1.31577859550562 1.318057
##        0                0                0                0        0
##        1                3                1                1        1
##         y_rate_len
## impfloor 1.3275797237569 1.32969180327869 1.33175821621622 1.3369978021978
##        0               0                0                0               0
##        1               1                2                1               2
##         y_rate_len
## impfloor 1.3389960326087 1.34095129032258 1.34438453038674
##        0               0                0                0
##        1               1                1                1
##         y_rate_len
## impfloor 1.34819967567568 1.35185333333333 1.35552684782609
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.35730435483871 1.36118933701657 1.36631165775401
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.37042274725275 1.37205766304348 1.37309674285714
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.37675589473684 1.3810825945946 1.38713521978022
##        0                0               0                0
##        1                1               1                2
##         y_rate_len
## impfloor 1.38858847826087 1.39140223404255 1.39479895027624
##        0                0                0                0
##        1                1                1                2
##         y_rate_len
## impfloor 1.40384769230769 1.42056016483516 1.42165010869565
##        0                0                0                0
##        1                1                3                1
##         y_rate_len
## impfloor 1.42271661290323 1.42376042553191 1.42840856353591
##        0                0                0                0
##        1                1                1                4
##         y_rate_len
## impfloor 1.42941868852459 1.43040697297297 1.43232079365079
##        0                0                0                0
##        1                2                2                2
##         y_rate_len
## impfloor 1.43634416666667 1.43727263736264 1.44603983606557
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.45398510989011 1.46201817679558 1.47177580645161
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.48741005494506 1.48777336956522 1.48847680851064
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.49590327868852 1.49669476190476 1.50412252747253
##        0                0                0                0
##        1                2                1                2
##         y_rate_len
## impfloor 1.50448193548387 1.5123387150838 1.51261427027027
##        0                0               0                0
##        1                1               1                1
##         y_rate_len
## impfloor 1.51278825396825 1.520835 1.52896780748663 1.52923740331492
##        0                0        0                0                0
##        1                1        3                1                2
##         y_rate_len
## impfloor 1.53736581521739 1.53754747252747 1.54576672131147
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.5463238547486 1.55389663043478 1.55425994505494
##        0               0                0                0
##        1               1                1                1
##         y_rate_len
## impfloor 1.55463133333333 1.56193864864865 1.56331642458101
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.56937228723404 1.57097241758242 1.5715295 1.57716222222222
##        0                0                0         0                0
##        1                1                1         1                1
##         y_rate_len
## impfloor 1.57900901639344 1.58768489010989 1.59403026737968
##        0                0                0                0
##        1                1                2                1
##         y_rate_len
## impfloor 1.59730156424581 1.60260032258064 1.63782230769231
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.67124725274725 1.67462730337079 1.69162395721925
##        0                0                0                0
##        1                2                1                1
##         y_rate_len
## impfloor 1.69347032432433 1.70071870967742 1.70671483333333
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.71707177419355 1.74042080213904 1.74522049180328
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 1.7566864171123 1.81463267045455 1.88793310344828
##        0               0                0                0
##        1               1                1                1
##         y_rate_len
## impfloor 1.91143196721311 1.93864681318681 1.94731253968254
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.07764344262295 2.09770344827586 2.72413302197802
##        0                0                0                0
##        1                1                1                1
##         y_rate_len
## impfloor 2.81023858695652
##        0                0
##        1                1
```




# Results Detail

## Results Plots
![](/tmp/ee4ac838-0513-42a4-9d51-ade7cc499786/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ee4ac838-0513-42a4-9d51-ade7cc499786/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                4.2709745    4.1846966   4.3572524
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                3.5661898    3.5020491   3.6303305
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                2.7010066    2.6030786   2.7989346
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                3.5640026    3.4879032   3.6401020
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.8032839    3.7195875   3.8869803
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.8966748    3.8035999   3.9897497
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.3108117    3.2431856   3.3784378
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.4683716    3.3959456   3.5407976
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                3.5689209    3.4678060   3.6700357
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                3.4265699    3.3298504   3.5232894
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4788394    3.3986887   3.5589902
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                5.1543821    5.1031792   5.2055850
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                3.4159014    3.3204159   3.5113869
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                3.3107609    3.2537227   3.3677991
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.4890073    3.3826267   3.5953878
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.4929240    3.4519927   3.5338553
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.0024012    2.9590648   3.0457377
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.3403130    3.2965789   3.3840471
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                3.7135145    3.7031467   3.7238824
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                3.8466417    3.8150887   3.8781947
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                3.6334853    3.6013686   3.6656019
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                3.6386458    3.5727944   3.7044973
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.7803340    1.6393257   1.9213423
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.9397816    1.8881780   1.9913853
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.0257655    0.9656968   1.0858341
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.8795205    1.8176139   1.9414271
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9519076    1.8845624   2.0192527
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9867720    1.9151216   2.0584223
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.9988624    1.9260632   2.0716616
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0631435    1.9858715   2.1404155
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.0807533   -0.0087101   0.1702168
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.9533352    1.8683650   2.0383055
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8203998    1.7505438   1.8902559
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4202445    0.3635761   0.4769129
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.5833810    1.5027346   1.6640274
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.8382076    1.7882510   1.8881642
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                2.1336153    2.0852633   2.1819673
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9741578    1.9383073   2.0100084
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1211642    2.0629040   2.1794244
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9716346    1.9337842   2.0094849
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.6995533    1.6514583   1.7476483
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.5886753    1.5217964   1.6555542
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                2.0790168    1.9147507   2.2432828
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                2.0845458    2.0345646   2.1345270
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.9165164    1.9055764   1.9274564
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.9549354    1.9272999   1.9825708
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.8985572    1.8691245   1.9279899
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.9122139    1.7831248   2.0413030
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.2354518    1.2041510   1.2667527
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.1128852    1.0870103   1.1387602
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                1.8968066    1.8601707   1.9334425
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                1.1317665    1.1024610   1.1610720
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.2222020    1.1935898   1.2508142
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.2604424    1.2254719   1.2954129
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.2214499    1.1853978   1.2575020
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.3196885    1.2823255   1.3570516
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9497131    0.9058029   0.9936233
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.1786331    1.1376777   1.2195885
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0042807    0.9666148   1.0419467
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4357303    1.4024063   1.4690544
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.9967258    0.9434423   1.0500093
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.1798444    1.1566581   1.2030307
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.0250303    0.9876465   1.0624141
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.1794625    1.1617614   1.1971637
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1632066    1.1393682   1.1870450
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.2303723    1.2105801   1.2501645
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.1611862    1.1369825   1.1853898
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.0918777    1.0563122   1.1274433
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                1.3222453    1.2104532   1.4340374
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                1.2995607    1.2694308   1.3296906
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.1063776    1.0996350   1.1131203
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.1135542    1.0962314   1.1308770
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.1977292    1.1864401   1.2090183
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.2459698    1.2161635   1.2757761
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8428541    0.7846850   0.9010233
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8462571    0.8296459   0.8628683
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.5366679    0.5169579   0.5563778
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8798842    0.8624115   0.8973569
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8741707    0.8555220   0.8928194
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9318939    0.9094561   0.9543318
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8695527    0.8472491   0.8918563
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                1.1158620    1.0892577   1.1424664
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.2458162    1.2234286   1.2682037
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8726400    0.8492741   0.8960060
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7743329    0.7496886   0.7989773
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3460254    1.3219492   1.3701016
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7744130    0.7441147   0.8047113
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7517840    0.7366769   0.7668911
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9193223    0.8890926   0.9495520
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8603314    0.8478585   0.8728044
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8779158    0.8632511   0.8925805
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8784860    0.8649197   0.8920522
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8494253    0.8290718   0.8697787
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.9346524    0.9069118   0.9623931
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.8328768    0.8050340   0.8607195
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.9326465    0.8963924   0.9689007
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.7945314    0.7891781   0.7998846
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.8270416    0.8171781   0.8369050
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.8493016    0.8436415   0.8549618
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.8573675    0.8405527   0.8741822


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.5715787   3.5085237   3.6346338
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.5688019   3.4917177   3.6458861
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.8245872   3.7469221   3.9022522
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.3345392   3.2720665   3.3970119
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.4366827   3.3435842   3.5297813
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4719810   3.3940197   3.5499422
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.3130250   3.2580425   3.3680074
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                3.7181837   3.7078402   3.7285271
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9694808   1.9121182   2.0268433
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9877371   1.9066803   2.0687939
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8323273   1.7640304   1.9006242
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8344466   1.7863211   1.8825720
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.7085479   1.6644702   1.7526256
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.9201192   1.9096572   1.9305812
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.2246950   1.1984367   1.2509532
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0017429   0.9644127   1.0390732
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.1689727   1.1465777   1.1913678
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.1695341   1.1470637   1.1920045
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.1071638   1.1004298   1.1138978
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.2031930   1.1927974   1.2135886
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8618683   0.8460858   0.8776508
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7673730   0.7437452   0.7910008
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7493363   0.7349635   0.7637092
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8456379   0.8278807   0.8633951
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.7965813   0.7912633   0.8018992
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.8492084   0.8437753   0.8546415


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.7047847   -0.8012057   -0.6083638
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                  0.8629960    0.7407750    0.9852170
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0933909   -0.0283896    0.2151714
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.1575599    0.0660456    0.2490742
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.1423509   -0.2633242   -0.0213777
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  1.6755426    1.5760845    1.7750008
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.1051405   -0.2108575    0.0005765
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0039167   -0.1100570    0.1178905
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.3379118    0.2761910    0.3996325
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.1331272    0.1002387    0.1660157
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0051606   -0.0675998    0.0779209
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.1594476    0.0096775    0.3092178
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                  0.8537550    0.7675353    0.9399747
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0348644   -0.0632379    0.1329667
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0642811   -0.0402181    0.1687803
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  1.8725819    1.7393128    2.0058509
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.4001553   -1.4935616   -1.3067491
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.2548266    0.1630460    0.3466071
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.1594575   -0.2152683   -0.1036467
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.1495296   -0.2184948   -0.0805644
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.1108780   -0.1930934   -0.0286625
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                  0.0055290   -0.1661715    0.1772296
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0384189    0.0084739    0.0683640
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0136567   -0.1180474    0.1453608
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.1225666   -0.1594313   -0.0857019
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                 -0.7650401   -0.8150203   -0.7150598
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0382404   -0.0067849    0.0832657
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.0982386    0.0459336    0.1505436
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.2289200    0.1784149    0.2794251
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4314496    0.3891138    0.4737854
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.1831186    0.1250771    0.2411600
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.1544322    0.1144590    0.1944055
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0671657    0.0362327    0.0980986
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0693084   -0.1124688   -0.0261481
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0226846   -0.1384658    0.0930966
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0071766   -0.0108060    0.0251592
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0482406    0.0164305    0.0800508
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0034030   -0.0570025    0.0638085
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.3432163    0.3162738    0.3701589
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0577232    0.0275897    0.0878568
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.2463094    0.2091319    0.2834868
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.3731761   -0.4057374   -0.3406148
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.5716925    0.5346927    0.6086922
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0226290   -0.0560530    0.0107950
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0589909   -0.0916336   -0.0263481
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0005702   -0.0189301    0.0200704
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0852271    0.0502754    0.1201789
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0997698    0.0546535    0.1448861
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0325102    0.0218220    0.0431984
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0080659   -0.0097406    0.0258723
