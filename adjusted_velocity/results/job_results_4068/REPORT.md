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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
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
* brthmon
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
* delta_brthmon
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

agecat         studyid                   country                        earlybf    n_cell       n
-------------  ------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              92     243
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             151     243
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0             102     180
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              78     180
0-3 months     ki0047075b-MAL-ED         INDIA                          0              81     201
0-3 months     ki0047075b-MAL-ED         INDIA                          1             120     201
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              97     175
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              78     175
0-3 months     ki0047075b-MAL-ED         PERU                           0              68     271
0-3 months     ki0047075b-MAL-ED         PERU                           1             203     271
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              80     226
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             146     226
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     229
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             197     229
0-3 months     ki1000109-EE              PAKISTAN                       0             486     594
0-3 months     ki1000109-EE              PAKISTAN                       1             108     594
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1080    1168
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              88    1168
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98     720
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             622     720
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3255    6970
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3715    6970
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           39980   40090
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1             110   40090
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1024    3614
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2590    3614
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90     230
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140     230
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     229
3-6 months     ki0047075b-MAL-ED         INDIA                          1             136     229
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     238
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             148     238
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239
3-6 months     ki1000109-EE              PAKISTAN                       0             538     662
3-6 months     ki1000109-EE              PAKISTAN                       1             124     662
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1037    1124
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              87    1124
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     695
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602     695
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             592     850
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             258     850
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2406    5217
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2811    5217
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           25110   25160
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              50   25160
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1050    3680
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2630    3680
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     219
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             132     219
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194
6-12 months    ki0047075b-MAL-ED         INDIA                          0              90     224
6-12 months    ki0047075b-MAL-ED         INDIA                          1             134     224
6-12 months    ki0047075b-MAL-ED         NEPAL                          0             135     230
6-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     230
6-12 months    ki0047075b-MAL-ED         PERU                           0              62     237
6-12 months    ki0047075b-MAL-ED         PERU                           1             175     237
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     229
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     229
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     223
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             186     223
6-12 months    ki1000109-EE              PAKISTAN                       0               8       8
6-12 months    ki1000109-EE              PAKISTAN                       1               0       8
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1053    1137
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              84    1137
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94     676
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             582     676
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0             596     858
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1             262     858
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            1840    4055
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2215    4055
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0           19665   19665
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0   19665
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            2101    6224
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            4123    6224
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              81     205
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             124     205
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165
12-24 months   ki0047075b-MAL-ED         INDIA                          0              92     225
12-24 months   ki0047075b-MAL-ED         INDIA                          1             133     225
12-24 months   ki0047075b-MAL-ED         NEPAL                          0             132     226
12-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     226
12-24 months   ki0047075b-MAL-ED         PERU                           0              50     191
12-24 months   ki0047075b-MAL-ED         PERU                           1             141     191
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     227
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             137     227
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     207
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             174     207
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     495
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             424     495
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0             468     676
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1             208     676
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             122     263
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             141     263
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            9295    9295
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0    9295
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            2479    7128
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            4649    7128


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ed80a629-d8bf-41d2-8e8f-6dc5248de968/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed80a629-d8bf-41d2-8e8f-6dc5248de968/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0122607   -0.0634137    0.0388923
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0547180   -0.0914862   -0.0179497
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2139844    0.1455018    0.2824670
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1652936    0.0929714    0.2376158
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0088676   -0.0671454    0.0494103
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0285530   -0.0776119    0.0205059
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1041930    0.0638094    0.1445767
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0361410   -0.0056792    0.0779611
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.1220764   -0.1844822   -0.0596706
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.1714095   -0.2062409   -0.1365780
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0267933   -0.0731222    0.0195355
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0934939   -0.1425947   -0.0443931
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1136483   -0.2230597   -0.0042369
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0351981   -0.0759545    0.0055583
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.3776945   -0.4262022   -0.3291869
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.0122905   -0.0640597    0.0394788
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0136156   -0.0031780    0.0304092
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0209928   -0.0033926    0.0453781
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.1271197   -0.1782303   -0.0760091
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1212884   -0.1407479   -0.1018289
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.1580350   -0.1729927   -0.1430773
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0960075   -0.1099776   -0.0820375
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0711186    0.0661572    0.0760801
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3037773   -0.3208355   -0.2867191
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0642150    0.0401864    0.0882436
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0639178    0.0466192    0.0812163
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0388414   -0.0697902   -0.0078926
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0243017   -0.0536126    0.0050091
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0373209   -0.0127268    0.0873687
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0880595    0.0356938    0.1404251
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0508410   -0.0919589   -0.0097230
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0354982   -0.0654867   -0.0055098
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0127066   -0.0477868    0.0223735
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0344342   -0.0712604    0.0023920
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0617031    0.0109603    0.1124458
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0156157   -0.0206631    0.0518945
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0119638   -0.0414001    0.0653278
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0314436   -0.0809342    0.0180469
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0628164    0.0004129    0.1252198
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0759449   -0.1105306   -0.0413593
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                 0.0678816    0.0375002    0.0982631
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.0766607   -0.1232186   -0.0301027
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0129552   -0.0316898    0.0057794
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0641090   -0.0884148   -0.0398031
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1052617    0.0573400    0.1531833
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0146415   -0.0028895    0.0321725
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1689890   -0.1902320   -0.1477460
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1353611   -0.1672492   -0.1034730
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0035045   -0.0171237    0.0101147
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0084496   -0.0208022    0.0039030
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0033143   -0.0081775    0.0015489
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0604848   -0.1755520    0.0545823
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0283776   -0.0485394   -0.0082159
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0112682   -0.0274916    0.0049552
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1055618   -0.1192499   -0.0918737
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1047540   -0.1180358   -0.0914722
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0009931   -0.0268677    0.0288539
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0131374   -0.0136760    0.0399509
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0651430   -0.0852065   -0.0450795
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0860911   -0.1007934   -0.0713888
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0490146   -0.0642450   -0.0337843
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0485255   -0.0624062   -0.0346448
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.1520998   -0.1706432   -0.1335563
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0521560   -0.0672849   -0.0370270
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0507606   -0.0684547   -0.0330664
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0555664   -0.0729598   -0.0381730
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1091302   -0.1304768   -0.0877837
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1241780   -0.1404975   -0.1078586
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0862596   -0.0914572   -0.0810619
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1657053   -0.1781648   -0.1532458
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0349741   -0.0561659   -0.0137823
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0310147   -0.0387148   -0.0233145
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0641961   -0.0740850   -0.0543073
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0770183   -0.0913457   -0.0626909
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0531864   -0.0600255   -0.0463473
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0531039   -0.0593535   -0.0468544
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0383375   -0.0448023   -0.0318728
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0406822   -0.0459712   -0.0353932
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0423861   -0.0498252   -0.0349471
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0325068   -0.0395739   -0.0254397
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0072852   -0.0205312    0.0059609
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0055368   -0.0112827    0.0223564
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0069070   -0.0146248    0.0008109
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0074970   -0.0138806   -0.0011134
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0332069   -0.0401928   -0.0262209
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0243218   -0.0313832   -0.0172604
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0006250   -0.0110903    0.0123403
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0128758   -0.0207209   -0.0050306
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0095236   -0.0197671    0.0007199
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0146879   -0.0234942   -0.0058816
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0320759   -0.0478540   -0.0162977
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0371139   -0.0454479   -0.0287799
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0019800   -0.0089800    0.0050201
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0076807   -0.0119333   -0.0034281
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0158710   -0.0222953   -0.0094466
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0015682   -0.0089389    0.0058024
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0258758   -0.0377678   -0.0139838
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0428456   -0.0539480   -0.0317432
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0137001   -0.0167205   -0.0106798
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0161011   -0.0182397   -0.0139626


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0336824   -0.0658849   -0.0014799
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1020352   -0.1461845   -0.0578859
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.1442586   -0.1553584   -0.1331588
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0218549   -0.0450356    0.0013258
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0014629   -0.0396382    0.0367125
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1643126   -0.1830906   -0.1455346
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.0013347   -0.0085345    0.0112039
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0034526   -0.0083193    0.0014141
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0803907   -0.0907811   -0.0700002
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0546093   -0.0721102   -0.0371085
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0629524   -0.0714846   -0.0544202
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0501592   -0.0551386   -0.0451799
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0383528   -0.0427166   -0.0339890
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0175081   -0.0228924   -0.0121238
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0148687   -0.0225262   -0.0072113
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0149004   -0.0201971   -0.0096037
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0527908   -0.0626365   -0.0429450
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0146006   -0.0164813   -0.0127200


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0424572   -0.1039103    0.0189958
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0486908   -0.1439940    0.0466123
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0196854   -0.0940360    0.0546651
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0680521   -0.1167121   -0.0193920
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0493331   -0.1169624    0.0182962
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0667006   -0.1258041   -0.0075971
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0784502   -0.0378229    0.1947234
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.3654041    0.2927088    0.4380994
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.0073772   -0.0202351    0.0349895
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0058313   -0.0488584    0.0605210
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0620275    0.0419657    0.0820893
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.3748959   -0.3926883   -0.3571036
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0002972   -0.0284294    0.0278350
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0145396   -0.0268379    0.0559172
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0507385   -0.0214116    0.1228886
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0153427   -0.0274626    0.0581481
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0217275   -0.0709864    0.0275313
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0460874   -0.1065686    0.0143939
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0434075   -0.1153843    0.0285694
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1387613   -0.2096884   -0.0678342
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.1445423   -0.2002050   -0.0888796
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0511537   -0.0762249   -0.0260826
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0906202   -0.1412185   -0.0400219
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0336279   -0.0043567    0.0716125
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0049451   -0.0228248    0.0129346
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0571705   -0.1722769    0.0579359
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0171094   -0.0078078    0.0420266
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0008078   -0.0188462    0.0204618
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0121444   -0.0265156    0.0508044
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0209481   -0.0454386    0.0035424
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0004892   -0.0200506    0.0210289
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.0999438    0.0766667    0.1232209
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0048058   -0.0161662    0.0065545
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0150478   -0.0398169    0.0097213
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0794458   -0.0912290   -0.0676625
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0039595   -0.0184878    0.0264067
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0128222   -0.0302484    0.0046041
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0000824   -0.0088946    0.0090595
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0023447   -0.0103357    0.0056464
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0098793   -0.0009663    0.0207249
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0128220   -0.0085872    0.0342312
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0005900   -0.0105043    0.0093243
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0088851   -0.0010480    0.0188182
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0135008   -0.0268428   -0.0001587
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0051643   -0.0185493    0.0082207
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0050381   -0.0226535    0.0125774
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0057007   -0.0138933    0.0024918
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0143027    0.0045180    0.0240874
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0169698   -0.0308122   -0.0031274
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0024010   -0.0058920    0.0010899
