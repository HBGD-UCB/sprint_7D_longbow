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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            186     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             36     222
Birth       ki0047075b-MAL-ED       BRAZIL                         1            163     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     167
Birth       ki0047075b-MAL-ED       INDIA                          1             90     188
Birth       ki0047075b-MAL-ED       INDIA                          0             98     188
Birth       ki0047075b-MAL-ED       NEPAL                          1            165     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     166
Birth       ki0047075b-MAL-ED       PERU                           1             60     243
Birth       ki0047075b-MAL-ED       PERU                           0            183     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            209     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            109     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             21      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      23
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          10724   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           4965   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            503     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            180     683
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            331     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            554     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1879    4964
6 months    ki1135781-COHORTS       INDIA                          0           3085    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12015   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4758   16773
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1093    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            553     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     903
24 months   ki1135781-COHORTS       GUATEMALA                      0            826     903
24 months   ki1135781-COHORTS       INDIA                          1           1457    3724
24 months   ki1135781-COHORTS       INDIA                          0           2267    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869     993
24 months   ki1148112-LCNI-5        MALAWI                         1              2     556
24 months   ki1148112-LCNI-5        MALAWI                         0            554     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6085    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2508    8593
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3671    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1059    4730


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
![](/tmp/39a425f6-c55a-4398-9b7a-1eb42f2ec208/4192a938-2ae3-4e36-b9bb-fe95f4c24b1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.9659511   -1.3125076   -0.6193946
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.0966348   -1.3103299   -0.8829397
Birth       ki0047075b-MAL-ED       PERU          optimal              observed           0.0094809   -0.1327851    0.1517469
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.5757448   -2.1679327   -0.9835568
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.9597634   -1.1801591   -0.7393676
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.9484460   -1.0098988   -0.8869932
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6358237   -0.7214751   -0.5501722
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.7131842   -0.7377027   -0.6886657
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3483772   -0.4430923   -0.2536621
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.1917461   -0.4171321    0.0336399
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.7820803   -0.9859006   -0.5782600
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           0.9818189    0.7874822    1.1761556
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3364250   -0.4774304   -0.1954196
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.1819276   -0.4689270    0.1050717
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0562095   -0.2034382    0.0910193
6 months    ki1114097-CONTENT       PERU          optimal              observed           1.0740849    0.9519310    1.1962387
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0753301   -0.0704798    0.2211400
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.5976434   -0.6524520   -0.5428347
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.2298722   -0.3840977   -0.0756467
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.5720387   -0.5949935   -0.5490840
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3630619   -0.4058382   -0.3202855
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.7672480   -0.8991810   -0.6353151
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8096945   -0.9940178   -0.6253711
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.0217486   -0.2078045    0.2513017
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8067360   -0.9489115   -0.6645605
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.9431867   -1.2369318   -0.6494416
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.5528872   -0.7897419   -0.3160325
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.5453732    0.2836786    0.8070679
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0140661   -0.1601168    0.1319845
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.5680156   -0.6210129   -0.5150183
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5555390   -0.7044187   -0.4066594
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2731280   -1.3012357   -1.2450203
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.2352290   -1.2805255   -1.1899325


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.0315638   -0.1495606    0.0864330
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.7238913   -0.7437437   -0.7040388
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -0.7004578   -0.8268704   -0.5740452
6 months    ki0047075b-MAL-ED       PERU          observed             observed           1.0376236    0.9141918    1.1610554
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.2080201   -0.2927357   -0.1233045
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed           0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          observed             observed           0.1064286   -0.0147106    0.2275677
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.8896187   -0.9726240   -0.8066134
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         observed             observed          -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.2970418   -1.3203361   -1.2737475
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0242742   -0.3387604    0.2902121
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.0429646   -0.1081326    0.1940618
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0410447   -0.1053339    0.0232446
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed           0.1518162   -0.2104036    0.5140360
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0303201   -0.1431229    0.2037631
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.0287273   -0.0779714    0.0205168
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0482793   -0.0885436   -0.0080151
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0107071   -0.0233062    0.0018921
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0199390   -0.0690847    0.0292066
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0562843   -0.1461221    0.2586907
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed           0.0816225   -0.0585816    0.2218266
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           0.0558047   -0.0951896    0.2067989
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1024851   -0.2153145    0.0103442
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.0260925   -0.3064327    0.2542477
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0898884   -0.0314504    0.2112273
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.0056531   -0.0327054    0.0213993
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0705210   -0.0593106    0.2003526
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1128421   -0.1583528   -0.0673315
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0531564   -0.1961351    0.0898222
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0211089   -0.0328505   -0.0093673
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0270977   -0.0486954   -0.0054999
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0535774   -0.1056579   -0.0014970
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1399722   -0.2708794   -0.0090650
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.0846800   -0.1063961    0.2757561
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1048430   -0.2150524    0.0053663
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed           0.0535680   -0.2376032    0.3447391
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0586834   -0.2780022    0.1606354
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.0214560   -0.2466317    0.2895438
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2721243   -0.4121701   -0.1320785
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.0926718   -0.1346099   -0.0507338
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1008759   -0.2409451    0.0391934
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0239138   -0.0397327   -0.0080950
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0120514   -0.0211959    0.0452987
