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

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              205     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     167
Birth       ki0047075b-MAL-ED          INDIA                          1              178     188
Birth       ki0047075b-MAL-ED          INDIA                          0               10     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               64     159
Birth       ki0047075b-MAL-ED          NEPAL                          0               95     159
Birth       ki0047075b-MAL-ED          PERU                           1               54     252
Birth       ki0047075b-MAL-ED          PERU                           0              198     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              196     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                5      23
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              925   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            14741   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               58     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              625     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              304     304
6 months    ki1000108-IRC              INDIA                          0                0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              476     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               43     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0              312     384
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729


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
![](/tmp/537dcb81-dc01-4eb4-bbca-7f8de17d1cd8/345a173a-7498-4217-88d7-8961a8154b58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7972588   -1.0872489   -0.5072686
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1382324   -1.6137633   -0.6627015
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.8889771   -1.0983970   -0.6795572
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0018483   -0.1282505    0.1245540
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2595333   -0.2303635    0.7494301
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5258874    0.2747347    0.7770401
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4903684   -1.9162226    0.9354858
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.6275105   -0.7085340   -0.5464869
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.5750748   -0.8196785   -0.3304711
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1561776   -0.3804757    0.0681206
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.7479383   -1.0935176   -0.4023589
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1132973   -0.0732673    0.2998619
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.1268449    0.9125712    1.3411186
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3990958    0.1194250    0.6787666
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5333576    0.3996641    0.6670511
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.4228624   -0.5499097   -0.2958151
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1864317   -0.2742584   -0.0986050
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0069658   -0.1109889    0.0970574
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.5935528   -0.8218605   -0.3652451
6 months    ki1114097-CONTENT       PERU                           optimal              observed           1.1812306    0.5971689    1.7652923
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.5487133   -0.6318115   -0.4656151
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2393792   -0.3808640   -0.0978944
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8117197   -0.9383350   -0.6851044
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9088661   -1.0300861   -0.7876460
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2278614   -0.4070461   -0.0486766
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1326348   -0.0822524    0.3475219
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4562911    0.0959044    0.8166778
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1847834   -0.0990196    0.4685864
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.9363352   -1.0573545   -0.8153158
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8681079   -0.9542043   -0.7820114
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5125095   -0.6575558   -0.3674632
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.2206562   -1.3742520   -1.0670604
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.7554201    0.2002944    1.3105457
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.1785029   -1.2835385   -1.0734674
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1632855   -1.2921547   -1.0344164


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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.7235197   -0.7433637   -0.7036757
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3901347   -0.4273932   -0.3528762
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
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.2232311   -1.2550891   -1.1913732


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1929664   -0.4993819    0.1134490
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0845622   -0.3586379    0.5277623
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0475009   -0.1856235    0.0906217
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0366438   -0.1066479    0.0333603
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2668481   -0.7417570    0.2080608
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2821657    0.1083377    0.4559937
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.2605012   -1.4929517    0.9719494
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0960093   -0.1743618   -0.0176567
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed           0.2067585   -0.0230858    0.4366029
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0207158   -0.1585346    0.1999661
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0422716   -0.3004687    0.3850118
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0153344   -0.1198953    0.1505641
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0741041   -0.2497522    0.1015439
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1412322   -0.1208061    0.4032704
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0171059   -0.0539068    0.0196950
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0133470   -0.1036478    0.0769538
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0219388   -0.0456818    0.0018041
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0367280   -0.0258137    0.0992698
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0331781   -0.2391159    0.1727597
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1127988   -0.6737385    0.4481408
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0439587   -0.1260522    0.0381348
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1507555   -0.2883335   -0.0131774
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0091058   -0.0472869    0.0290754
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0434247   -0.0997729    0.0129236
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1208717   -0.2585009    0.0167575
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0127343   -0.1926777    0.1672092
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0295894   -0.3786352    0.3194563
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1417881   -0.4080088    0.1244326
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0256642   -0.0685599    0.1198882
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0198333   -0.0454868    0.0058202
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0978407   -0.2148536    0.0191722
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed           0.0291588   -0.1053768    0.1636944
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.1885908   -0.7332959    0.3561143
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1185390   -0.2201266   -0.0169515
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0599456   -0.1841640    0.0642728
