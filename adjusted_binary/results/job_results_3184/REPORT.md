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

**Outcome Variable:** sstunted

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

agecat      studyid               country                        predfeed3    sstunted   n_cell       n
----------  --------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   0       35     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   1        0     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   0      198     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   1        7     240
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   0       80     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   1        4     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   0       97     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   1        4     185
Birth       ki0047075b-MAL-ED     INDIA                          0                   0       42     196
Birth       ki0047075b-MAL-ED     INDIA                          0                   1        2     196
Birth       ki0047075b-MAL-ED     INDIA                          1                   0      147     196
Birth       ki0047075b-MAL-ED     INDIA                          1                   1        5     196
Birth       ki0047075b-MAL-ED     NEPAL                          0                   0       69     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                   1        3     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                   0       96     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                   1        3     171
Birth       ki0047075b-MAL-ED     PERU                           0                   0       88     272
Birth       ki0047075b-MAL-ED     PERU                           0                   1        1     272
Birth       ki0047075b-MAL-ED     PERU                           1                   0      178     272
Birth       ki0047075b-MAL-ED     PERU                           1                   1        5     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      145     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        1     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        0     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       65     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        4     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       48     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        2     119
Birth       ki1000109-EE          PAKISTAN                       0                   0        0       4
Birth       ki1000109-EE          PAKISTAN                       0                   1        0       4
Birth       ki1000109-EE          PAKISTAN                       1                   0        4       4
Birth       ki1000109-EE          PAKISTAN                       1                   1        0       4
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   0     3196   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   1      560   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   0    30632   37420
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   1     3032   37420
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   0        6      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   1        0      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   0       66      80
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   1        8      80
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   0       32     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   1        2     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   0      197     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   1        6     237
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   0       93     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   0      116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED     INDIA                          0                   0       51     233
6 months    ki0047075b-MAL-ED     INDIA                          0                   1        4     233
6 months    ki0047075b-MAL-ED     INDIA                          1                   0      173     233
6 months    ki0047075b-MAL-ED     INDIA                          1                   1        5     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                   0      101     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                   1        0     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                   0      131     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                   1        1     233
6 months    ki0047075b-MAL-ED     PERU                           0                   0       85     270
6 months    ki0047075b-MAL-ED     PERU                           0                   1        2     270
6 months    ki0047075b-MAL-ED     PERU                           1                   0      174     270
6 months    ki0047075b-MAL-ED     PERU                           1                   1        9     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      157     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        5     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       85     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        1     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0      140     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        9     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       86     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        5     240
6 months    ki1000109-EE          PAKISTAN                       0                   0       40     742
6 months    ki1000109-EE          PAKISTAN                       0                   1       10     742
6 months    ki1000109-EE          PAKISTAN                       1                   0      514     742
6 months    ki1000109-EE          PAKISTAN                       1                   1      178     742
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   0      148     916
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   1       10     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   0      738     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   1       20     916
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   0     2584   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   1      384   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   0    28066   32562
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   1     1528   32562
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   0       22     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   1        2     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   0      154     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   1        0     178
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   0       29     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   1        1     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   0      154     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   1       24     208
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   0       71     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   0       97     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED     INDIA                          0                   0       50     225
24 months   ki0047075b-MAL-ED     INDIA                          0                   1        5     225
24 months   ki0047075b-MAL-ED     INDIA                          1                   0      147     225
24 months   ki0047075b-MAL-ED     INDIA                          1                   1       23     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                   0       95     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                   1        2     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                   0      124     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                   1        4     225
24 months   ki0047075b-MAL-ED     PERU                           0                   0       59     199
24 months   ki0047075b-MAL-ED     PERU                           0                   1        3     199
24 months   ki0047075b-MAL-ED     PERU                           1                   0      126     199
24 months   ki0047075b-MAL-ED     PERU                           1                   1       11     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      135     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1       16     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       72     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        9     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       84     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1       47     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       57     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1       22     210
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   0      120     808
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   1       16     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   0      604     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   1       68     808
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   0     1344   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   1      298   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   0    12758   16682
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   1     2282   16682
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   0       28     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   1        2     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   0      264     304
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   1       10     304


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b68d195a-353f-4e83-bbfc-f586a572b39a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b68d195a-353f-4e83-bbfc-f586a572b39a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b68d195a-353f-4e83-bbfc-f586a572b39a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b68d195a-353f-4e83-bbfc-f586a572b39a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0959467   0.0913726   0.1005209
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0959812   0.0914063   0.1005561
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0604027   0.0220708   0.0987346
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0549451   0.0080284   0.1018617
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.1860322   0.0627144   0.3093500
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.2572284   0.2112354   0.3032214
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0612621   0.0114817   0.1110425
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0266362   0.0103423   0.0429300
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0902269   0.0793046   0.1011492
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0538461   0.0502410   0.0574511
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.0909091   0.0147641   0.1670541
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1352941   0.0837636   0.1868246
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1059603   0.0567623   0.1551583
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1111111   0.0425234   0.1796988
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3648369   0.2826892   0.4469846
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2901354   0.1918085   0.3884623
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1190008   0.0423904   0.1956111
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1009597   0.0686873   0.1332321
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1375163   0.1194294   0.1556032
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1536709   0.1446819   0.1626599


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0959914   0.0914158   0.1005671
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0583333   0.0286197   0.0880470
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.2533693   0.2090516   0.2976870
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0327511   0.0164329   0.0490693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0587188   0.0549206   0.0625169
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1244444   0.0812176   0.1676713
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1077586   0.0677725   0.1477447
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3285714   0.2648934   0.3922495
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1039604   0.0741620   0.1337588
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1546577   0.1455620   0.1637534


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0003591   1.0001954   1.000523
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9096459   0.3139316   2.635783
6 months    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN                       1                    0                 1.3827090   0.6970284   2.742907
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.4347905   0.1579608   1.196771
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.5967851   0.5258174   0.677331
24 months   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 1.4882352   0.5930150   3.734887
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.0486111   0.4843492   2.270233
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7952469   0.5292636   1.194901
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.8483954   0.4136292   1.740145
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.1174739   0.9826686   1.270772


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0000447    0.0000311    0.0000583
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0020694   -0.0250435    0.0209048
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.0673371   -0.0534858    0.1881600
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0285110   -0.0713378    0.0143158
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0315081   -0.0410454   -0.0219709
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0335353   -0.0359773    0.1030480
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0017984   -0.0276734    0.0312701
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0362655   -0.0852034    0.0126725
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0150404   -0.0841494    0.0540687
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0171414    0.0014947    0.0327881


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0004657    0.0003250    0.0006064
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0354746   -0.5141597    0.2918794
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.2657666   -0.3987813    0.6145941
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.8705362   -2.6717467    0.0470732
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5365942   -0.7045995   -0.3851475
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2694805   -0.5559486    0.6570203
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0166887   -0.2985596    0.2554049
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1103731   -0.2703503    0.0294579
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1446740   -1.0445748    0.3591437
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.1108345    0.0034599    0.2066398
