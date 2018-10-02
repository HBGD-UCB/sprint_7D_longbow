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
![](/tmp/ffc7db8b-0931-4251-a97a-27b87f26b8d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ffc7db8b-0931-4251-a97a-27b87f26b8d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ffc7db8b-0931-4251-a97a-27b87f26b8d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ffc7db8b-0931-4251-a97a-27b87f26b8d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5854682    0.5180487   0.6528878
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6331934    0.5489890   0.7173978
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5892706    0.5131622   0.6653790
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6350811    0.5663125   0.7038498
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4999810    0.3998069   0.6001550
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6167822    0.5534504   0.6801139
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6510388    0.5715975   0.7304802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.6171349    0.5329406   0.7013292
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.5258964    0.4784121   0.5733807
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4285714   -0.0170220   0.8741648
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6164460    0.5318975   0.7009945
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7157559    0.6233915   0.8081204
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6928426    0.6013992   0.7842859
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6250441    0.5440234   0.7060649
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6900106    0.5538019   0.8262192
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8196488    0.7573466   0.8819510
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714    0.8672033   0.9899396
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8840580    0.8071326   0.9609833
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5541587    0.4465821   0.6617354
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5749989    0.3978413   0.7521565
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4111926    0.2802406   0.5421447
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6337353    0.5315588   0.7359119
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0815162   0.9070733   1.289507
0-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        1                    0                 1.0777411   0.9102985   1.275983
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2336113   0.9850777   1.544850
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9479233   0.7903049   1.136977
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8149351   0.2870102   2.313922
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.1611008   0.9614591   1.402197
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 0.9021445   0.7495497   1.085805
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1878786   0.9606163   1.468906
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9520624   0.8535159   1.061987
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0376069   0.7209981   1.493247
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 1.5412128   1.0792860   2.200841
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3563579   0.5967648   3.082801


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0464336    0.0021665   0.0907007
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0034187   -0.0554062   0.0622435
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0830809   -0.0062992   0.1724611
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0260388   -0.0884864   0.0364087
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0013385   -0.0075315   0.0048546
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0584309    0.0074603   0.1094015
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0592219   -0.1295428   0.0110991
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0980329   -0.0183350   0.2144008
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0220966   -0.0711015   0.0269082
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0068169   -0.0605694   0.0742031
6-24 months   ki1000108-IRC              INDIA        0                    NA                 0.1186087    0.0242792   0.2129382
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0576728   -0.0831375   0.1984830


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0734823    0.0011628   0.1405656
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0057681   -0.0985653   0.1001926
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1424907   -0.0241814   0.2820392
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0416621   -0.1476629   0.0545481
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0025516   -0.0144355   0.0091931
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0865801    0.0070096   0.1597744
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0934658   -0.2113784   0.0129695
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1244004   -0.0380638   0.2614378
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0243764   -0.0802125   0.0285735
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0121518   -0.1153159   0.1250515
6-24 months   ki1000108-IRC              INDIA        0                    NA                 0.2238739    0.0163210   0.3876338
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.2086397   -0.5191762   0.5877693
