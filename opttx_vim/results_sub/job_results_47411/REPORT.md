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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              51    88
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              11    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               6    17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             481   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   445
24 months   ki1113344-GMS-Nepal        NEPAL          0             438   445


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
```




# Results Detail

## Results Plots
![](/tmp/8d0341af-0eb4-48e8-bfe0-ce3b81c2a022/b98a1ca8-064a-4fe7-a598-bceff611ba42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2604630   -0.7488576    0.2279316
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.7751434   -1.0268575   -0.5234292
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.4222330   -0.6479229   -0.1965430
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.6850418   -0.8974928   -0.4725907
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1383378   -0.2299411   -0.0467344
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1186548   -0.0037349    0.2410445
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.6206035   -0.7125871   -0.5286198
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2708539   -0.4455190   -0.0961888
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.6782855   -0.8034500   -0.5531210
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8387964   -0.9268742   -0.7507186
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.4915807   -0.6600405   -0.3231209
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.3367590   -1.6907217   -0.9827963


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA        observed             observed          -0.9860831   -1.1746070   -0.7975591
6 months    ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        observed             observed          -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed           0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        observed             observed          -0.6241700   -0.7143013   -0.5340386
24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        observed             observed          -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.1192697   -1.2125104   -1.0260289


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3670370   -0.8020523    0.0679783
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2109397   -0.3746617   -0.0472177
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.0804437   -0.2571101    0.0962227
6 months    ki1000108-IRC              INDIA        optimal              observed           0.0696733   -0.0901162    0.2294628
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0700328   -0.1113711   -0.0286944
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0545722   -0.1396134    0.0304689
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.0035665   -0.0128119    0.0056789
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2862966   -0.4244266   -0.1481667
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.0696228   -0.1503839    0.0111383
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0491448   -0.0908261   -0.0074635
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0602486   -0.1792300    0.0587329
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed           0.2174894   -0.1387945    0.5737732
