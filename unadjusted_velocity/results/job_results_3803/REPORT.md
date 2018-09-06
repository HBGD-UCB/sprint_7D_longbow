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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid               country                        predfeed3    n_cell       n
-------------  --------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                35     239
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               204     239
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                80     180
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1               100     180
0-3 months     ki0047075b-MAL-ED     INDIA                          0                46     199
0-3 months     ki0047075b-MAL-ED     INDIA                          1               153     199
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                73     175
0-3 months     ki0047075b-MAL-ED     NEPAL                          1               102     175
0-3 months     ki0047075b-MAL-ED     PERU                           0                89     268
0-3 months     ki0047075b-MAL-ED     PERU                           1               179     268
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               140     226
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     226
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     224
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     224
0-3 months     ki1000109-EE          PAKISTAN                       0                32     592
0-3 months     ki1000109-EE          PAKISTAN                       1               560     592
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              4246   39314
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             35068   39314
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                20     242
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               222     242
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                33     227
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               194     227
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                92     208
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1               116     208
3-6 months     ki0047075b-MAL-ED     INDIA                          0                53     229
3-6 months     ki0047075b-MAL-ED     INDIA                          1               176     229
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               101     232
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               131     232
3-6 months     ki0047075b-MAL-ED     PERU                           0                84     265
3-6 months     ki0047075b-MAL-ED     PERU                           1               181     265
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               150     235
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                85     235
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               144     233
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                89     233
3-6 months     ki1000109-EE          PAKISTAN                       0                44     660
3-6 months     ki1000109-EE          PAKISTAN                       1               616     660
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0               150     878
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               728     878
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0              2360   24630
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1             22270   24630
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 2      46
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                44      46
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                31     216
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               185     216
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                84     194
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1               110     194
6-12 months    ki0047075b-MAL-ED     INDIA                          0                53     223
6-12 months    ki0047075b-MAL-ED     INDIA                          1               170     223
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                99     227
6-12 months    ki0047075b-MAL-ED     NEPAL                          1               128     227
6-12 months    ki0047075b-MAL-ED     PERU                           0                72     236
6-12 months    ki0047075b-MAL-ED     PERU                           1               164     236
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               144     226
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                82     226
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136     217
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                81     217
6-12 months    ki1000109-EE          PAKISTAN                       0                 2       8
6-12 months    ki1000109-EE          PAKISTAN                       1                 6       8
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0               130     786
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1               656     786
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1828   19180
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1             17352   19180
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 2      36
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                34      36
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                29     202
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               173     202
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                69     165
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                96     165
12-24 months   ki0047075b-MAL-ED     INDIA                          0                54     223
12-24 months   ki0047075b-MAL-ED     INDIA                          1               169     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                97     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          1               126     223
12-24 months   ki0047075b-MAL-ED     PERU                           0                59     190
12-24 months   ki0047075b-MAL-ED     PERU                           1               131     190
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     224
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                78     224
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               126     203
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                77     203
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0               102     624
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1               522     624
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               944    9050
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              8106    9050
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                16     212
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               196     212


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f2b5887d-94ea-4b00-b32a-fc8c3aa9886f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f2b5887d-94ea-4b00-b32a-fc8c3aa9886f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1286851   -0.2042430   -0.0531271
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0154169   -0.0506753    0.0198415
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1813266    0.1042274    0.2584258
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2020843    0.1318391    0.2723296
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0055534   -0.0880355    0.0769287
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0315097   -0.0747431    0.0117237
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1149707    0.0599257    0.1700156
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0457420    0.0010491    0.0904348
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.2140285   -0.2764615   -0.1515955
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.1299529   -0.1672762   -0.0926297
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0907742   -0.1472995   -0.0342489
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1173249   -0.1893075   -0.0453423
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0888931   -0.1374515   -0.0403347
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0254246   -0.0372530    0.0881023
0-3 months     ki1000109-EE          PAKISTAN                       0                    NA                -0.3641230   -0.4912529   -0.2369931
0-3 months     ki1000109-EE          PAKISTAN                       1                    NA                -0.3962647   -0.4408433   -0.3516860
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0321859    0.0167603    0.0476115
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0753668    0.0701751    0.0805585
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0755900   -0.0543405    0.2055205
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.1141399    0.0668478    0.1614319
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0317771   -0.0245894    0.0881436
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0288560   -0.0539139   -0.0037981
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1207667    0.0658330    0.1757004
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0126851   -0.0344128    0.0597830
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0421562   -0.1079365    0.0236242
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0395135   -0.0707103   -0.0083167
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0246485   -0.0159998    0.0652969
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0588789   -0.0928150   -0.0249429
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                 0.0691082    0.0109995    0.1272168
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0094004   -0.0271766    0.0459773
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0059063   -0.0417337    0.0535464
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0170997   -0.0809397    0.0467403
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0423123   -0.0835275   -0.0010971
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1221026   -0.1750547   -0.0691505
3-6 months     ki1000109-EE          PAKISTAN                       0                    NA                 0.0365247   -0.0820478    0.1550972
3-6 months     ki1000109-EE          PAKISTAN                       1                    NA                 0.0733013    0.0442604    0.1023422
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1972621   -0.2471509   -0.1473733
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.1596135   -0.1808049   -0.1384221
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0316666    0.0168549    0.0464782
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0080594   -0.0131027   -0.0030162
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0697800   -0.1022409   -0.0373191
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0825731   -0.0935679   -0.0715783
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0007871   -0.0323705    0.0339447
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0109762   -0.0122175    0.0341699
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0505955   -0.0780565   -0.0231345
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0862456   -0.0995781   -0.0729131
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0436185   -0.0604650   -0.0267720
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0524533   -0.0660664   -0.0388402
6-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0490862   -0.0760719   -0.0221006
6-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0323000   -0.0487202   -0.0158797
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0530111   -0.0755328   -0.0304895
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0494904   -0.0778123   -0.0211685
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1254996   -0.1448943   -0.1061048
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1232092   -0.1509700   -0.0954485
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0468419   -0.0667108   -0.0269731
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0672177   -0.0775306   -0.0569049
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0743765   -0.0837046   -0.0650484
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0754246   -0.0783850   -0.0724641
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0117482   -0.0264745    0.0029781
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0192118   -0.0250957   -0.0133279
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0010151   -0.0166119    0.0145818
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0015075   -0.0158807    0.0128657
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0018646   -0.0064817    0.0102109
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0134705   -0.0196066   -0.0073344
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0271434   -0.0345791   -0.0197077
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0313558   -0.0382503   -0.0244613
12-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0045506   -0.0184765    0.0093753
12-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0110220   -0.0190506   -0.0029933
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0125416   -0.0220694   -0.0030138
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0205203   -0.0332221   -0.0078185
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0374632   -0.0479355   -0.0269909
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0431071   -0.0550526   -0.0311617
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0231563   -0.0349063   -0.0114062
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0144328   -0.0205876   -0.0082781
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0075082   -0.0135930   -0.0014234
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0202539   -0.0222016   -0.0183062
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0024601   -0.0203642    0.0252845
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0099089   -0.0183914   -0.0014264


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0320043   -0.0644701    0.0004615
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0255097   -0.0638598    0.0128403
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.1578735   -0.1906434   -0.1251037
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1008775   -0.1453661   -0.0563889
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0485757   -0.0876660   -0.0094853
0-3 months     ki1000109-EE          PAKISTAN                       NA                   NA                -0.3945273   -0.4372606   -0.3517940
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                 0.0707032    0.0657297    0.0756767
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0200415   -0.0431395    0.0030565
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0225157   -0.0491401    0.0041087
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0283266   -0.0028926    0.0595459
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0024150   -0.0406234    0.0357934
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0727901   -0.1056963   -0.0398840
3-6 months     ki1000109-EE          PAKISTAN                       NA                   NA                 0.0708495    0.0425982    0.0991009
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.1660455   -0.1856196   -0.1464714
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0042530   -0.0091354    0.0006295
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0807371   -0.0912604   -0.0702138
6-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0777727   -0.0900154   -0.0655300
6-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0486002   -0.0592412   -0.0379593
6-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0374212   -0.0515266   -0.0233158
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0517337   -0.0693851   -0.0340823
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1246447   -0.1406180   -0.1086713
6-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0638477   -0.0730913   -0.0546041
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0753247   -0.0782379   -0.0724114
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0181403   -0.0236170   -0.0126636
12-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0097570   -0.0149006   -0.0046135
12-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0295235   -0.0345942   -0.0244528
12-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0090124   -0.0160498   -0.0019751
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0153199   -0.0229604   -0.0076795
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0396040   -0.0475364   -0.0316716
12-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0158588   -0.0213657   -0.0103518
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0189244   -0.0207907   -0.0170581
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0089754   -0.0170317   -0.0009191


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                  0.1132682    0.0298886    0.1966478
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0207578   -0.0835432    0.1250587
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0259563   -0.1190822    0.0671695
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0692287   -0.1401329    0.0016754
0-3 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           1                    0                  0.0840756    0.0113369    0.1568142
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0265507   -0.1180745    0.0649730
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1143177    0.0350309    0.1936045
0-3 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN                       1                    0                 -0.0321417   -0.1668609    0.1025776
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0431809    0.0270895    0.0592723
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    0                  0.0385499   -0.0992736    0.1763734
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0606331   -0.1223185    0.0010523
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.1080816   -0.1804413   -0.0357219
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    0                  0.0026427   -0.0701604    0.0754458
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0835275   -0.1364797   -0.0305752
3-6 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           1                    0                 -0.0597078   -0.1283699    0.0089544
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0230060   -0.1026623    0.0566502
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0797903   -0.1468918   -0.0126888
3-6 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN                       1                    0                  0.0367766   -0.0853004    0.1588537
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0376486   -0.0165545    0.0918516
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0397260   -0.0550224   -0.0244296
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0127931   -0.0470655    0.0214793
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0101891   -0.0302753    0.0506536
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0356501   -0.0661765   -0.0051236
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0088348   -0.0304941    0.0128244
6-12 months    ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU                           1                    0                  0.0167863   -0.0148025    0.0483751
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                  0.0035207   -0.0326643    0.0397057
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0022903   -0.0315743    0.0361550
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 -0.0203758   -0.0427616    0.0020101
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0010481   -0.0105227    0.0084266
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0074636   -0.0233219    0.0083947
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.0004924   -0.0217021    0.0207172
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0153351   -0.0256942   -0.0049759
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0042124   -0.0143526    0.0059278
12-24 months   ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU                           1                    0                 -0.0064714   -0.0225459    0.0096031
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0079787   -0.0238568    0.0078995
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0056440   -0.0215299    0.0102420
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0087234   -0.0045410    0.0219879
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0127457   -0.0191180   -0.0063735
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 -0.0123690   -0.0366730    0.0119350
