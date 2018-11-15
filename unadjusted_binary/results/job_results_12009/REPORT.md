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

**Outcome Variable:** stunted

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

agecat      studyid               country                        predfeed3    stunted   n_cell       n
----------  --------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  0       30     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  1        5     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  0      169     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  1       36     240
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  0       73     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  1       11     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  0       93     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  1        8     185
Birth       ki0047075b-MAL-ED     INDIA                          0                  0       35     196
Birth       ki0047075b-MAL-ED     INDIA                          0                  1        9     196
Birth       ki0047075b-MAL-ED     INDIA                          1                  0      130     196
Birth       ki0047075b-MAL-ED     INDIA                          1                  1       22     196
Birth       ki0047075b-MAL-ED     NEPAL                          0                  0       62     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                  1       10     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                  0       91     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                  1        8     171
Birth       ki0047075b-MAL-ED     PERU                           0                  0       80     272
Birth       ki0047075b-MAL-ED     PERU                           0                  1        9     272
Birth       ki0047075b-MAL-ED     PERU                           1                  0      160     272
Birth       ki0047075b-MAL-ED     PERU                           1                  1       23     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      129     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       17     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       80     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        7     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       56     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       13     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       45     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        5     119
Birth       ki1000109-EE          PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE          PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE          PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE          PAKISTAN                       1                  1        1       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1135   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  1      743   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  0    11670   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  1     5162   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  0        2      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  1        1      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  0       24      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  1       13      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  0       27     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  1        7     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  0      166     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  1       37     237
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  0       91     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  1        2     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  0      112     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  1        4     209
6 months    ki0047075b-MAL-ED     INDIA                          0                  0       45     233
6 months    ki0047075b-MAL-ED     INDIA                          0                  1       10     233
6 months    ki0047075b-MAL-ED     INDIA                          1                  0      144     233
6 months    ki0047075b-MAL-ED     INDIA                          1                  1       34     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                  0       96     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                  1        5     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                  0      126     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                  1        6     233
6 months    ki0047075b-MAL-ED     PERU                           0                  0       63     270
6 months    ki0047075b-MAL-ED     PERU                           0                  1       24     270
6 months    ki0047075b-MAL-ED     PERU                           1                  0      148     270
6 months    ki0047075b-MAL-ED     PERU                           1                  1       35     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      130     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       32     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       69     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1       17     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      108     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       41     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       75     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       16     240
6 months    ki1000109-EE          PAKISTAN                       0                  0       12     371
6 months    ki1000109-EE          PAKISTAN                       0                  1       13     371
6 months    ki1000109-EE          PAKISTAN                       1                  0      166     371
6 months    ki1000109-EE          PAKISTAN                       1                  1      180     371
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0       59     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1       20     458
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      305     458
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1       74     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0      998   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1      486   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0    11230   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1     3567   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0        7      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1        5      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0       65      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1       12      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       17     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1       13     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0       95     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       83     208
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0       68     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        3     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0       95     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        3     169
24 months   ki0047075b-MAL-ED     INDIA                          0                  0       44     225
24 months   ki0047075b-MAL-ED     INDIA                          0                  1       11     225
24 months   ki0047075b-MAL-ED     INDIA                          1                  0       87     225
24 months   ki0047075b-MAL-ED     INDIA                          1                  1       83     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                  0       75     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                  1       22     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      102     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       26     225
24 months   ki0047075b-MAL-ED     PERU                           0                  0       41     199
24 months   ki0047075b-MAL-ED     PERU                           0                  1       21     199
24 months   ki0047075b-MAL-ED     PERU                           1                  0       85     199
24 months   ki0047075b-MAL-ED     PERU                           1                  1       52     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0       97     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       54     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       54     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1       27     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       36     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       95     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       24     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       55     210
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       36     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       32     404
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      188     404
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      148     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0      416    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      405    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0     3834    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     3686    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0        6     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        9     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0       85     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       52     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/db19c8fc-1be0-4c7a-b41e-d88acf2b8efc/a42ade8b-f678-439d-bf41-11d7569abe17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db19c8fc-1be0-4c7a-b41e-d88acf2b8efc/a42ade8b-f678-439d-bf41-11d7569abe17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db19c8fc-1be0-4c7a-b41e-d88acf2b8efc/a42ade8b-f678-439d-bf41-11d7569abe17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db19c8fc-1be0-4c7a-b41e-d88acf2b8efc/a42ade8b-f678-439d-bf41-11d7569abe17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1428571   0.0266860   0.2590283
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1756098   0.1234160   0.2278035
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1309524   0.0586148   0.2032899
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0792079   0.0263963   0.1320195
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                0.2045455   0.0850545   0.3240364
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                0.1447368   0.0886609   0.2008128
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1388889   0.0587730   0.2190048
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0808081   0.0269644   0.1346517
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                0.1011236   0.0383714   0.1638758
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                0.1256831   0.0775664   0.1737997
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1164384   0.0642982   0.1685785
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0804598   0.0231805   0.1377390
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1884058   0.0957500   0.2810616
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0164942   0.1835058
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3956337   0.3706578   0.4206095
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.3066778   0.2987914   0.3145641
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2058824   0.0696818   0.3420829
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1822660   0.1290457   0.2354863
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1818182   0.0796668   0.2839696
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1910112   0.1331387   0.2488838
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0495050   0.0071094   0.0919005
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0454545   0.0098437   0.0810654
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.2758621   0.1817705   0.3699537
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1912568   0.1341692   0.2483445
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1975309   0.1360982   0.2589636
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1976744   0.1133357   0.2820131
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2751678   0.2033091   0.3470265
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1758242   0.0974481   0.2542002
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.5200000   0.3238960   0.7161040
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.5202312   0.4675191   0.5729433
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2531646   0.1571752   0.3491539
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1952507   0.1552995   0.2352018
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3274933   0.3004635   0.3545230
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2410624   0.2325458   0.2495790
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.4166667   0.1460475   0.6872858
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1558442   0.0767551   0.2349333
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4333333   0.2555836   0.6110830
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4662921   0.3928297   0.5397546
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2000000   0.0940517   0.3059483
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.4882353   0.4129274   0.5635432
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2268041   0.1432823   0.3103259
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2031250   0.1332717   0.2729783
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.3387097   0.2206080   0.4568114
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.3795620   0.2980968   0.4610273
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3576159   0.2810027   0.4342291
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3333333   0.2304518   0.4362148
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7251908   0.6485623   0.8018194
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6962025   0.5945470   0.7978580
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4705882   0.3518066   0.5893698
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4404762   0.3873282   0.4936242
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4933009   0.4539053   0.5326964
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4901596   0.4761211   0.5041981
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.6000000   0.3502268   0.8497732
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.3795620   0.2934360   0.4656880


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1708333   0.1231182   0.2185485
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1027027   0.0588397   0.1465657
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1581633   0.1069482   0.2093783
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1052632   0.0591304   0.1513959
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                0.1176471   0.0792874   0.1560068
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1030043   0.0638908   0.1421178
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1512605   0.0866122   0.2159088
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.3156066   0.3080361   0.3231771
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1856540   0.1360463   0.2352617
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0472103   0.0199192   0.0745014
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.2185185   0.1691358   0.2679013
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2375000   0.1835488   0.2914512
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.5202156   0.4693105   0.5711208
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2052402   0.1682114   0.2422689
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2489405   0.2407278   0.2571531
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1910112   0.1139351   0.2680874
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4615385   0.3936268   0.5294501
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4177778   0.3531914   0.4823642
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.3668342   0.2997053   0.4339630
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3491379   0.2876648   0.4106110
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7142857   0.6530398   0.7755316
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4455446   0.3970186   0.4940706
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4904688   0.4770397   0.5038978
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4013158   0.3195309   0.4831007


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    0                 1.2292683   0.5171661   2.9218866
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    0                 0.6048605   0.2544616   1.4377657
Birth       ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA                          1                    0                 0.7076023   0.3510418   1.4263291
Birth       ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          1                    0                 0.5818182   0.2410114   1.4045495
Birth       ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU                           1                    0                 1.2428658   0.5994618   2.5768370
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 0.6910074   0.2980105   1.6022631
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5307692   0.2013843   1.3988972
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.7751559   0.7242990   0.8295837
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.8852920   0.4295757   1.8244560
6 months    ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA                          1                    0                 1.0505618   0.5548846   1.9890265
6 months    ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 0.9181818   0.2876413   2.9309343
6 months    ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU                           1                    0                 0.6933060   0.4406391   1.0908547
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.0007267   0.5902271   1.6967266
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6389708   0.3811653   1.0711459
6 months    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       1                    0                 1.0004446   0.6770209   1.4783731
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.7712401   0.5012746   1.1865977
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.7360835   0.6736612   0.8042899
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.3740260   0.1633044   0.8566541
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 1.0760588   0.6934326   1.6698125
24 months   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 2.4411765   1.4059870   4.2385474
24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 0.8955966   0.5411143   1.4822991
24 months   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           1                    0                 1.1206117   0.7441079   1.6876191
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 0.9320988   0.6401674   1.3571576
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9600266   0.8016911   1.1496338
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.9360119   0.7075867   1.2381781
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.9936321   0.9141158   1.0800654
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.6326034   0.3951593   1.0127235


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0279762   -0.0808182    0.1367706
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0282497   -0.0772885    0.0207892
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0463822   -0.1488053    0.0560410
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0336257   -0.0896765    0.0224250
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                 0.0165235   -0.0366963    0.0697432
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0134341   -0.0424421    0.0155740
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0371453   -0.0901422    0.0158516
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0800270   -0.1035604   -0.0564936
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0202283   -0.1454840    0.1050273
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0070230   -0.0826704    0.0967165
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0022946   -0.0336625    0.0290732
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0573436   -0.1320863    0.0173992
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0000498   -0.0361329    0.0362325
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0376678   -0.0784457    0.0031102
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.0002156   -0.1891656    0.1895969
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0479244   -0.1339852    0.0381365
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0785528   -0.1040657   -0.0530398
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2256554   -0.4758250    0.0245141
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0282051   -0.1363944    0.1928047
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2177778    0.1182356    0.3173200
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0134708   -0.0754318    0.0484902
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0281245   -0.0706837    0.1269327
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0084780   -0.0532881    0.0363322
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0109051   -0.0588327    0.0370225
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0250437   -0.1332761    0.0831887
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0028321   -0.0399063    0.0342421
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.1986842   -0.4379272    0.0405588


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.1637631   -0.7885922    0.6090265
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.2750627   -0.8392541    0.1160630
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.2932551   -1.1278725    0.2139995
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.3194444   -0.9562722    0.1100760
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                 0.1404494   -0.4518745    0.4911219
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.1304224   -0.4460720    0.1163270
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2455717   -0.6384953    0.0531259
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.2535657   -0.3304277   -0.1811443
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1089572   -1.0370945    0.3963038
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0371901   -0.5767336    0.4120738
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0486049   -0.9750288    0.4432627
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.2624196   -0.6532988    0.0360464
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0002520   -0.2007217    0.1675872
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1586012   -0.3424495    0.0000691
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.0004145   -0.4387579    0.3055321
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.2335039   -0.7318254    0.1214288
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.3155484   -0.4223747   -0.2167453
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.1813726   -3.0281473   -0.1812841
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0611111   -0.3728112    0.3578779
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.5212766    0.2195716    0.7063458
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0631443   -0.3968919    0.1908638
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0766681   -0.2361240    0.3103105
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0242826   -0.1610232    0.0963534
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0152672   -0.0846883    0.0497110
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0562091   -0.3294044    0.1608439
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0057742   -0.0842772    0.0670450
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.4950820   -1.2461071    0.0048248
