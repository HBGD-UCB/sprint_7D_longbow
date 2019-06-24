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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              81    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              105    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         76    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    183
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        153    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    203
Birth       ki0047075b-MAL-ED          NEPAL                          0%               13    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        101    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              54    168
Birth       ki0047075b-MAL-ED          PERU                           0%               26    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    279
Birth       ki0047075b-MAL-ED          PERU                           >5%             146    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        152    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         86    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              24    118
Birth       ki1000109-EE               PAKISTAN                       0%                0      1
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1      1
Birth       ki1000109-EE               PAKISTAN                       >5%               0      1
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               9     23
Birth       ki1114097-CMIN             BANGLADESH                     0%                6      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2      8
Birth       ki1114097-CMIN             BRAZIL                         0%                1    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         63    111
Birth       ki1114097-CMIN             BRAZIL                         >5%              47    111
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              162    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        457    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              64    683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki1000109-EE               PAKISTAN                       0%              275    376
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    376
6 months    ki1000109-EE               PAKISTAN                       >5%              21    376
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        338    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        400    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             473    830
6 months    ki1114097-CMIN             PERU                           0%               34    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    636
6 months    ki1114097-CMIN             PERU                           >5%             301    636
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             471   4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1207   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3085   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             443   4735


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/70f31bb8-02a6-4b1f-aa35-ce2d975c59cb/6d78e91b-93e0-4e41-ba72-66243e81de3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4049624   -0.8742884    0.0643635
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3492553   -1.7692296   -0.9292811
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5489533   -0.9274553   -0.1704512
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1274510   -0.5295471    0.2746451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8421384    0.6117611    1.0725157
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2925538   -0.5009290   -0.0841786
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1993357   -0.6627041    1.0613756
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1911498   -0.3861325    0.0038328
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8067032    0.6210894    0.9923170
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2926647    0.1379152    0.4474142
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.5718659   -1.0764936   -0.0672381
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0528803   -0.2728394    0.1670788
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9722036   -1.2772535   -0.6671537
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2597183   -0.6227760    0.1033393
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1438815   -0.2985660    0.0108030
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0300322   -0.2157474    0.1556830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.2198006   -0.1593177    0.5989189
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2448183   -0.4574959   -0.0321408
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.8104981    0.4407891    1.1802070
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.4116079    0.7817578    2.0414581
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3349962   -0.4055138   -0.2644787
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4266885   -1.7205010   -1.1328761
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3299088   -0.8565853    0.1967676
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0139029   -0.6777245    0.7055303
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8388280   -1.0027712   -0.6748848
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8164160   -0.9730305   -0.6598015
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4561783   -0.6740691   -0.2382875
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2713961   -0.4720976   -0.0706947
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7754479    0.6552148    0.8956810
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1938602   -1.2384649   -1.1492554


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0373373   -0.1163695    0.0416948
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1445508   -0.2343737   -0.0547279
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6487715    0.5686942    0.7288488
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5581081   -1.0129127   -0.1033035
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2801420   -0.1162879    0.6765720
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3555110   -0.7265089    0.0154868
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0538668   -0.3432862    0.4510198
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0489181   -0.1696167    0.0717805
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0757624   -0.2674043    0.1158794
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3391317   -1.1913942    0.5131308
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3021950    0.1259327    0.4784573
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2476924    0.1114209    0.3839639
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2243866    0.0689441    0.3798291
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1494107   -0.6367031    0.3378817
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1154814   -0.2539433    0.0229804
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0399543   -0.3311842    0.2512755
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1791918   -0.5413990    0.1830155
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0644890   -0.1963770    0.0673989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0597945   -0.0998005    0.2193895
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3038140   -0.6632637    0.0556357
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.2074810    0.0127545    0.4022074
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1383964   -0.4979522    0.2211595
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3431761   -0.9690987    0.2827465
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0548093   -0.1132327    0.0036142
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.6058631    0.3068626    0.9048635
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0465385   -0.5542176    0.4611406
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0361906   -0.6480455    0.7204266
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0727510   -0.2081251    0.0626230
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0715252   -0.2012035    0.0581531
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1541719   -0.3390219    0.0306780
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1268453   -0.0675737    0.3212644
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1266764   -0.2158445   -0.0375084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0292486   -0.0648306    0.0063334
