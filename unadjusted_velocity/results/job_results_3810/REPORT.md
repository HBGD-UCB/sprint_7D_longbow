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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/a5a70d18-aea7-4cf0-832f-a57e21be5a1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a5a70d18-aea7-4cf0-832f-a57e21be5a1a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0004876   -0.0570413    0.0560660
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0539070   -0.0922571   -0.0155569
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2110830    0.1405928    0.2815733
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1690268    0.0926793    0.2453743
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0133780   -0.0747128    0.0479568
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0252734   -0.0762072    0.0256604
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1096373    0.0621630    0.1571115
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0310734   -0.0193666    0.0815134
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.1102339   -0.1814549   -0.0390128
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.1741454   -0.2101465   -0.1381442
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0859016   -0.1542820   -0.0175213
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1108755   -0.1679782   -0.0537729
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1131540   -0.2244211   -0.0018868
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0352855   -0.0761396    0.0055686
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.3981282   -0.4476291   -0.3486274
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.3746070   -0.4472021   -0.3020119
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0152660   -0.0017643    0.0322964
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0234810   -0.0571934    0.0102314
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.1271197   -0.1782303   -0.0760091
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1212884   -0.1407479   -0.1018289
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.1890362   -0.2055807   -0.1724916
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.1050255   -0.1198629   -0.0901881
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0710564    0.0660927    0.0760200
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.1222122   -0.2121055   -0.0323189
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0711678    0.0438349    0.0985007
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0657908    0.0477333    0.0838484
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0241571   -0.0589121    0.0105980
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0203749   -0.0512123    0.0104624
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0369362   -0.0134442    0.0873167
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0885075    0.0361252    0.1408898
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0465698   -0.0964636    0.0033240
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0357181   -0.0692099   -0.0022262
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0127503   -0.0489481    0.0234475
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0340977   -0.0725383    0.0043429
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0659437    0.0113124    0.1205750
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0142028   -0.0228140    0.0512196
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0394803   -0.0172174    0.0961780
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0263608   -0.0767320    0.0240104
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0263555   -0.1050968    0.0523858
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0796951   -0.1148153   -0.0445750
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                 0.0749079    0.0437677    0.1060481
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0493258   -0.0168757    0.1155273
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0126576   -0.0306532    0.0053380
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0640420   -0.1286650    0.0005811
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1101590    0.0603445    0.1599735
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0138923   -0.0037047    0.0314893
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1712940   -0.1932253   -0.1493628
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1482932   -0.1841255   -0.1124610
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0081234   -0.0066070    0.0228539
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0044759   -0.0177587    0.0088068
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0033490   -0.0082114    0.0015135
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0555168   -0.1882183    0.0771848
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0110274   -0.0346820    0.0126271
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0082730   -0.0251179    0.0085719
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0691896   -0.0845052   -0.0538741
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0877732   -0.1016031   -0.0739432
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0009858   -0.0268815    0.0288532
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0131459   -0.0136710    0.0399629
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0655372   -0.0859287   -0.0451457
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0858229   -0.1007516   -0.0708941
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0490675   -0.0643316   -0.0338034
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0484503   -0.0623968   -0.0345038
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0454759   -0.0732587   -0.0176930
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0344206   -0.0506787   -0.0181624
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0522790   -0.0834362   -0.0211218
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0560907   -0.0767545   -0.0354269
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1243675   -0.1628164   -0.0859186
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1239440   -0.1410859   -0.1068021
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0856273   -0.0909181   -0.0803365
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0938100   -0.1158276   -0.0717923
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0368256   -0.0584936   -0.0151577
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0307163   -0.0384290   -0.0230035
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0619599   -0.0720504   -0.0518693
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0652101   -0.0811352   -0.0492851
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0482981   -0.0557153   -0.0408808
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0517053   -0.0584226   -0.0449879
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0354433   -0.0424992   -0.0283873
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0398354   -0.0452854   -0.0343854
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0137284   -0.0216959   -0.0057609
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0199771   -0.0271651   -0.0127890
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0072852   -0.0205312    0.0059609
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0055368   -0.0112827    0.0223564
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0110085   -0.0192387   -0.0027783
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0091049   -0.0156641   -0.0025458
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0332069   -0.0401928   -0.0262209
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0243218   -0.0313832   -0.0172604
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0011641   -0.0122259    0.0145541
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0129510   -0.0210977   -0.0048044
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0130846   -0.0257138   -0.0004553
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0160408   -0.0256351   -0.0064465
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0479357   -0.0681733   -0.0276980
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0376937   -0.0461425   -0.0292450
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0038484   -0.0065071    0.0142039
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0073369   -0.0116458   -0.0030281
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0176539   -0.0242929   -0.0110149
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0087051   -0.0171395   -0.0002707
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0446664   -0.0595967   -0.0297361
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0598204   -0.0727613   -0.0468795
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0125045   -0.0157216   -0.0092874
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0157184   -0.0179129   -0.0135238


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0534193   -0.1217497    0.0149111
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0420562   -0.1459688    0.0618563
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0118954   -0.0916212    0.0678305
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0785639   -0.1478314   -0.0092963
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0639115   -0.1437145    0.0158914
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0249739   -0.1140614    0.0641136
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0778685   -0.0406618    0.1963988
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0235213   -0.0643444    0.1113870
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0387470   -0.0730659   -0.0044282
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0058313   -0.0488584    0.0605210
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                  0.0840107    0.0617875    0.1062339
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.1932686   -0.2835218   -0.1030153
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0053770   -0.0384178    0.0276638
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0037821   -0.0426814    0.0502457
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0515712   -0.0211068    0.1242492
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0108518   -0.0492406    0.0709441
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0213474   -0.0741485    0.0314537
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0517409   -0.1177320    0.0142502
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0658411   -0.1416823    0.0100001
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0533396   -0.1395581    0.0328788
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0255821   -0.0987419    0.0475777
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0513844   -0.1155353    0.0127665
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0962667   -0.1490979   -0.0434355
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0230008   -0.0190103    0.0650119
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0125994   -0.0324341    0.0072354
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0521678   -0.1848750    0.0805394
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0027544   -0.0264444    0.0319532
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0185835   -0.0392192    0.0020522
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0121601   -0.0265147    0.0508349
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0202856   -0.0455577    0.0049865
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0006172   -0.0200588    0.0212933
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                  0.0110553   -0.0211349    0.0432456
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0038117   -0.0411984    0.0335750
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0004235   -0.0416736    0.0425205
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0081827   -0.0322475    0.0158821
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                  0.0061094   -0.0168903    0.0291091
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0032503   -0.0221031    0.0156025
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0034072   -0.0134141    0.0065997
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0043921   -0.0132042    0.0044199
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0062486   -0.0169794    0.0044821
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0128220   -0.0085872    0.0342312
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                  0.0019036   -0.0086206    0.0124278
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0088851   -0.0010480    0.0188182
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0141151   -0.0297887    0.0015584
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0029563   -0.0188166    0.0129041
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0102419   -0.0116885    0.0321724
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 -0.0111854   -0.0224015    0.0000308
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0089488   -0.0017850    0.0196827
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 -0.0151540   -0.0349120    0.0046041
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0032139   -0.0069683    0.0005406
