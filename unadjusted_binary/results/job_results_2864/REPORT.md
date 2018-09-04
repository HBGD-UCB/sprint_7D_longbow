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

unadjusted

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
![](/tmp/de48d16a-b495-4f6d-94a5-a0f2295b4017/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de48d16a-b495-4f6d-94a5-a0f2295b4017/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de48d16a-b495-4f6d-94a5-a0f2295b4017/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de48d16a-b495-4f6d-94a5-a0f2295b4017/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1490948   0.1306585   0.1675310
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0900665   0.0855410   0.0945920
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0604027   0.0220708   0.0987346
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0549451   0.0080284   0.1018617
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.2000000   0.0429911   0.3570089
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.2572254   0.2111063   0.3033446
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0632911   0.0095406   0.1170417
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0263852   0.0102313   0.0425391
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1293801   0.1104662   0.1482939
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0516321   0.0480383   0.0552258
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.0909091   0.0147641   0.1670541
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1352941   0.0837636   0.1868246
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1059603   0.0567623   0.1551583
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1111111   0.0425234   0.1796988
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3587786   0.2764471   0.4411102
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2784810   0.1793995   0.3775625
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1176471   0.0409739   0.1943202
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1011905   0.0689040   0.1334769
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1814860   0.1526697   0.2103022
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1517287   0.1426124   0.1608451


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


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.6040891   0.5299790   0.6885626
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9096459   0.3139316   2.6357831
6 months    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       1                    0                 1.2861272   0.5748633   2.8774198
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.4168865   0.1463324   1.1876683
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.3990730   0.3409405   0.4671175
24 months   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 1.4882352   0.5930150   3.7348868
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.0486111   0.4843492   2.2702325
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7761918   0.5082748   1.1853305
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.8601191   0.4163127   1.7770410
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.8360354   0.7120519   0.9816072


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0531033   -0.0700026   -0.0362041
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0020694   -0.0250435    0.0209048
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.0533693   -0.0992528    0.2059913
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0305400   -0.0770021    0.0159220
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0706613   -0.0879412   -0.0533814
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0335353   -0.0359773    0.1030480
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0017984   -0.0276734    0.0312701
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0302072   -0.0789557    0.0185413
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0136867   -0.0828801    0.0555068
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0268283   -0.0527961   -0.0008604


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5532090   -0.7354224   -0.3901274
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0354746   -0.5141597    0.2918794
6 months    ki1000109-EE          PAKISTAN                       0                    NA                 0.2106383   -0.6920093    0.6317444
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.9324895   -2.8878451    0.0394382
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2033856   -1.4992182   -0.9425707
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2694805   -0.5559486    0.6570203
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0166887   -0.2985596    0.2554049
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0919349   -0.2509359    0.0468561
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1316527   -1.0362820    0.3710902
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.1734687   -0.3525062   -0.0181313
