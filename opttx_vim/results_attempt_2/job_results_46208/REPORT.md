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

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             234     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0             124     124
Birth       ki0047075b-MAL-ED          INDIA                          1               0     191
Birth       ki0047075b-MAL-ED          INDIA                          0             191     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               1     168
Birth       ki0047075b-MAL-ED          NEPAL                          0             167     168
Birth       ki0047075b-MAL-ED          PERU                           1               9     247
Birth       ki0047075b-MAL-ED          PERU                           0             238     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             183     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              39     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              27      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           19558   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              35   19593
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             822     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233
6 months    ki0047075b-MAL-ED          PERU                           1              11     259
6 months    ki0047075b-MAL-ED          PERU                           0             248     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             581     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16783   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4824    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226
24 months   ki0047075b-MAL-ED          PERU                           1               7     193
24 months   ki0047075b-MAL-ED          PERU                           0             186     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             427     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             576     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8612    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4746    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4747


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/93f32e8c-c4d7-4a45-8c09-bb2381be5fbf/fb9cf9d0-9758-433e-8bb0-15ede3e684b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.5392755   -1.2751517    0.1966006
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.6872953   -0.9764746   -0.3981159
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7743432   -1.0101881   -0.5384983
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.5972879   -1.6196694   -1.5749065
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -1.1969111   -1.7851013   -0.6087209
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.3991215   -1.6738433   -1.1243997
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2942039   -1.4691585   -1.1192493
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.6196615   -1.6967572   -1.5425658
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.2980678   -1.3229708   -1.2731648
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -1.7351091   -1.8622106   -1.6080077
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.7024989   -1.8757578   -1.5292400
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5073794   -2.7345609   -2.2801979
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.9289648   -2.0496364   -1.8082932
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.2728067   -1.3167156   -1.2288978


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           observed             observed          -0.9306883   -1.048645   -0.8127312
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -0.6819907   -0.814754   -0.5492274
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8810169   -1.086924   -0.6751103
Birth       kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.5750140   -1.594790   -1.5552384
6 months    ki0047075b-MAL-ED   PERU                           observed             observed          -1.3102574   -1.420486   -1.2000288
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.0534375   -1.183632   -0.9232428
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3572358   -1.479663   -1.2348087
6 months    ki1148112-LCNI-5    MALAWI                         observed             observed          -1.6426961   -1.712060   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.3132090   -1.336349   -1.2900693
24 months   ki0047075b-MAL-ED   PERU                           observed             observed          -1.7505440   -1.875506   -1.6255816
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.6248101   -1.760608   -1.4890121
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6089906   -2.743901   -2.4740799
24 months   ki1148112-LCNI-5    MALAWI                         observed             observed          -1.8714634   -1.952856   -1.7900711
24 months   kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -2.0125560   -2.040268   -1.9848436


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.3914127   -1.1155485    0.3327230
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0053045   -0.2576600    0.2682691
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1066738   -0.2627521    0.0494045
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0222739    0.0116869    0.0328609
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -0.1133463   -0.6892630    0.4625705
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.3456840    0.1147559    0.5766121
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0630318   -0.1851295    0.0590659
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0230346   -0.0542037    0.0081345
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.0151411   -0.0243976   -0.0058846
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -0.0154349   -0.0405455    0.0096757
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0776888   -0.0357737    0.1911513
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1016112   -0.2805590    0.0773366
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed           0.0575014   -0.0264829    0.1414857
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.7397493   -0.7839665   -0.6955320
