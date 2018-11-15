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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    swasted   n_cell      n
----------  -------------------------  -------------  --------  --------  -------  -----
Birth       ki0047075b-MAL-ED          PERU           0                0        1      2
Birth       ki0047075b-MAL-ED          PERU           0                1        0      2
Birth       ki0047075b-MAL-ED          PERU           1                0        1      2
Birth       ki0047075b-MAL-ED          PERU           1                1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       47     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1        4     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       36     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        1     88
Birth       ki1000108-IRC              INDIA          0                0      113    337
Birth       ki1000108-IRC              INDIA          0                1       26    337
Birth       ki1000108-IRC              INDIA          1                0      172    337
Birth       ki1000108-IRC              INDIA          1                1       26    337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0        6     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1        0     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0       10     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1        1     17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      199    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1        7    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      157    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1        5    368
6 months    ki1000108-IRC              INDIA          0                0      161    398
6 months    ki1000108-IRC              INDIA          0                1        8    398
6 months    ki1000108-IRC              INDIA          1                0      215    398
6 months    ki1000108-IRC              INDIA          1                1       14    398
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0       99    582
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1        2    582
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      478    582
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1        3    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      216    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1        0    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      329    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1        0    545
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      982   1008
6 months    ki1113344-GMS-Nepal        NEPAL          0                1       10   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                0       16   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   1008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      206    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1        3    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      163    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1        0    372
24 months   ki1000108-IRC              INDIA          0                0      168    400
24 months   ki1000108-IRC              INDIA          0                1        1    400
24 months   ki1000108-IRC              INDIA          1                0      227    400
24 months   ki1000108-IRC              INDIA          1                1        4    400
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       94    578
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1        4    578
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      475    578
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1        5    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      210    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1        1    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      197    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1        2    410
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      850    890
24 months   ki1113344-GMS-Nepal        NEPAL          0                1       26    890
24 months   ki1113344-GMS-Nepal        NEPAL          1                0       14    890
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0    890


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5d61c29d-a529-4841-a779-265080209042/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d61c29d-a529-4841-a779-265080209042/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d61c29d-a529-4841-a779-265080209042/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d61c29d-a529-4841-a779-265080209042/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1000108-IRC              INDIA     0                    NA                0.1870504   0.1221276   0.2519731
Birth      ki1000108-IRC              INDIA     1                    NA                0.1313131   0.0841995   0.1784268
6 months   ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                0.0339806   0.0092056   0.0587556
6 months   ki1000108-CMC-V-BCS-2002   INDIA     1                    NA                0.0308642   0.0041955   0.0575329
6 months   ki1000108-IRC              INDIA     0                    NA                0.0473373   0.0152803   0.0793942
6 months   ki1000108-IRC              INDIA     1                    NA                0.0611354   0.0300666   0.0922042


### Parameter: E(Y)


agecat     studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1000108-IRC              INDIA     NA                   NA                0.1543027   0.1156773   0.1929280
6 months   ki1000108-CMC-V-BCS-2002   INDIA     NA                   NA                0.0326087   0.0144375   0.0507799
6 months   ki1000108-IRC              INDIA     NA                   NA                0.0552764   0.0327975   0.0777553


### Parameter: RR


agecat     studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1000108-IRC              INDIA     0                    0                 1.0000000   1.0000000   1.000000
Birth      ki1000108-IRC              INDIA     1                    0                 0.7020202   0.4261384   1.156508
6 months   ki1000108-CMC-V-BCS-2002   INDIA     0                    0                 1.0000000   1.0000000   1.000000
6 months   ki1000108-CMC-V-BCS-2002   INDIA     1                    0                 0.9082892   0.2932410   2.813350
6 months   ki1000108-IRC              INDIA     0                    0                 1.0000000   1.0000000   1.000000
6 months   ki1000108-IRC              INDIA     1                    0                 1.2914847   0.5538352   3.011605


### Parameter: PAR


agecat     studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1000108-IRC              INDIA     0                    NA                -0.0327477   -0.0799690   0.0144736
6 months   ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                -0.0013719   -0.0173969   0.0146532
6 months   ki1000108-IRC              INDIA     0                    NA                 0.0079391   -0.0177557   0.0336339


### Parameter: PAF


agecat     studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1000108-IRC              INDIA     0                    NA                -0.2122302   -0.5570359   0.0562182
6 months   ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                -0.0420712   -0.6691347   0.3494160
6 months   ki1000108-IRC              INDIA     0                    NA                 0.1436256   -0.4679778   0.5004167
