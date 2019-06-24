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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
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
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752


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
![](/tmp/4fec0c2f-3047-49c4-92ba-1a86fcd010f9/f4894603-b1fc-4585-ac41-3aa20884711c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0533395   -1.3149059   -0.7917731
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2105885   -1.5934655   -0.8277116
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1739387   -1.7189630   -0.6289145
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8711405   -1.4251441   -0.3171369
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6325228   -1.0351167   -0.2299289
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7892271   -1.4806842   -0.0977701
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5345565   -1.6514612   -1.4176518
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3623670   -1.6865938   -1.0381402
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7075106   -1.1316075   -0.2834137
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3331489   -1.8392561   -0.8270417
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7016046   -2.0611076   -1.3421015
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0622731   -2.2954759   -1.8290704
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.8087812   -2.6479272   -0.9696352
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6607578   -1.9478232   -1.3736924
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5023162   -1.6321888   -1.3724437
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1793078   -1.3079896   -1.0506261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2131074   -1.3577582   -1.0684566
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4060211   -1.6355626   -1.1764797
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4205136   -0.5320444   -0.3089828
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3687615   -0.4905875   -0.2469355
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1429512   -0.4458291    0.1599267
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3502805   -1.4232676   -1.2772935
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6996958   -2.3121314   -1.0872602
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0309806   -1.4996156   -0.5623456
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6474018   -2.8216471   -2.4731564
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.6434748   -1.7532247   -1.5337248
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5682989   -1.6663611   -1.4702367
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4382105   -1.5908435   -1.2855776
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.3838560   -1.5467392   -1.2209727
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.3786895   -1.5232623   -1.2341168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7094391   -1.7775267   -1.6413515


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0310574   -0.2647550    0.2026402
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1999575   -0.1723854    0.5723004
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4650370   -0.0346049    0.9646790
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0610895   -0.5833132    0.4611343
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3012983   -0.6810132    0.0784165
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3207729   -0.8772127    0.2356669
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0368923   -0.0376105    0.1113951
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1566893   -0.1781532    0.4915317
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1464513   -0.2552305    0.5481331
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0063479   -0.4961302    0.5088260
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3414831    0.0035091    0.6794571
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1381973   -0.3590901    0.0826955
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.4058592   -0.4092941    1.2210125
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2379264   -0.5148267    0.0389738
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0949342    0.0000675    0.1898009
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0922038   -0.0068517    0.1912593
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0144291   -0.1127714    0.1416296
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1558797   -0.3630096    0.0512503
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1798181   -0.2713767   -0.0882596
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1444933   -0.2293838   -0.0596029
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1709705   -0.4261467    0.0842057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0054865   -0.0536547    0.0646277
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2434174   -0.8550394    0.3682046
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2442387   -0.7066977    0.2182203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0415139   -0.0675765    0.1506044
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5373197   -0.6859524   -0.3886870
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0178190   -0.0763847    0.0407468
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0086774   -0.1158494    0.1332043
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2158002   -0.3543589   -0.0772415
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1972729   -0.3046048   -0.0899410
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0488290   -0.1053096    0.0076515
