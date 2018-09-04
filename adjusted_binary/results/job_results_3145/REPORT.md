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

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
Birth       ki1000109-EE          PAKISTAN                       0                  0        0       4
Birth       ki1000109-EE          PAKISTAN                       0                  1        0       4
Birth       ki1000109-EE          PAKISTAN                       1                  0        2       4
Birth       ki1000109-EE          PAKISTAN                       1                  1        2       4
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  0     2270   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  1     1486   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  0    23340   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  1    10324   37420
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  0        4      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  1        2      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  0       48      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  1       26      80
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
6 months    ki1000109-EE          PAKISTAN                       0                  0       24     742
6 months    ki1000109-EE          PAKISTAN                       0                  1       26     742
6 months    ki1000109-EE          PAKISTAN                       1                  0      332     742
6 months    ki1000109-EE          PAKISTAN                       1                  1      360     742
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0      118     916
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1       40     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      610     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1      148     916
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1996   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1      972   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0    22460   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1     7134   32562
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0       14     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1       10     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0      130     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1       24     178
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
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       72     808
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       64     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      376     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      296     808
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0      832   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      810   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0     7668   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     7372   16682
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0       12     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1       18     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0      170     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1      104     304


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
![](/tmp/6e4fa950-b848-4e1f-a544-8dafcd0f1c53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6e4fa950-b848-4e1f-a544-8dafcd0f1c53/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6e4fa950-b848-4e1f-a544-8dafcd0f1c53/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6e4fa950-b848-4e1f-a544-8dafcd0f1c53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3155815   0.3080123   0.3231506
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.3156006   0.3080302   0.3231710
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2058824   0.0696818   0.3420829
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1822660   0.1290457   0.2354863
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1779178   0.0813357   0.2744999
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1909854   0.1334065   0.2485644
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0495050   0.0071094   0.0919005
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0454545   0.0098437   0.0810654
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.2740331   0.1814746   0.3665917
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1918553   0.1350284   0.2486823
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2021883   0.1414306   0.2629460
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1894608   0.1060888   0.2728328
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2682476   0.1967270   0.3397683
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1837535   0.1061426   0.2613643
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.6638782   0.5347879   0.7929684
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.5230099   0.4705529   0.5754670
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1863087   0.0964464   0.2761710
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1924649   0.1525894   0.2323404
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2756465   0.2581245   0.2931685
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2458725   0.2374699   0.2542751
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.3985530   0.1365089   0.6605970
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1581201   0.0794074   0.2368329
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4333333   0.2555836   0.6110830
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4662921   0.3928297   0.5397546
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2078993   0.1118058   0.3039928
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.4798676   0.4053073   0.5544279
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2307740   0.1491075   0.3124406
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2030187   0.1354084   0.2706291
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.3373374   0.2238568   0.4508179
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.3803817   0.3004781   0.4602853
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3576159   0.2810027   0.4342291
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3333333   0.2304518   0.4362148
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6999200   0.6291174   0.7707226
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6454377   0.5579959   0.7328794
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.3793884   0.2868314   0.4719454
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4376041   0.3852515   0.4899566
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4582300   0.4335933   0.4828668
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4931827   0.4793716   0.5069939
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.5922368   0.3433799   0.8410937
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.3801769   0.2942174   0.4661363


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
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1910112   0.1139350   0.2680874
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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0000606   1.0000129   1.0001082
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.8852920   0.4295757   1.8244560
6 months    ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA                          1                    0                 1.0734478   0.5768906   1.9974154
6 months    ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 0.9181818   0.2876413   2.9309343
6 months    ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU                           1                    0                 0.7001173   0.4482689   1.0934602
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 0.9370514   0.5532330   1.5871528
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6850144   0.4171200   1.1249634
6 months    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       1                    0                 0.7878101   0.6329778   0.9805158
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.0330431   0.6114966   1.7451903
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.8919848   0.8350158   0.9528405
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.3967356   0.1745562   0.9017101
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 1.0760588   0.6934326   1.6698125
24 months   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 2.3081734   1.4250115   3.7386818
24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 0.8797296   0.5435869   1.4237358
24 months   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           1                    0                 1.1276002   0.7661207   1.6596371
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 0.9320988   0.6401674   1.3571576
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9221592   0.7839893   1.0846801
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.1534461   0.8815304   1.5092364
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0762776   1.0171711   1.1388187
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.6419339   0.4003625   1.0292650


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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0000252    0.0000118    0.0000385
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0202283   -0.1454840    0.1050273
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0109234   -0.0741086    0.0959555
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0022946   -0.0336625    0.0290732
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0555146   -0.1286087    0.0175795
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0046077   -0.0399727    0.0307573
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0307476   -0.0707760    0.0092807
6 months    ki1000109-EE          PAKISTAN                       0                    NA                -0.1436625   -0.2710670   -0.0162580
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0189315   -0.0615809    0.0994439
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0267060   -0.0427293   -0.0106827
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2075417   -0.4480877    0.0330043
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0282051   -0.1363944    0.1928047
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2098785    0.1187496    0.3010074
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0174407   -0.0774898    0.0426084
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0294968   -0.0635213    0.1225149
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0084780   -0.0532881    0.0363322
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0143657   -0.0292059    0.0579373
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0661562   -0.0182054    0.1505177
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0322387    0.0091018    0.0553756
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.1909210   -0.4286805    0.0468385


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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0000797    0.0000376    0.0001218
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1089572   -1.0370945    0.3963038
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0578445   -0.5185948    0.4154748
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0486049   -0.9750288    0.4432627
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.2540499   -0.6356777    0.0385384
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0233204   -0.2190821    0.1410057
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1294637   -0.3094401    0.0257758
6 months    ki1000109-EE          PAKISTAN                       0                    NA                -0.2761596   -0.5533307   -0.0484460
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0922407   -0.3999532    0.4113896
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.1072788   -0.1738995   -0.0444390
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.0865420   -2.8497387   -0.1308969
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0611111   -0.3728112    0.3578779
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.5023687    0.2404546    0.6739669
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0817533   -0.4034557    0.1662080
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0804090   -0.2116950    0.3020954
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0242826   -0.1610232    0.0963534
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0201120   -0.0426337    0.0790817
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.1484838   -0.0621909    0.3173733
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0657304    0.0176419    0.1114649
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.4757375   -1.2213178    0.0195905
