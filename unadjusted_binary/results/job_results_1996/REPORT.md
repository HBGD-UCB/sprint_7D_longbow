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
      W: []
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

unadjusted

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
![](/tmp/f98fd234-a0c9-4b1a-9354-343f89d6da50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f98fd234-a0c9-4b1a-9354-343f89d6da50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f98fd234-a0c9-4b1a-9354-343f89d6da50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f98fd234-a0c9-4b1a-9354-343f89d6da50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                0.0714286   0.0202831   0.1225740
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                0.1515152   0.0647482   0.2382821
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.1034483   0.0614734   0.1454232
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.1785714   0.0780670   0.2790758
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3276897   0.3198221   0.3355574
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2490706   0.2175285   0.2806128
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2956059   0.2588175   0.3323942
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3521127   0.2233760   0.4808494
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1886792   0.1359144   0.2414440
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.3448276   0.2222761   0.4673791
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.4655172   0.3370255   0.5940089
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2431866   0.2046512   0.2817219
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3409091   0.2007290   0.4810892
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1465677   0.1166843   0.1764511
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2022472   0.1431975   0.2612969
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2122905   0.1776796   0.2469014
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2148760   0.1725750   0.2571771
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1282051   0.0539283   0.2024820
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2625425   0.2541433   0.2709416
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1351536   0.1169667   0.1533405
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2647615   0.2497302   0.2797927
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1627119   0.1268367   0.1985870
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4564103   0.3863340   0.5264865
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.4666667   0.2136414   0.7196920
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4150943   0.3486198   0.4815689
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2601626   0.1824537   0.3378715
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1632653   0.0899220   0.2366086
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3750000   0.2978448   0.4521552
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.3469388   0.2133295   0.4805480
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7600000   0.6414819   0.8785181
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5305040   0.4800673   0.5809407
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4888889   0.3427111   0.6350666
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3157895   0.2762562   0.3553227
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2738095   0.2063154   0.3413036
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2485549   0.2029730   0.2941368
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4376997   0.3826680   0.4927314
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.3333333   0.2243048   0.4423619
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.5081285   0.4948788   0.5213782
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2848665   0.2425763   0.3271567
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4107656   0.3930784   0.4284527
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2561837   0.2142402   0.2981273


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
Birth       ki0047075b-MAL-ED       NEPAL          1                    0                 2.1212121   0.8479942   5.3060989
Birth       ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU           1                    0                 1.7261905   0.8624997   3.4547645
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.7600807   0.6684550   0.8642656
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    0                 1.1911559   0.8104552   1.7506860
6 months    ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          1                    0                 1.4679612   0.4599809   4.6847810
6 months    ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           1                    0                 1.8275862   1.1627211   2.8726333
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.5224008   0.3799974   0.7181696
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.4299320   0.2716892   0.6803417
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 1.0496586   0.7513087   1.4664854
6 months    ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          1                    0                 0.5966469   0.3235757   1.1001678
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.5147875   0.4496533   0.5893568
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6145602   0.4899760   0.7708220
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    0                 0.8621083   0.5362669   1.3859341
24 months   ki0047075b-MAL-ED       INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          1                    0                 0.8894879   0.5053713   1.5655592
24 months   ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          1                    0                 0.6275510   0.3658996   1.0763071
24 months   ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           1                    0                 0.9251701   0.5978580   1.4316771
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 1.0636364   0.5395896   2.0966346
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.6980316   0.5815072   0.8379054
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.6459330   0.4671012   0.8932314
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.9077658   0.6676414   1.2342534
24 months   ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          1                    0                 0.7615572   0.5364359   1.0811532
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.5606189   0.4830670   0.6506211
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6236739   0.5286938   0.7357171


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0322300   -0.0087493    0.0732093
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.0162428   -0.0076073    0.0400930
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0043242   -0.0060818   -0.0025666
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0048808   -0.0066657    0.0164272
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.0083524   -0.0172062    0.0339110
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.0335430    0.0038739    0.0632121
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1982275   -0.3179740   -0.0784810
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1796741   -0.3122524   -0.0470958
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.0075430   -0.0438638    0.0589499
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0153295   -0.0307606    0.0001015
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0111265   -0.0129778   -0.0092752
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0124812   -0.0174543   -0.0075081
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.0671476   -0.2952210    0.1609257
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -0.0481645   -0.2924947    0.1961658
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0429680   -0.0907766    0.0048405
24 months   ki0047075b-MAL-ED       PERU           0                    NA                -0.0068408   -0.0444900    0.0308084
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                 0.0196078   -0.1904476    0.2296633
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.2026230   -0.3165600   -0.0886859
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1595995   -0.2992702   -0.0199287
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0170002   -0.0718341    0.0378337
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0195179   -0.0427176    0.0036819
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0174792   -0.0209716   -0.0139869
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0184352   -0.0240843   -0.0127860


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                 0.3109244   -0.1853733    0.5994298
Birth       ki0047075b-MAL-ED       PERU           0                    NA                 0.1357063   -0.0834880    0.3105567
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0133725   -0.0188357   -0.0079385
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                 0.0162429   -0.0228835    0.0538726
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                 0.1738817   -0.5565077    0.5615367
6 months    ki0047075b-MAL-ED       PERU           0                    NA                 0.1509434    0.0089504    0.2725923
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.7416204   -1.2567452   -0.3440781
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -1.1143617   -2.1122560   -0.4364260
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.0359551   -0.2430076    0.2523114
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0768219   -0.1563294   -0.0027813
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0442553   -0.0517536   -0.0368105
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0494735   -0.0694995   -0.0298225
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                -0.1452581   -0.7626498    0.2558839
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                -0.1150877   -0.8825801    0.3395125
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.1978320   -0.4372112    0.0016767
24 months   ki0047075b-MAL-ED       PERU           0                    NA                -0.0185811   -0.1261656    0.0787257
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                 0.0555556   -0.7735984    0.4970816
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.3635294   -0.5905348   -0.1689228
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.4846784   -0.9779204   -0.1144381
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0661977   -0.3025279    0.1272528
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0466731   -0.1037925    0.0074904
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0356247   -0.0429197   -0.0283806
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0469889   -0.0617210   -0.0324612
