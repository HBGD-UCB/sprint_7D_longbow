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

**Intervention Variable:** impsan

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
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell      n
----------  ----------------------  -----------------------------  -------  -------  -----
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            186    222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             36    222
Birth       ki0047075b-MAL-ED       BRAZIL                         1            163    167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4    167
Birth       ki0047075b-MAL-ED       INDIA                          1             90    188
Birth       ki0047075b-MAL-ED       INDIA                          0             98    188
Birth       ki0047075b-MAL-ED       NEPAL                          1            165    166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1    166
Birth       ki0047075b-MAL-ED       PERU                           1             60    243
Birth       ki0047075b-MAL-ED       PERU                           0            183    243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2    211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            209    211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            109    109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9     28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19     28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             21     23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2     23
Birth       ki1114097-CONTENT       PERU                           1              1      2
Birth       ki1114097-CONTENT       PERU                           0              1      2
Birth       ki1135781-COHORTS       GUATEMALA                      1             13    208
Birth       ki1135781-COHORTS       GUATEMALA                      0            195    208
Birth       ki1135781-COHORTS       INDIA                          1           1685   4461
Birth       ki1135781-COHORTS       INDIA                          0           2776   4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177   1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949   1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1           5300   7675
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           2375   7675
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            131    185
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0             54    185
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202    240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38    240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205    209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4    209
6 months    ki0047075b-MAL-ED       INDIA                          1            108    233
6 months    ki0047075b-MAL-ED       INDIA                          0            125    233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235    236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1    236
6 months    ki0047075b-MAL-ED       PERU                           1             65    263
6 months    ki0047075b-MAL-ED       PERU                           0            198    263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240    244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238    238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205    536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            331    536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            554    580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26    580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615    704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89    704
6 months    ki1114097-CONTENT       PERU                           1            201    215
6 months    ki1114097-CONTENT       PERU                           0             14    215
6 months    ki1135781-COHORTS       GUATEMALA                      1             20    313
6 months    ki1135781-COHORTS       GUATEMALA                      0            293    313
6 months    ki1135781-COHORTS       INDIA                          1           1879   4964
6 months    ki1135781-COHORTS       INDIA                          0           3085   4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143   1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940   1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3    812
6 months    ki1148112-LCNI-5        MALAWI                         0            809    812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1           5974   8302
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           2328   8302
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1            961   1254
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0            293   1254
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181    212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31    212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166    169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3    169
24 months   ki0047075b-MAL-ED       INDIA                          1            104    225
24 months   ki0047075b-MAL-ED       INDIA                          0            121    225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227    228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1    228
24 months   ki0047075b-MAL-ED       PERU                           1             47    196
24 months   ki0047075b-MAL-ED       PERU                           0            149    196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231    235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207    207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170    428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258    428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            553    577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24    577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433    503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70    503
24 months   ki1114097-CONTENT       PERU                           1            151    164
24 months   ki1114097-CONTENT       PERU                           0             13    164
24 months   ki1135781-COHORTS       GUATEMALA                      1             25    431
24 months   ki1135781-COHORTS       GUATEMALA                      0            406    431
24 months   ki1135781-COHORTS       INDIA                          1           1457   3724
24 months   ki1135781-COHORTS       INDIA                          0           2267   3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124    993
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869    993
24 months   ki1148112-LCNI-5        MALAWI                         1              2    556
24 months   ki1148112-LCNI-5        MALAWI                         0            554    556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           3032   4276
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           1244   4276
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1            955   1248
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0            293   1248


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6c4cadbb-4cde-42c8-b759-35a3b5229990/a486f012-8b1b-441d-a82b-9eeb39b51aec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.9044476   -1.2414585   -0.5674367
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.0796855   -1.2976137   -0.8617572
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0000905   -0.1425674    0.1423864
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.6136772   -2.1699879   -1.0573666
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.5179057   -0.7677627   -0.2680486
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.9516544   -1.0136205   -0.8896884
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6474610   -0.7284378   -0.5664843
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.7617201   -0.7968814   -0.7265589
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.2093450   -0.4092352   -0.0094548
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.5294708   -0.7237562   -0.3351854
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.6566105   -0.8385399   -0.4746811
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           1.1106965    0.9100287    1.3113643
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3424707   -0.4839248   -0.2010166
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.3482352   -0.7082680    0.0117976
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0257416   -0.1935089    0.1420257
6 months    ki1114097-CONTENT       PERU          optimal              observed           1.0304371    0.9065707    1.1543035
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.1992800   -0.2878169    0.6863770
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.5881893   -0.6434248   -0.5329538
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.2363513   -0.3931135   -0.0795890
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.5663993   -0.5994406   -0.5333580
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3161001   -0.3932651   -0.2389350
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.7559922   -0.8883493   -0.6236350
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8093678   -0.9892410   -0.6294947
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -0.1132842   -0.3471130    0.1205446
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.7813046   -0.9232514   -0.6393578
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.9649998   -1.3820472   -0.5479524
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.4638995   -0.6713455   -0.2564534
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.6237004    0.3169270    0.9304737
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.3206651   -0.6520738    0.0107437
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.5755189   -0.6289398   -0.5220979
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5402872   -0.6739988   -0.4065756
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2670834   -1.3081357   -1.2260310
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.2319154   -1.3015069   -1.1623238


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.0315638   -0.1495606    0.0864330
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -1.1925000   -1.3898040   -0.9951960
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.7660651   -0.7930357   -0.7390946
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -0.7004578   -0.8268704   -0.5740452
6 months    ki0047075b-MAL-ED       PERU          observed             observed           1.0376236    0.9141918    1.1610554
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.2080201   -0.2927357   -0.1233045
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed          -0.0267093   -0.1562187    0.1028002
6 months    ki1135781-COHORTS       INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.5891544   -0.6166626   -0.5616463
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3684250   -0.4392750   -0.2975751
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          observed             observed           0.1064286   -0.0147106    0.2275677
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.8896187   -0.9726240   -0.8066134
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -0.5737819   -0.6582809   -0.4892829
24 months   ki1135781-COHORTS       INDIA         observed             observed          -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.2911038   -1.3236793   -1.2585284
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.2302244   -1.2892920   -1.1711567


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0857776   -0.3885566    0.2170014
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.0260153   -0.1352517    0.1872822
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0314733   -0.0951084    0.0321619
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed           0.1897486   -0.1320048    0.5115021
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.6745943   -0.8914090   -0.4577797
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.0255188   -0.0752845    0.0242468
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0366420   -0.0704282   -0.0028558
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0043450   -0.0240368    0.0153467
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0810334   -0.1834774    0.0214107
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.3940090    0.2126404    0.5753777
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.0438473   -0.1858271    0.0981325
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -0.0730729   -0.2317153    0.0855694
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0964394   -0.2097146    0.0168358
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed           0.1402151   -0.2093733    0.4898035
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0594205   -0.0823926    0.2012337
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.0379947    0.0005668    0.0754225
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2259893   -0.7029740    0.2509954
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1222962   -0.1682296   -0.0763629
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0466773   -0.1916388    0.0982842
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0227551   -0.0394040   -0.0061062
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0523250   -0.0961255   -0.0085244
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0648333   -0.1208377   -0.0088289
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1402988   -0.2674406   -0.0131571
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.2197128    0.0181044    0.4213211
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1302745   -0.2365118   -0.0240371
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed           0.0753811   -0.3327096    0.4834718
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1476711   -0.3338810    0.0385388
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0568711   -0.3557180    0.2419759
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2531168   -0.5817711    0.0755374
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.0851686   -0.1270903   -0.0432468
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1161277   -0.2413878    0.0091324
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0240205   -0.0460891   -0.0019518
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0016910   -0.0312464    0.0346284
