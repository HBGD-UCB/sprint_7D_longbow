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
* W_mage
* meducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              81    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    241
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         76    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              105    183
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        153    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    203
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    203
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        101    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              54    168
Birth       ki0047075b-MAL-ED          NEPAL                          0%               13    168
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    279
Birth       ki0047075b-MAL-ED          PERU                           >5%             146    279
Birth       ki0047075b-MAL-ED          PERU                           0%               26    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        152    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         86    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              24    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    118
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1      1
Birth       ki1000109-EE               PAKISTAN                       >5%               0      1
Birth       ki1000109-EE               PAKISTAN                       0%                0      1
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      5
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               9     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                4     23
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2      8
Birth       ki1114097-CMIN             BANGLADESH                     0%                6      8
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         63    111
Birth       ki1114097-CMIN             BRAZIL                         >5%              47    111
Birth       ki1114097-CMIN             BRAZIL                         0%                1    111
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        126    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              14    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               45    185
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
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    376
6 months    ki1000109-EE               PAKISTAN                       >5%              21    376
6 months    ki1000109-EE               PAKISTAN                       0%              275    376
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0     97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%              26     97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               71     97
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        338    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        400    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             473    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    830
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    636
6 months    ki1114097-CMIN             PERU                           >5%             301    636
6 months    ki1114097-CMIN             PERU                           0%               34    636
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        807   1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             137   1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              312   1256
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        821   1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             131   1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              297   1249


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/762879b3-a5e4-407c-8830-5f587f497eb6/684fc874-a554-4c73-97c1-849b55af06a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.5170672   -0.9195549   -0.1145795
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.2589010   -1.6381228   -0.8796793
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.1322720   -1.8307688   -0.4337752
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1652341   -0.5373921    0.2069239
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6269500    0.2853104    0.9685897
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.1250824   -0.8667153    0.6165505
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.2374714   -0.9566131    0.4816703
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0283747   -0.2581154    0.2013660
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.8168769    0.6448420    0.9889118
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4607804    0.2632764    0.6582844
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.5175361   -0.9825751   -0.0524971
6 months    ki1000109-ResPak          PAKISTAN                       optimal              observed          -0.0422854   -0.2634919    0.1789210
6 months    ki1017093-NIH-Birth       BANGLADESH                     optimal              observed          -0.2646825   -0.5848816    0.0555167
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.2224249   -0.4338827   -0.0109671
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1408576   -0.2947898    0.0130747
6 months    ki1112895-Guatemala BSC   GUATEMALA                      optimal              observed           0.2136845   -0.1797127    0.6070818
6 months    ki1114097-CMIN            GUINEA-BISSAU                  optimal              observed          -0.1692978   -0.4540631    0.1154676
6 months    ki1114097-CMIN            PERU                           optimal              observed           0.8006043    0.4390474    1.1621612
6 months    ki1114097-CONTENT         PERU                           optimal              observed           1.4094411    0.7770593    2.0418230
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.3828508   -0.4975982   -0.2681035
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.4275647   -1.7291160   -1.1260134
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1574297   -0.7696054    0.4547460
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2792560   -0.7201707    0.1616588
24 months   ki1017093-NIH-Birth       BANGLADESH                     optimal              observed          -0.9548886   -1.1572856   -0.7524915
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8155445   -0.9716566   -0.6594325
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.4469062   -0.6682093   -0.2256030
24 months   ki1114097-CMIN            GUINEA-BISSAU                  optimal              observed          -0.0264814   -0.2266669    0.1737042
24 months   ki1114097-CMIN            PERU                           optimal              observed           0.7776732    0.6581772    0.8971693
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.2055337   -1.2725938   -1.1384737


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak          PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth       BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC   GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN            GUINEA-BISSAU                  observed             observed          -0.0373373   -0.1163695    0.0416948
6 months    ki1114097-CMIN            PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT         PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3688177   -0.4396618   -0.2979735
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth       BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN            GUINEA-BISSAU                  observed             observed          -0.1445508   -0.2343737   -0.0547279
24 months   ki1114097-CMIN            PERU                           observed             observed           0.6487715    0.5686942    0.7288488
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2294796   -1.2885986   -1.1703606


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.4460033   -0.8334576   -0.0585491
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed           0.1897877   -0.1555719    0.5351474
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.2278077   -0.4365131    0.8921286
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0916499   -0.2690713    0.4523711
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1662703   -0.0565881    0.3891287
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.1652959   -0.8790649    0.5484730
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0976754   -0.6162544    0.8116053
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1394199   -0.0733985    0.3522382
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.2375187    0.1041839    0.3708535
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0562709   -0.1314787    0.2440204
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.2037405   -0.6573355    0.2498545
6 months    ki1000109-ResPak          PAKISTAN                       optimal              observed          -0.1260763   -0.2653316    0.0131790
6 months    ki1017093-NIH-Birth       BANGLADESH                     optimal              observed          -0.1742277   -0.4973921    0.1489368
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed           0.0140543   -0.1887901    0.2168988
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.1706198    0.0321742    0.3090654
6 months    ki1112895-Guatemala BSC   GUATEMALA                      optimal              observed          -0.2976979   -0.6687480    0.0733522
6 months    ki1114097-CMIN            GUINEA-BISSAU                  optimal              observed           0.1319604   -0.1356896    0.3996104
6 months    ki1114097-CMIN            PERU                           optimal              observed          -0.1285026   -0.4796348    0.2226296
6 months    ki1114097-CONTENT         PERU                           optimal              observed          -0.3410094   -0.9694296    0.2874109
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0140332   -0.0812069    0.1092733
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.6067392    0.3058418    0.9076367
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2190177   -0.8106252    0.3725898
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3293494   -0.1133293    0.7720282
24 months   ki1017093-NIH-Birth       BANGLADESH                     optimal              observed           0.0433095   -0.1351338    0.2217528
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0723967   -0.2017088    0.0569154
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1634440   -0.3505040    0.0236159
24 months   ki1114097-CMIN            GUINEA-BISSAU                  optimal              observed          -0.1180694   -0.3114879    0.0753490
24 months   ki1114097-CMIN            PERU                           optimal              observed          -0.1289017   -0.2175423   -0.0402612
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0239459   -0.0643481    0.0164563
