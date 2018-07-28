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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        impfloor    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       16     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      180     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       36     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      178     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1       43     240
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      106     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       89     212
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0      155     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1       17     174
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      201     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        6     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        6     169
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        9     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        1     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      152     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       29     191
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       11     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      179     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       41     235
24 months   ki0047075b-MAL-ED          INDIA                          0                 0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      124     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       88     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      121     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       91     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       32     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       82     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       16     221
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       91     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        7     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       56     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1       10     164
Birth       ki0047075b-MAL-ED          PERU                           0                 0      182     259
Birth       ki0047075b-MAL-ED          PERU                           0                 1       21     259
Birth       ki0047075b-MAL-ED          PERU                           1                 0       46     259
Birth       ki0047075b-MAL-ED          PERU                           1                 1       10     259
6 months    ki0047075b-MAL-ED          PERU                           0                 0      172     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1       40     270
6 months    ki0047075b-MAL-ED          PERU                           1                 0       38     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1       20     270
24 months   ki0047075b-MAL-ED          PERU                           0                 0       95     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1       57     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       32     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1       17     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      176     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       21     218
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       16     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      184     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       45     249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      142     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       78     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       94     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       15     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        7     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      175     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       56     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     245
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       58     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1      142     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        3     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      170     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       87     257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       80     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      180     260
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       58      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13      71
6 months    ki1000108-IRC              INDIA                          1                 0      235     303
6 months    ki1000108-IRC              INDIA                          1                 1       68     303
24 months   ki1000108-IRC              INDIA                          1                 0      190     305
24 months   ki1000108-IRC              INDIA                          1                 1      115     305
Birth       ki1000108-IRC              INDIA                          1                 0      255     287
Birth       ki1000108-IRC              INDIA                          1                 1       32     287
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       31     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       27     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      361     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1      116     535
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       12     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       38     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      177     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      200     427
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        1      28
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       15     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      460     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       79     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       23     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      364     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      168     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        3      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       36     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      423     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      114     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       46     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       86     514
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      285     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       68     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       10     441
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      176     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      137     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       48     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       24     385
6 months    ki1114097-CONTENT          PERU                           0                 0       12     215
6 months    ki1114097-CONTENT          PERU                           0                 1        2     215
6 months    ki1114097-CONTENT          PERU                           1                 0      184     215
6 months    ki1114097-CONTENT          PERU                           1                 1       17     215
24 months   ki1114097-CONTENT          PERU                           0                 0        7     164
24 months   ki1114097-CONTENT          PERU                           0                 1        3     164
24 months   ki1114097-CONTENT          PERU                           1                 0      136     164
24 months   ki1114097-CONTENT          PERU                           1                 1       18     164
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    12429   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1     6058   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0      808   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      268   19563
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11289   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4019   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1267   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      198   16773
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3903    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4032    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      482    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      192    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2463    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1717    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      421    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      145    4746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3113    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1121    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      494    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1       96    4824
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      529     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1      222     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       46     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       25     822


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         stunted
## impfloor   0   1
##        0   0   0
##        1  80 180
##         stunted
## impfloor   0   1
##        0   0   0
##        1 190 115
##         stunted
## impfloor   0   1
##        0   0   0
##        1 170  87
##         stunted
## impfloor   0   1
##        0   0   0
##        1 235  68
##         stunted
## impfloor  0  1
##        0  0  0
##        1 58 13
##         stunted
## impfloor   0   1
##        0   0   0
##        1 255  32
```




# Results Detail

## Results Plots
![](/tmp/6e0509c8-4c76-44ad-802e-3bde306f5a3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6e0509c8-4c76-44ad-802e-3bde306f5a3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6e0509c8-4c76-44ad-802e-3bde306f5a3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6e0509c8-4c76-44ad-802e-3bde306f5a3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                0.1028806   0.0546493   0.1511119
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                0.2778790   0.2007210   0.3550371
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.1034313   0.0628467   0.1440159
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.1752880   0.1012795   0.2492965
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3242438   0.3164594   0.3320282
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2853992   0.2583618   0.3124365
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2934520   0.2569408   0.3299633
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2144505   0.1403394   0.2885615
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0405074   0.0064484   0.0745664
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0565227   0.0117140   0.1013313
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1961369   0.1462003   0.2460736
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.3825584   0.3128918   0.4522250
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.2141511   0.1464535   0.2818486
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2412917   0.2034594   0.2791240
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3547294   0.2782574   0.4312013
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1478504   0.1182137   0.1774870
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2836382   0.2371454   0.3301310
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2191111   0.1858198   0.2524024
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2217214   0.1803433   0.2630996
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1899224   0.1347720   0.2450728
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2561607   0.2478762   0.2644453
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1694587   0.1490772   0.1898403
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2628001   0.2475716   0.2780287
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1632740   0.1233773   0.2031707
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.4641604   0.2435815   0.6847393
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4621053   0.3922877   0.5319228
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.9532209   0.8989641   1.0074778
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4207655   0.3555403   0.4859907
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2763637   0.2071006   0.3456268
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1572659   0.0985908   0.2159410
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3275325   0.2551666   0.3998983
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.1051571   0.0290000   0.1813143
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.7748011   0.7133061   0.8362961
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3582353   0.2961899   0.4202807
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.8039622   0.7224559   0.8854686
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5357112   0.4859950   0.5854275
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.7032660   0.6241976   0.7823344
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3206212   0.2814180   0.3598245
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.3375203   0.2820532   0.3929873
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2564540   0.2134645   0.2994436
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4301255   0.3769104   0.4833406
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.3914351   0.3184101   0.4644600
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.4989117   0.4856869   0.5121364
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.3860276   0.3483168   0.4237385
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4082062   0.3906169   0.4257956
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3120102   0.2524013   0.3716192


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1036585   0.0568642   0.1504529
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                0.1196911   0.0800828   0.1592995
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3233655   0.3156750   0.3310561
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1995465   0.1622033   0.2368897
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514160   0.2432636   0.2595684
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2522803   0.2382170   0.2663435
24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2171946   0.1627082   0.2716810
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5573770   0.5102104   0.6045437
24 months   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4181818   0.3688464   0.4675172
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4906493   0.4775353   0.5037634
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3923304   0.3753233   0.4093375


### Parameter: RR


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL          1                    0                 2.7009861   1.5704970   4.6452339
Birth       ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU           1                    0                 1.6947288   0.9741010   2.9484680
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.8801994   0.7986345   0.9700945
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.7307853   0.5066541   1.0540667
6 months    ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          1                    0                 1.3953667   0.4424526   4.4005801
6 months    ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           1                    0                 1.9504661   1.4360294   2.6491924
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    0                 1.1267360   0.7965467   1.5937972
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.4167976   0.3128504   0.5552823
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.7725021   0.6193307   0.9635553
6 months    ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          1                    0                 0.8565811   0.6063390   1.2101008
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.6615329   0.5852151   0.7478033
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6212859   0.4831471   0.7989205
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    0                 0.9955723   0.6080635   1.6300341
24 months   ki0047075b-MAL-ED       INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          1                    0                 0.4414145   0.3743839   0.5204464
24 months   ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          1                    0                 0.5690541   0.3695480   0.8762666
24 months   ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           1                    0                 0.3210586   0.1500665   0.6868864
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.4623578   0.3857959   0.5541134
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.6663388   0.5832347   0.7612843
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.4559032   0.3868049   0.5373451
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.7598182   0.6053143   0.9537587
24 months   ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          1                    0                 0.9100485   0.7295754   1.1351647
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.7737395   0.6996292   0.8557000
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.7643446   0.6297542   0.9276995


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0007779   -0.0386270    0.0401828
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.0162598   -0.0055461    0.0380658
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0008783   -0.0026333    0.0008768
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0070346   -0.0051686    0.0192377
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0075275   -0.0177254    0.0327805
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.0260853   -0.0015126    0.0536832
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                 0.0531387   -0.0101289    0.1164062
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1934944   -0.2642931   -0.1226957
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0738480   -0.1145414   -0.0331545
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0221749   -0.0378033   -0.0065466
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0047447   -0.0065359   -0.0029536
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0105198   -0.0157483   -0.0052914
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.0018963   -0.2123181    0.2085255
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -0.5347187   -0.6085239   -0.4609136
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0591691   -0.0995812   -0.0187570
24 months   ki0047075b-MAL-ED       PERU           0                    NA                 0.0406267    0.0046689    0.0765846
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.4218599   -0.4919823   -0.3517376
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.2465852   -0.3269505   -0.1662199
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.3739766   -0.4509857   -0.2969674
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0807109   -0.1252335   -0.0361883
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0119437   -0.0337728    0.0098855
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0082623   -0.0114812   -0.0050435
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0158759   -0.0220203   -0.0097314


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0075049   -0.4538059    0.3224360
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.1358483   -0.0609872    0.2961667
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0027160   -0.0081625    0.0027012
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0234106   -0.0178858    0.0630316
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.1567095   -0.5575842    0.5434348
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.1173839   -0.0109748    0.2294455
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                 0.1988054   -0.0722187    0.4013230
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -1.2000770   -1.7550254   -0.7569126
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.3520087   -0.5767548   -0.1592972
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.1111267   -0.1938184   -0.0341627
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0188721   -0.0260696   -0.0117251
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0416991   -0.0626549   -0.0211564
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.0041022   -0.5800172    0.3618923
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -1.2776963   -1.6486266   -0.9587135
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.2724246   -0.4835677   -0.0913316
24 months   ki0047075b-MAL-ED       PERU           0                    NA                 0.1103510    0.0072634    0.2027338
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -1.1952698   -1.5844071   -0.8647254
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.4424028   -0.6098462   -0.2923756
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -1.1357077   -1.4466646   -0.8642717
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.3142834   -0.5115885   -0.1427322
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0285610   -0.0823517    0.0225565
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0168396   -0.0234764   -0.0102459
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0404655   -0.0564933   -0.0246809
