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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              218     237
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              172     174
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11     194
0-3 months     ki0047075b-MAL-ED          INDIA                          1              183     194
0-3 months     ki0047075b-MAL-ED          NEPAL                          0              100     168
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               68     168
0-3 months     ki0047075b-MAL-ED          PERU                           0              204     260
0-3 months     ki0047075b-MAL-ED          PERU                           1               56     260
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              195     215
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     224
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0      67
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               67      67
0-3 months     ki1000108-IRC              INDIA                          0                0     280
0-3 months     ki1000108-IRC              INDIA                          1              280     280
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               53     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              581     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              546     720
0-3 months     ki1114097-CONTENT          PERU                           0                2      29
0-3 months     ki1114097-CONTENT          PERU                           1               27      29
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            37340   40002
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             2662   40002
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             3246    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              364    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1              214     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     214
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214     214
3-6 months     ki1000108-IRC              INDIA                          0                0     297
3-6 months     ki1000108-IRC              INDIA                          1              297     297
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463     521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               43     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              531     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521     695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              602     740
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              138     740
3-6 months     ki1114097-CONTENT          PERU                           0               14     214
3-6 months     ki1114097-CONTENT          PERU                           1              200     214
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            22938   25100
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             2162   25100
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             3278    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              400    3678
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               16     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              204     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               14     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1              210     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0              124     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     223
6-12 months    ki0047075b-MAL-ED          PERU                           0              183     237
6-12 months    ki0047075b-MAL-ED          PERU                           1               54     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              211     221
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     221
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     225
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              225     225
6-12 months    ki1000108-IRC              INDIA                          0                0     299
6-12 months    ki1000108-IRC              INDIA                          1              299     299
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               52     481
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              429     481
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               40     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              505     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              174     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              502     676
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              612     754
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              142     754
6-12 months    ki1114097-CONTENT          PERU                           0               14     213
6-12 months    ki1114097-CONTENT          PERU                           1              199     213
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0            17936   19617
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1681   19617
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             5457    6221
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              764    6221
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              189     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               14     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1              211     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     219
12-24 months   ki0047075b-MAL-ED          NEPAL                          1               96     219
12-24 months   ki0047075b-MAL-ED          PERU                           0              145     191
12-24 months   ki0047075b-MAL-ED          PERU                           1               46     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              193     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     205
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     228
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              228     228
12-24 months   ki1000108-IRC              INDIA                          0                0     297
12-24 months   ki1000108-IRC              INDIA                          1              297     297
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              371     419
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               37     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              421     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              327     495
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              438     552
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              114     552
12-24 months   ki1114097-CONTENT          PERU                           0                5      38
12-24 months   ki1114097-CONTENT          PERU                           1               33      38
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             8472    9271
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              799    9271
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             6303    7124
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              821    7124


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7c796ed9-915c-489b-9726-0ea48a61ecd1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7c796ed9-915c-489b-9726-0ea48a61ecd1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0007125   -0.1175369    0.1189619
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0315335   -0.0648299    0.0017628
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0268340   -0.2622077    0.2085397
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0251308   -0.0636499    0.0133882
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0631158    0.0171588    0.1090728
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0941176    0.0373650    0.1508702
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1572673   -0.1944514   -0.1200832
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.1213101   -0.1816826   -0.0609375
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0554508   -0.1777984    0.0668968
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1140043   -0.1626873   -0.0653213
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0570297   -0.0973608   -0.0166986
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0700124   -0.0324159    0.1724407
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1120786   -0.1898327   -0.0343246
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.1203309   -0.1491539   -0.0915080
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0817337   -0.1451842   -0.0182833
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0376272   -0.0565419   -0.0187124
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.1807926   -0.2101561   -0.1514292
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.1033721   -0.1252319   -0.0815124
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                 0.0672197    0.0622119    0.0722274
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.1155722    0.0989346    0.1322098
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                 0.0666310    0.0508287    0.0824334
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0760710    0.0287227    0.1234194
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0987350   -0.1654114   -0.0320587
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0164667   -0.0406667    0.0077333
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0370696   -0.1489711    0.0748320
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0403393   -0.0697024   -0.0109762
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0262870   -0.0622801    0.0097060
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0151878   -0.0566879    0.0263123
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0251560   -0.0108223    0.0611344
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0353953   -0.0243955    0.0951861
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0317692   -0.1529922    0.0894538
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0063157   -0.0337554    0.0463869
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0691872   -0.1025378   -0.0358366
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0686403   -0.1988562    0.0615756
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0738749   -0.1418397   -0.0059101
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0472474   -0.0706810   -0.0238137
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0689087   -0.1239153   -0.0139021
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0238687   -0.0410548   -0.0066827
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0825065    0.0441852    0.1208279
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0081609   -0.0099790    0.0263008
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.1643436   -0.1878014   -0.1408858
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1671576   -0.2147513   -0.1195638
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                 0.0053214   -0.0719190    0.0825618
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                 0.0132767   -0.0101777    0.0367312
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0048537   -0.0100114    0.0003040
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.0112682   -0.0039741    0.0265105
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0097755   -0.0235776    0.0040267
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0012383   -0.0546114    0.0521348
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0785055   -0.1035298   -0.0534811
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0809145   -0.0919192   -0.0699099
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0671700   -0.1242627   -0.0100773
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0783726   -0.0907993   -0.0659458
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0518744   -0.0655972   -0.0381517
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0432105   -0.0605672   -0.0258538
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.0370450   -0.0534155   -0.0206745
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0382198   -0.0651107   -0.0113288
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0248240   -0.0903350    0.0406870
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0565033   -0.0744022   -0.0386044
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1234062   -0.1395350   -0.1072773
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1377850   -0.2109127   -0.0646573
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0861018   -0.1161159   -0.0560877
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0486170   -0.0583029   -0.0389312
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0911735   -0.1155256   -0.0668213
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0603531   -0.0675559   -0.0531503
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0409175   -0.0544827   -0.0273524
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0283243   -0.0369293   -0.0197194
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0617600   -0.0722128   -0.0513073
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0604523   -0.0829327   -0.0379719
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                -0.0124301   -0.0579406    0.0330804
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0234424   -0.0364106   -0.0104742
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0753486   -0.0782452   -0.0724521
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0688078   -0.0776744   -0.0599413
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0404664   -0.0451364   -0.0357965
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0234401   -0.0355400   -0.0113402
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0246671   -0.0416412   -0.0076931
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0172357   -0.0229113   -0.0115602
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0209036   -0.0390881   -0.0027191
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0091521   -0.0144789   -0.0038252
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0331286   -0.0396662   -0.0265909
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0252571   -0.0335125   -0.0170017
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0123653   -0.0203644   -0.0043662
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0005452   -0.0136822    0.0147726
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0232214   -0.0418622   -0.0045805
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0146757   -0.0227353   -0.0066162
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0390757   -0.0473040   -0.0308474
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0367428   -0.0604996   -0.0129861
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0342381   -0.0484092   -0.0200671
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0419570   -0.0468003   -0.0371138
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0106204   -0.0230576    0.0018169
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0079565   -0.0119894   -0.0039237
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0023229   -0.0090541    0.0044083
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0074843   -0.0124318   -0.0025368
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0143074   -0.0210489   -0.0075659
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0116371   -0.0231803   -0.0000939
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                -0.0241701   -0.0397583   -0.0085819
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0241028   -0.0383039   -0.0099017
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0189716   -0.0208883   -0.0170548
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0175916   -0.0237909   -0.0113923
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0143072   -0.0163216   -0.0122928
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0168883   -0.0221060   -0.0116705


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0289484   -0.0610285    0.0031317
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0252274   -0.0639359    0.0134811
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0756641    0.0398686    0.1114597
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1495227   -0.1815151   -0.1175302
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1085575   -0.1542119   -0.0629030
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0507910   -0.0896375   -0.0119446
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.1194091   -0.1464464   -0.0923719
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                 0.0704374    0.0654823    0.0753924
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0213486   -0.0485627    0.0058655
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0032881   -0.0348581    0.0414343
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0691618   -0.1015337   -0.0367899
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0502117   -0.0723801   -0.0280432
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.1648683   -0.1859149   -0.1438218
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0034650   -0.0083318    0.0014017
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0480281   -0.0588872   -0.0371690
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240568   -0.1398123   -0.1083013
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0526694   -0.0619560   -0.0433828
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0615138   -0.0709958   -0.0520318
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0747881   -0.0776266   -0.0719497
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0383754   -0.0427394   -0.0340114
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0296781   -0.0348595   -0.0244967
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0389391   -0.0468100   -0.0310683
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0410728   -0.0456642   -0.0364813
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0137560   -0.0196138   -0.0078982
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0188526   -0.0206982   -0.0170071
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0146046   -0.0164849   -0.0127243


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0322460   -0.1550938    0.0906017
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                  0.0017032   -0.2368016    0.2402079
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0310018   -0.0420249    0.1040285
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0359572   -0.0349477    0.1068621
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0585535   -0.1902310    0.0731241
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1270421    0.0169596    0.2371246
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0082523   -0.0911766    0.0746721
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0441066   -0.0221032    0.1103163
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0774205    0.0408136    0.1140273
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0483525    0.0315289    0.0651762
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0094400   -0.0406522    0.0595323
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0822684    0.0113362    0.1532006
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0032697   -0.1189596    0.1124202
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0110993   -0.0438349    0.0660334
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0102393   -0.0595416    0.0800202
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.0380849   -0.0895893    0.1657592
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0005469   -0.1338720    0.1349658
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0266276   -0.0452637    0.0985188
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0450400   -0.0125889    0.1026689
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0743457   -0.1167436   -0.0319478
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0028140   -0.0558746    0.0502467
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                  0.0079553   -0.0727676    0.0886782
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0161219   -0.0001005    0.0323443
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0085372   -0.0462967    0.0633711
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0024091   -0.0297462    0.0249281
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0112026   -0.0696320    0.0472269
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0086639   -0.0134623    0.0307902
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                 -0.0011748   -0.0326568    0.0303073
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0316794   -0.0995915    0.0362328
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0143788   -0.0892641    0.0605065
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0374848    0.0059465    0.0690230
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0308204    0.0054254    0.0562154
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0125932   -0.0034710    0.0286574
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0013077   -0.0234840    0.0260994
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0110123   -0.0583344    0.0363098
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0065408   -0.0024711    0.0155526
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0170263    0.0040524    0.0300002
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0074314   -0.0104664    0.0253292
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.0117515   -0.0071971    0.0307002
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0078715   -0.0026591    0.0184020
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0129105   -0.0034114    0.0292324
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.0085456   -0.0117630    0.0288542
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0023329   -0.0228085    0.0274742
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0077189   -0.0226947    0.0072570
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0026638   -0.0104109    0.0157386
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0051614   -0.0135153    0.0031925
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0026703   -0.0106973    0.0160380
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0000673   -0.0210197    0.0211543
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0013800   -0.0050516    0.0078115
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0025811   -0.0081686    0.0030064
