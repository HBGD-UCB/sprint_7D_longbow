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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country        cleanck    n_cell     n
-------------  -------------------------  -------------  --------  -------  ----
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              39    87
0-3 months     ki1000108-IRC              INDIA          0             157   369
0-3 months     ki1000108-IRC              INDIA          1             212   369
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             109   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             525   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   546
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             333   546
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     ki1000108-IRC              INDIA          0             166   390
3-6 months     ki1000108-IRC              INDIA          1             224   390
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0              99   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             475   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             840   852
3-6 months     ki1113344-GMS-Nepal        NEPAL          1              12   852
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             138   323
6-12 months    ki1000108-IRC              INDIA          0             164   391
6-12 months    ki1000108-IRC              INDIA          1             227   391
6-12 months    ki1017093b-PROVIDE         BANGLADESH     0              96   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH     1             449   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   516
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             302   516
6-12 months    ki1113344-GMS-Nepal        NEPAL          0             840   856
6-12 months    ki1113344-GMS-Nepal        NEPAL          1              16   856
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             191   324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             133   324
12-24 months   ki1000108-IRC              INDIA          0             163   387
12-24 months   ki1000108-IRC              INDIA          1             224   387
12-24 months   ki1017093b-PROVIDE         BANGLADESH     0              80   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH     1             378   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   396
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             185   396
12-24 months   ki1113344-GMS-Nepal        NEPAL          0             646   656
12-24 months   ki1113344-GMS-Nepal        NEPAL          1              10   656


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/841b0a61-da26-4375-8f93-6fe7b4e85333/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/841b0a61-da26-4375-8f93-6fe7b4e85333/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2047890   -0.3549392   -0.0546387
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0885433   -0.0473345    0.2244210
0-3 months     ki1000108-IRC              INDIA        0                    NA                -0.3639352   -0.4520356   -0.2758348
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1753414   -0.2469181   -0.1037646
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0730675   -0.1184162   -0.0277188
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0347217   -0.0544705   -0.0149730
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1705605   -0.1964209   -0.1447001
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0778396   -0.1057726   -0.0499065
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1116598   -0.1764945   -0.0468252
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0800404   -0.1498831   -0.0101977
3-6 months     ki1000108-IRC              INDIA        0                    NA                -0.0642886   -0.1031990   -0.0253782
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0425010   -0.0870207    0.0020187
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0390570   -0.0741457   -0.0039683
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0247805   -0.0432605   -0.0063004
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0907843    0.0564599    0.1251088
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0104667   -0.0328936    0.0119601
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1661667   -0.1859442   -0.1463891
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4039617   -0.5298498   -0.2780737
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1065818   -0.1327180   -0.0804456
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0896305   -0.1225513   -0.0567097
6-12 months    ki1000108-IRC              INDIA        0                    NA                -0.0212370   -0.0389340   -0.0035399
6-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0320038   -0.0495944   -0.0144132
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0872260   -0.1022424   -0.0722096
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0573531   -0.0650571   -0.0496491
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0413260   -0.0536163   -0.0290357
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0190424   -0.0305521   -0.0075326
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0615046   -0.0703937   -0.0526155
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0282194   -0.0835507    0.0271120
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0468750   -0.0589445   -0.0348056
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0435701   -0.0612828   -0.0258575
12-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0323427   -0.0416314   -0.0230540
12-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0305587   -0.0409948   -0.0201225
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0099610   -0.0183649   -0.0015571
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0077931   -0.0120932   -0.0034929
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0016647   -0.0042783    0.0076076
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0084841   -0.0147812   -0.0021870
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0149712   -0.0204173   -0.0095251
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0056472   -0.0340069    0.0227125


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA        NA                   NA                -0.2555832   -0.3120360   -0.1991304
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.1140109   -0.1341708   -0.0938510
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA        NA                   NA                -0.0517747   -0.0822588   -0.0212906
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0302642    0.0105575    0.0499710
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.1695159   -0.1892757   -0.1497561
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA        NA                   NA                -0.0274878   -0.0401239   -0.0148518
6-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0282840   -0.0367845   -0.0197836
6-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0608825   -0.0696769   -0.0520880
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA        NA                   NA                -0.0313101   -0.0385075   -0.0241127
12-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0030765   -0.0074275    0.0012744
12-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0148291   -0.0202110   -0.0094472


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.2933322    0.0908283    0.4958362
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.1885938    0.0750821    0.3021055
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0383458   -0.0111165    0.0878081
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0927209    0.0546550    0.1307869
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0316194   -0.0636776    0.1269165
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.0217876   -0.0373396    0.0809148
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0142765   -0.0253811    0.0539342
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.1012511   -0.1422527   -0.0602495
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.2377951   -0.3652272   -0.1103630
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0169513   -0.0250829    0.0589856
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0107669   -0.0357191    0.0141854
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0298728    0.0129955    0.0467502
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0222836    0.0054454    0.0391218
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0332852   -0.0227556    0.0893261
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0033049   -0.0181289    0.0247388
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0017840   -0.0121872    0.0157552
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0021679   -0.0072723    0.0116081
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0101488   -0.0188074   -0.0014901
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0093240   -0.0195538    0.0382019
