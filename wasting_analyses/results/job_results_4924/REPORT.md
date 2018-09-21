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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_nrooms
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_nrooms
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    wast_rec90d   n_cell      n
------------  -------------------------  -------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0      1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0      1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0      1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1      1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       82    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      125    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       38    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       81    326
0-24 months   ki1000108-IRC              INDIA          0                    0       72    383
0-24 months   ki1000108-IRC              INDIA          0                    1       92    383
0-24 months   ki1000108-IRC              INDIA          1                    0       84    383
0-24 months   ki1000108-IRC              INDIA          1                    1      135    383
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       38    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1       35    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       90    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1      144    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       37    216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       66    216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       44    216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       69    216
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      476   1018
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      528   1018
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        8   1018
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        6   1018
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1      1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0       45    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       79    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0       21    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       58    203
0-6 months    ki1000108-IRC              INDIA          0                    0       33    232
0-6 months    ki1000108-IRC              INDIA          0                    1       65    232
0-6 months    ki1000108-IRC              INDIA          1                    0       52    232
0-6 months    ki1000108-IRC              INDIA          1                    1       82    232
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    1       28    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0       26    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    1      117    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    0        5    139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    1       65    139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    0        8    139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1       61    139
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0      136    326
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    1      182    326
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0        4    326
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    1        4    326
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       37    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       46    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       17    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       23    123
6-24 months   ki1000108-IRC              INDIA          0                    0       39    151
6-24 months   ki1000108-IRC              INDIA          0                    1       27    151
6-24 months   ki1000108-IRC              INDIA          1                    0       32    151
6-24 months   ki1000108-IRC              INDIA          1                    1       53    151
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       64    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1       27    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       32     77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1        1     77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       36     77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1        8     77
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      340    692
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      346    692
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        4    692
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        2    692


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0956baf6-5859-40ab-8f2f-368e9a48c52d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0956baf6-5859-40ab-8f2f-368e9a48c52d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0956baf6-5859-40ab-8f2f-368e9a48c52d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0956baf6-5859-40ab-8f2f-368e9a48c52d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5886026    0.5215070   0.6556982
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6406898    0.5552976   0.7260821
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5898056    0.5151020   0.6645093
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6375146    0.5696229   0.7054063
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5797578    0.4800569   0.6794588
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6244304    0.5607847   0.6880761
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6510096    0.5717215   0.7302976
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.6176329    0.5336723   0.7015934
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.5258964    0.4784121   0.5733807
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4285714   -0.0170220   0.8741648
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6164911    0.5325282   0.7004539
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7184333    0.6265703   0.8102964
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6897253    0.5953349   0.7841158
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6257389    0.5435854   0.7078923
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6829781    0.5422124   0.8237438
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8181717    0.7555814   0.8807621
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714    0.8672033   0.9899396
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8840580    0.8071326   0.9609833
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5542169    0.4466172   0.6618165
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5750000    0.3977365   0.7522635
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4073976    0.2790130   0.5357822
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6335929    0.5327772   0.7344086
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2187500    0.0526770   0.3848230
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2967033    0.2039707   0.3894359


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.6250000   0.5603522   0.6896478
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.5245580   0.4773278   0.5717881
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9064748   0.8572209   0.9557287
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0884930   0.9133901   1.297164
0-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        1                    0                 1.0808893   0.9157240   1.275845
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0770539   0.8820959   1.315101
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9487308   0.7915338   1.137147
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8149351   0.2870102   2.313922
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.1653589   0.9670005   1.404406
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 0.9072291   0.7502880   1.096998
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1979472   0.9615208   1.492508
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9520624   0.8535159   1.061987
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0375000   0.7207649   1.493422
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 1.5552199   1.0935145   2.211867
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3563579   0.5967648   3.082801


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0432993   -0.0001129   0.0867114
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0028837   -0.0551258   0.0608932
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0033040   -0.0850714   0.0916794
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0260096   -0.0882660   0.0362468
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0013385   -0.0075315   0.0048546
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0583858    0.0079086   0.1088630
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0561046   -0.1284190   0.0162098
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1050654   -0.0150278   0.2251585
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0220966   -0.0711015   0.0269082
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0067587   -0.0606583   0.0741758
6-24 months   ki1000108-IRC              INDIA        0                    NA                 0.1224037    0.0299825   0.2148249
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0576728   -0.0831375   0.1984830


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0685221   -0.0023693   0.1343998
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0048654   -0.0979409   0.0980453
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0056667   -0.1579980   0.1462000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0416153   -0.1472817   0.0543190
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0025516   -0.0144355   0.0091931
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0865132    0.0077969   0.1589846
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0885461   -0.2095900   0.0203850
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1333243   -0.0353215   0.2744990
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0243764   -0.0802125   0.0285735
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0120482   -0.1154830   0.1249990
6-24 months   ki1000108-IRC              INDIA        0                    NA                 0.2310370    0.0281675   0.3915575
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.2086397   -0.5191762   0.5877693
