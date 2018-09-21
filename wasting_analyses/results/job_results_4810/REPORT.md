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
![](/tmp/ee9c398f-b529-4145-883f-9dcc1a088027/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee9c398f-b529-4145-883f-9dcc1a088027/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee9c398f-b529-4145-883f-9dcc1a088027/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee9c398f-b529-4145-883f-9dcc1a088027/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1470588   0.0277500   0.2663676
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1709845   0.1177506   0.2242183
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.2325581   0.1059591   0.3591572
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.1533333   0.0955231   0.2111436
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                0.1479457   0.0661175   0.2297738
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                0.1016271   0.0413568   0.1618973
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0925976   0.0871743   0.0980208
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0957388   0.0904755   0.1010022
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1636364   0.0656562   0.2616165
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0505618   0.0183053   0.0828183
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.3489654   0.1924483   0.5054825
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1140113   0.0807651   0.1472576
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1071244   0.0428149   0.1714339
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0989338   0.0688705   0.1289971
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0920676   0.0802889   0.1038463
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0827732   0.0777427   0.0878037
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1090909   0.0265166   0.1916652
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1235294   0.0739565   0.1731024
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1329923   0.0544093   0.2115754
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1966698   0.1541547   0.2391849
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1923066   0.1700900   0.2145232
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2201771   0.2095547   0.2307996
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
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 0.6593333   0.3400328   1.2784662
Birth       ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     NEPAL        1                    0                 0.6869217   0.3081447   1.5312978
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0339238   1.0123501   1.0559572
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.3089888   0.1288136   0.7411798
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.3267124   0.1914086   0.5576605
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9235415   0.4688465   1.8192070
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8990480   0.7837071   1.0313641
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 1.1323529   0.4807371   2.6672023
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.4788058   0.7881715   2.7746073
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.1449275   1.0118613   1.2954928
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6066176   0.2741503   1.3422748


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0203421   -0.0907416    0.1314257
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.0615737   -0.1698403    0.0466929
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0274637   -0.0861457    0.0312183
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0029363    0.0012135    0.0046590
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0863831   -0.1654288   -0.0073375
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.2182987   -0.3663333   -0.0702641
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0110545   -0.0712139    0.0491049
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0072218   -0.0183808    0.0039373
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0109091   -0.0618645    0.0836827
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0526512   -0.0214311    0.1267335
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0278305    0.0064731    0.0491879
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0944812   -0.2694561    0.0804936


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1215170   -0.8684646    0.5869698
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.3601128   -1.1595440    0.1433809
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.2279489   -0.8203964    0.1716867
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0307353    0.0125714    0.0485652
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1181818   -2.3044780   -0.3577619
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.6706533   -3.1167323   -0.7325366
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1150675   -0.9603999    0.3657542
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0851161   -0.2255384    0.0392165
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0909091   -0.7701630    0.5331242
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.2836147   -0.2442253    0.5875282
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.1264236    0.0246130    0.2176072
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5487179   -2.0466898    0.2127432
