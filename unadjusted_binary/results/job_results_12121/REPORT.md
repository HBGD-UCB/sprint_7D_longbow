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

**Outcome Variable:** ever_stunted

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

agecat                       studyid                    country        cleanck    ever_stunted   n_cell     n
---------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     0        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     1        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      341   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      164   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      304   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0        7   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        2   477
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     0        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     1        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      447   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      377   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1       91   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0        9   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   477
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      285   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      159   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      213   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0        6   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        2   380


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
![](/tmp/e5503d4b-1059-4c6d-b951-d33b345ac858/37a5c341-2e88-4335-b3ed-8417ee6ae94c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5503d4b-1059-4c6d-b951-d33b345ac858/37a5c341-2e88-4335-b3ed-8417ee6ae94c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5503d4b-1059-4c6d-b951-d33b345ac858/37a5c341-2e88-4335-b3ed-8417ee6ae94c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5503d4b-1059-4c6d-b951-d33b345ac858/37a5c341-2e88-4335-b3ed-8417ee6ae94c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                0.6597222   0.5822257   0.7372187
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                0.5480769   0.4803460   0.6158079
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5132743   0.4210451   0.6055036
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3454894   0.3046248   0.3863541
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.3532609   0.2841275   0.4223943
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3662420   0.3129005   0.4195836
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4437086   0.3643298   0.5230874
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3191489   0.2420752   0.3962226
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                0.3958333   0.3158464   0.4758203
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                0.3125000   0.2494194   0.3755806
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2389381   0.1602508   0.3176253
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1420345   0.1120357   0.1720334
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1847826   0.1286464   0.2409188
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1656051   0.1244482   0.2067620
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  ki1000108-IRC              INDIA        0                    NA                0.4367816   0.3323324   0.5412308
6-24 months                  ki1000108-IRC              INDIA        1                    NA                0.3426573   0.2647009   0.4206138
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4696970   0.3491593   0.5902346
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2710997   0.2269901   0.3152094
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2080537   0.1427950   0.2733124
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2540323   0.1997854   0.3082791


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8926895   0.8266727   0.9639783
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    0                 0.8307692   0.7005396   0.9852084
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6731087   0.5428232   0.8346648
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0367467   0.8123191   1.3231791
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7192760   0.5325638   0.9714478
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    0                 0.7894737   0.5933264   1.0504651
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5944409   0.4019756   0.8790583
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8962158   0.6052740   1.3270068
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8512155   0.7537264   0.9613141
6-24 months                  ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA        1                    0                 0.7845050   0.5639618   1.0912938
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5771801   0.4259377   0.7821257
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.2209938   0.8354470   1.7844647


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0491400   -0.0818701   -0.0164100
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                -0.0659722   -0.1270610   -0.0048835
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1378800   -0.2209281   -0.0548320
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0081849   -0.0468749    0.0632447
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0601470   -0.1140493   -0.0062447
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                -0.0492424   -0.1095895    0.0111047
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0796321   -0.1488947   -0.0103694
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0120918   -0.0559883    0.0318046
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0718059   -0.1250781   -0.0185337
6-24 months                  ki1000108-IRC              INDIA        0                    NA                -0.0585207   -0.1397696    0.0227281
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1699158   -0.2799205   -0.0599111
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0287221   -0.0243347    0.0817789


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0542741   -0.0921357   -0.0177250
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                -0.1111111   -0.2200145   -0.0119289
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.3672938   -0.6097462   -0.1613585
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0226449   -0.1422030    0.1637013
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1568117   -0.3071541   -0.0237610
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                -0.1420765   -0.3304608    0.0196338
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4998686   -0.9988945   -0.1254249
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0700202   -0.3566927    0.1560776
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0846120   -0.1517055   -0.0214272
6-24 months                  ki1000108-IRC              INDIA        0                    NA                -0.1547100   -0.3915309    0.0418070
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5667994   -0.9839876   -0.2373365
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1213052   -0.1333360    0.3187328
