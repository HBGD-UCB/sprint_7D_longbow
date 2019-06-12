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

agecat      studyid                    country                        impfloor    n_cell      n
----------  -------------------------  -----------------------------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              205    222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17    222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              165    167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2    167
Birth       ki0047075b-MAL-ED          INDIA                          1              178    188
Birth       ki0047075b-MAL-ED          INDIA                          0               10    188
Birth       ki0047075b-MAL-ED          NEPAL                          1               64    159
Birth       ki0047075b-MAL-ED          NEPAL                          0               95    159
Birth       ki0047075b-MAL-ED          PERU                           1               54    252
Birth       ki0047075b-MAL-ED          PERU                           0              198    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              196    216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               20    216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106    113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71     71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0     71
Birth       ki1000108-IRC              INDIA                          1              253    253
Birth       ki1000108-IRC              INDIA                          0                0    253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24     28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4     28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                5     23
Birth       ki1114097-CONTENT          PERU                           1                2      2
Birth       ki1114097-CONTENT          PERU                           0                0      2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              455   7659
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             7204   7659
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               15    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              170    185
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2    209
6 months    ki0047075b-MAL-ED          INDIA                          1              220    235
6 months    ki0047075b-MAL-ED          INDIA                          0               15    235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103    229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126    229
6 months    ki0047075b-MAL-ED          PERU                           1               58    270
6 months    ki0047075b-MAL-ED          PERU                           0              212    270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20    249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14    245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231    245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257    257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0    257
6 months    ki1000108-IRC              INDIA                          1              304    304
6 months    ki1000108-IRC              INDIA                          0                0    304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              476    534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58    534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               43    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178    715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78    441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363    441
6 months    ki1114097-CONTENT          PERU                           1              201    215
6 months    ki1114097-CONTENT          PERU                           0               14    215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              693   8284
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             7591   8284
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              143   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             1111   1254
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2    169
24 months   ki0047075b-MAL-ED          INDIA                          1              212    227
24 months   ki0047075b-MAL-ED          INDIA                          0               15    227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98    221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123    221
24 months   ki0047075b-MAL-ED          PERU                           1               49    201
24 months   ki0047075b-MAL-ED          PERU                           0              152    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200    212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260    260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0    260
24 months   ki1000108-IRC              INDIA                          1              305    305
24 months   ki1000108-IRC              INDIA                          0                0    305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376    426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50    426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168    514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72    384
24 months   ki1113344-GMS-Nepal        NEPAL                          0              312    384
24 months   ki1114097-CONTENT          PERU                           1              154    164
24 months   ki1114097-CONTENT          PERU                           0               10    164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              325   4265
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             3940   4265
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              146   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             1102   1248


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e41c4602-9f82-4570-98fb-1e0021f66d31/af6179da-e17b-4658-bb15-bc8ee6864be5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8216146   -1.1199544   -0.5232749
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3964575   -1.8849276   -0.9079874
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.8506328   -1.0285043   -0.6727612
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0034303   -0.1293312    0.1224705
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2486343   -0.2733469    0.7706156
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6870249   -0.0149869    1.3890367
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4820715   -1.9045020    0.9403590
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.6041170   -0.7159295   -0.4923044
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.4607900   -1.1253665    0.2037865
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1654077   -0.3219718   -0.0088437
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.7930320   -1.1563161   -0.4297478
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2573495    0.0784141    0.4362849
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.9861208    0.7199199    1.2523217
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4269185    0.1420824    0.7117546
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5337085    0.4003663    0.6670507
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.4117111   -0.5369779   -0.2864442
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1749204   -0.2631002   -0.0867405
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0554366   -0.0359506    0.1468237
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.5480715   -0.8023192   -0.2938239
6 months    ki1114097-CONTENT       PERU                           optimal              observed           1.2118951    0.6564424    1.7673477
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.5121189   -0.5957046   -0.4285333
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.3244000   -0.5514660   -0.0973339
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9839346   -1.1732525   -0.7946168
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9349152   -1.0550985   -0.8147318
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1940999   -0.3672263   -0.0209736
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1384386   -0.1025027    0.3793799
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4367833    0.1094621    0.7641045
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0377739   -0.2441764    0.1686285
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.9266939   -1.0534156   -0.7999723
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8690376   -0.9550178   -0.7830575
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.6326021   -0.7764205   -0.4887837
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.0885531   -1.2562270   -0.9208792
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.8135163    0.2682450    1.3587876
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.2759678   -1.4098881   -1.1420475
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.2819204   -1.3482666   -1.2155743


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9364780   -1.0810831   -0.7918728
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.8080531    0.6030895    1.0130167
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.7650020   -0.7919937   -0.7380102
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5162517    0.3853881    0.6471153
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4362094   -0.5254855   -0.3469333
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -0.6267309   -0.7246812   -0.5287807
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.5889715   -0.6165580   -0.5613850
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3684250   -0.4392750   -0.2975751
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0429953   -0.0825155    0.1685060
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1914974   -1.2943015   -1.0886933
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.2914115   -1.3239489   -1.2588741
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.2302244   -1.2892920   -1.1711567


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1686106   -0.4813820    0.1441609
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.3427873   -0.1138677    0.7994422
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0858452   -0.2076473    0.0359569
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0350617   -0.1041091    0.0339857
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2559491   -0.7614505    0.2495522
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1210282   -0.5343407    0.7763971
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.2687980   -1.5009969    0.9634008
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1608850   -0.2707979   -0.0509721
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed           0.1704116   -0.4481733    0.7889966
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0299459   -0.0611986    0.1210905
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0873653   -0.2725193    0.4472498
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1287178   -0.2662076    0.0087720
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.0666199   -0.1637037    0.2969436
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1134095   -0.1608466    0.3876656
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0174568   -0.0544143    0.0195007
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0244984   -0.1179239    0.0689272
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0334502   -0.0595867   -0.0073136
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0256743   -0.0707027    0.0193541
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0786594   -0.3075531    0.1502343
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1434633   -0.6765274    0.3896009
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0768526   -0.1562895    0.0025843
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0440251   -0.2674796    0.1794294
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1631091    0.0169394    0.3092789
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0173756   -0.0490195    0.0142683
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1546331   -0.2876425   -0.0216238
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0185381   -0.2254878    0.1884116
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0100816   -0.3256487    0.3054855
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0807692   -0.0973311    0.2588695
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0160229   -0.0866026    0.1186484
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0189036   -0.0437156    0.0059085
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0222519   -0.0996125    0.1441164
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.1029443   -0.2540832    0.0481946
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.2466870   -0.7806992    0.2873252
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0154437   -0.1440425    0.1131551
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed           0.0516961    0.0125578    0.0908344
