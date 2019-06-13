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

**Outcome Variable:** ever_stunted

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
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country        cleanck    ever_stunted   n_cell     n
---------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     0        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     1        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      341   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0        7   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        2   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      164   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      304   477
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     0        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     1        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      447   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0        9   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      377   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1       91   477
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      285   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0        6   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        2   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      159   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      213   380


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c584022c-1892-4563-ada1-6035eed3dd9e/bae50331-eaaa-46dd-bb27-dcb04d2ead76/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c584022c-1892-4563-ada1-6035eed3dd9e/bae50331-eaaa-46dd-bb27-dcb04d2ead76/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.8515795   0.7927265   0.9104325
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                0.5527350   0.4839690   0.6215010
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3471840   0.3062473   0.3881207
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.3471743   0.2790672   0.4152815
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.3051762   0.2279400   0.3824124
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                0.3081361   0.2449944   0.3712779
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1430068   0.1127751   0.1732386
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2209898   0.1676790   0.2743006
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.7862071   0.7031467   0.8692676
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                0.3174386   0.2360770   0.3988003
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2717680   0.2275345   0.3160015
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2218509   0.1578901   0.2858117


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        observed             NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        observed             NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        observed             NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.0632072   1.0184369   1.1099456
0-24 months (no birth st.)   ki1000108-IRC              INDIA        observed             optimal           1.0742037   0.9890468   1.1666926
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.0812546   1.0244519   1.1412069
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0411075   0.8890094   1.2192276
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.2568531   1.0357281   1.5251876
0-6 months (no birth st.)    ki1000108-IRC              INDIA        observed             optimal           1.1247980   0.9797413   1.2913313
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1139746   1.0015566   1.2390109
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.7814423   0.6645823   0.9188509
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.0794212   1.0117081   1.1516662
6-24 months                  ki1000108-IRC              INDIA        observed             optimal           1.1916031   0.9915737   1.4319841
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1030775   1.0259883   1.1859590
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0672745   0.8482362   1.3428746


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0538259    0.0181273    0.0895245
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                 0.0410150   -0.0044849    0.0865149
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0282103    0.0094938    0.0469268
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0142715   -0.0405891    0.0691320
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0783854    0.0193204    0.1374504
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                 0.0384548   -0.0041287    0.0810383
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0162992    0.0009109    0.0316874
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0482990   -0.0845431   -0.0120550
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0624415    0.0129468    0.1119362
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                 0.0608222    0.0023354    0.1193090
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0280132    0.0082350    0.0477914
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0149249   -0.0361331    0.0659829


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0594495    0.0181031    0.0990549
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                 0.0690779   -0.0110745    0.1428762
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0751485    0.0238683    0.1237347
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0394844   -0.1248475    0.1798086
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.2043621    0.0344957    0.3443429
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                 0.1109515   -0.0206776    0.2256054
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.1023135    0.0015541    0.1929046
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.2796850   -0.5047045   -0.0883158
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0735776    0.0115726    0.1316929
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                 0.1607944   -0.0084979    0.3016682
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0934454    0.0253301    0.1568005
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0630339   -0.1789169    0.2553288
