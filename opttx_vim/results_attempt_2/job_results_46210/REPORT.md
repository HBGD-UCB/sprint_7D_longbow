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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d61f9d8c-5615-49cf-b015-c6da37ca04e2/8a02a214-53a9-4009-a634-8a19befd95e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9272775   -1.0683513   -0.7862037
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1019575   -1.4572070   -0.7467080
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3958360   -0.7467855   -0.0448865
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2886136   -1.6692629   -0.9079643
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6128409   -1.0202458   -0.2054361
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7699244   -1.5079433   -0.0319056
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5181946   -1.6373578   -1.3990315
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1974306   -1.5914311   -0.8034302
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5940880   -1.0554136   -0.1327623
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1216657   -1.8297179   -0.4136135
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7557391   -2.0415630   -1.4699151
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.2170956   -2.4587553   -1.9754359
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.8330158   -2.3811952   -1.2848363
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6151706   -1.8909835   -1.3393577
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4607718   -1.5855646   -1.3359790
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1690683   -1.3026422   -1.0354944
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1993485   -1.3381389   -1.0605581
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5920790   -1.9165193   -1.2676387
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4171587   -0.5290565   -0.3052608
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3682653   -0.4895152   -0.2470154
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1440979   -0.4512362    0.1630403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3512709   -1.4243656   -1.2781762
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0115660   -2.3103460   -1.7127860
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0189350   -1.4626276   -0.5752424
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6947611   -2.8610925   -2.5284297
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.6710145   -1.7865253   -1.5555038
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6844184   -1.7931306   -1.5757063
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4854432   -1.6164913   -1.3543951
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.3742482   -1.5342030   -1.2142934
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.3716711   -1.5169788   -1.2263633
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7111022   -1.7789027   -1.6433018


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6003317   -0.6767125   -0.5239510
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5996561   -1.6995642   -1.4997481
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5759624   -1.6729826   -1.4789423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1571194   -0.2736253   -0.0406134
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0913264   -0.2417074    0.4243603
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3130658   -0.6207253   -0.0054062
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3563836    0.0024253    0.7103419
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3209802   -0.7057080    0.0637476
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3400756   -0.9384178    0.2582666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0205304   -0.0550509    0.0961117
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0082471   -0.4066006    0.3901064
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0330286   -0.4084704    0.4745277
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2051353   -0.9055127    0.4952421
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3956176    0.1243100    0.6669252
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0166252   -0.2164106    0.2496609
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.4300938   -0.1100344    0.9702220
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2835136   -0.5487860   -0.0182411
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0533897   -0.0363215    0.1431010
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0819642   -0.0241387    0.1880671
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0006702   -0.1230336    0.1243739
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0301782   -0.2659817    0.3263381
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1831731   -0.2749971   -0.0913490
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1449895   -0.2299840   -0.0599950
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1698238   -0.4283147    0.0886672
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0064769   -0.0530117    0.0659654
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0684528   -0.2437337    0.3806394
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2562843   -0.6950514    0.1824829
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0888732   -0.0084298    0.1861762
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5097799   -0.6626451   -0.3569148
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0983006    0.0209499    0.1756513
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0559101   -0.0519713    0.1637915
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2254079   -0.3614176   -0.0893983
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.2042914   -0.3119677   -0.0966150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0471658   -0.1034915    0.0091598
