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

**Outcome Variable:** wasted

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

agecat      studyid               country                        predfeed3    wasted   n_cell       n
----------  --------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 0       29     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 1        5     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 0      160     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 1       33     227
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 0       76     177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 1        4     177
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 0       95     177
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 1        2     177
Birth       ki0047075b-MAL-ED     INDIA                          0                 0       33     193
Birth       ki0047075b-MAL-ED     INDIA                          0                 1       10     193
Birth       ki0047075b-MAL-ED     INDIA                          1                 0      127     193
Birth       ki0047075b-MAL-ED     INDIA                          1                 1       23     193
Birth       ki0047075b-MAL-ED     NEPAL                          0                 0       59     166
Birth       ki0047075b-MAL-ED     NEPAL                          0                 1       10     166
Birth       ki0047075b-MAL-ED     NEPAL                          1                 0       87     166
Birth       ki0047075b-MAL-ED     NEPAL                          1                 1       10     166
Birth       ki0047075b-MAL-ED     PERU                           0                 0       86     265
Birth       ki0047075b-MAL-ED     PERU                           0                 1        2     265
Birth       ki0047075b-MAL-ED     PERU                           1                 0      173     265
Birth       ki0047075b-MAL-ED     PERU                           1                 1        4     265
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      134     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1       10     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       83     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        4     231
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0       63     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        2     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       49     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     114
Birth       ki1000109-EE          PAKISTAN                       0                 0        0       2
Birth       ki1000109-EE          PAKISTAN                       0                 1        0       2
Birth       ki1000109-EE          PAKISTAN                       1                 0        2       2
Birth       ki1000109-EE          PAKISTAN                       1                 1        0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 0     2492   30272
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 1      302   30272
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 0    24888   30272
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 1     2590   30272
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 0        6      62
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0      62
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 0       56      62
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 1        0      62
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 0       34     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 1        0     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 0      195     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 1        8     237
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 0       93     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 0      115     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED     INDIA                          0                 0       46     233
6 months    ki0047075b-MAL-ED     INDIA                          0                 1        9     233
6 months    ki0047075b-MAL-ED     INDIA                          1                 0      169     233
6 months    ki0047075b-MAL-ED     INDIA                          1                 1        9     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                 0       99     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                 1        2     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                 0      130     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                 1        2     233
6 months    ki0047075b-MAL-ED     PERU                           0                 0       87     270
6 months    ki0047075b-MAL-ED     PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED     PERU                           1                 0      183     270
6 months    ki0047075b-MAL-ED     PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      157     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        5     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       84     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        2     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      148     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        1     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     240
6 months    ki1000109-EE          PAKISTAN                       0                 0       34     750
6 months    ki1000109-EE          PAKISTAN                       0                 1       18     750
6 months    ki1000109-EE          PAKISTAN                       1                 0      618     750
6 months    ki1000109-EE          PAKISTAN                       1                 1       80     750
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 0      144     916
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 1       14     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 0      684     916
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 1       74     916
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 0     2652   32506
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 1      328   32506
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 0    27096   32506
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 1     2430   32506
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 0       24     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 0      148     178
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 1        6     178
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 0       29     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 1        1     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 0      160     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 1       18     208
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 0       71     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 0       95     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 1        3     169
24 months   ki0047075b-MAL-ED     INDIA                          0                 0       49     225
24 months   ki0047075b-MAL-ED     INDIA                          0                 1        6     225
24 months   ki0047075b-MAL-ED     INDIA                          1                 0      149     225
24 months   ki0047075b-MAL-ED     INDIA                          1                 1       21     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                 0       96     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                 1        1     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                 0      124     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                 1        4     225
24 months   ki0047075b-MAL-ED     PERU                           0                 0       62     199
24 months   ki0047075b-MAL-ED     PERU                           0                 1        0     199
24 months   ki0047075b-MAL-ED     PERU                           1                 0      134     199
24 months   ki0047075b-MAL-ED     PERU                           1                 1        3     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      151     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        0     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       80     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        1     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      127     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        4     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     210
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 0      118     808
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 1       18     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 0      540     808
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 1      132     808
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 0     1268   16626
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 1      368   16626
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 0    11698   16626
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 1     3292   16626
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 0       22     302
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 1        8     302
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 0      228     302
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 1       44     302


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/03b7c4a3-b952-4b67-b4b5-e2dba29920f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03b7c4a3-b952-4b67-b4b5-e2dba29920f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03b7c4a3-b952-4b67-b4b5-e2dba29920f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03b7c4a3-b952-4b67-b4b5-e2dba29920f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1470588   0.0277500   0.2663676
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1709845   0.1177506   0.2242183
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.2297510   0.1119377   0.3475642
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.1532769   0.0958543   0.2106994
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                0.1500462   0.0688475   0.2312448
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                0.1006734   0.0405741   0.1607728
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0925976   0.0871741   0.0980211
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0957390   0.0904756   0.1010024
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1636364   0.0656562   0.2616165
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0505618   0.0183053   0.0828183
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.3497030   0.1934592   0.5059469
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1140321   0.0808160   0.1472482
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0959009   0.0347436   0.1570581
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0984929   0.0686338   0.1283520
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0915413   0.0796004   0.1034821
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0826398   0.0775979   0.0876817
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1090909   0.0265166   0.1916652
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1235294   0.0739565   0.1731024
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1342081   0.0564187   0.2119976
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1969968   0.1544829   0.2395106
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1917468   0.1695644   0.2139292
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2201364   0.2095122   0.2307606
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2666667   0.0851884   0.4481449
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1617647   0.0961979   0.2273315


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1674009   0.1187276   0.2160742
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1709845   0.1177299   0.2242391
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1204819   0.0708125   0.1701514
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955338   0.0902714   0.1007962
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1306667   0.0965090   0.1648243
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0960699   0.0690520   0.1230877
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0848459   0.0799494   0.0897424
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1856436   0.1476821   0.2236050
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2201371   0.2099559   0.2303184
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1721854   0.1107033   0.2336676


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1626943   0.4876063   2.7724374
Birth       ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 0.6671436   0.3542639   1.2563532
Birth       ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     NEPAL        1                    0                 0.6709499   0.3037141   1.4822283
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0339246   1.0123412   1.0559683
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.3089888   0.1288136   0.7411798
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.3260827   0.1913564   0.5556642
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0270284   0.5050197   2.0886062
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9027605   0.7846898   1.0385969
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 1.1323529   0.4807371   2.6672023
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.4678452   0.7907839   2.7245994
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.1480577   1.0143821   1.2993492
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6066176   0.2741503   1.3422748


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0203421   -0.0907416    0.1314257
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.0587665   -0.1589377    0.0414047
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0295642   -0.0876666    0.0285382
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0029362    0.0012126    0.0046598
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0863831   -0.1654288   -0.0073375
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.2190364   -0.3669521   -0.0711207
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0001690   -0.0562617    0.0565998
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0066954   -0.0180039    0.0046131
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0109091   -0.0618645    0.0836827
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0514354   -0.0220066    0.1248775
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0283903    0.0070456    0.0497350
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0944812   -0.2694561    0.0804936


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1215170   -0.8684646    0.5869698
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.3436950   -1.0774927    0.1309157
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.2453831   -0.8305728    0.1527357
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0307346    0.0125619    0.0485728
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1181818   -2.3044780   -0.3577619
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.6762988   -3.1241339   -0.7367465
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0017593   -0.7979358    0.4457619
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0789123   -0.2212958    0.0468715
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0909091   -0.7701630    0.5331242
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.2770655   -0.2427909    0.5794673
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.1289666    0.0272315    0.2200619
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5487179   -2.0466898    0.2127432
