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

**Outcome Variable:** y_rate_len

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
![](/tmp/bfd4213a-c7d5-4b00-af8d-44b731098bec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bfd4213a-c7d5-4b00-af8d-44b731098bec/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                3.6634136   3.4453388   3.8814885
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                3.5635748   3.4978191   3.6293304
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                3.5860027   3.1288111   4.0431943
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                3.5677680   3.4908125   3.6447234
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.7934080   3.6954219   3.8913940
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.8704389   3.7445319   3.9963460
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.3059532   3.2337997   3.3781068
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.4386741   3.3199695   3.5573787
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                3.5105399   3.2787499   3.7423298
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                3.4291076   3.3293126   3.5289027
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4621238   3.3810245   3.5432231
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6628519   3.4606895   3.8650143
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                3.3207366   3.1580801   3.4833931
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                3.3120552   3.2536366   3.3704739
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.3820778   3.2520434   3.5121122
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.4918469   3.4508488   3.5328449
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.1641309   3.1033793   3.2248824
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.3470778   3.3011983   3.3929572
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                3.7116642   3.7012219   3.7221065
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                3.8096327   3.7756507   3.8436147
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                3.6386604   3.6057642   3.6715565
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                3.6382375   3.5394033   3.7370716
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.7803988   1.6360157   1.9247819
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.9397752   1.8881416   1.9914087
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.8871927   1.6401866   2.1341989
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.8834834   1.8202272   1.9467397
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9554460   1.8788765   2.0320154
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9869896   1.9005273   2.0734518
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                2.0097542   1.9335965   2.0859119
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0491923   1.9220383   2.1763463
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.8995303   1.6307124   2.1683482
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.9953550   1.9104887   2.0802212
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334847   1.7632731   1.9036964
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8085479   1.5184171   2.0986788
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.7830145   1.6414000   1.9246290
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.8408895   1.7897537   1.8920252
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.8567652   1.7335933   1.9799371
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9742462   1.9377796   2.0107129
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1106047   2.0270329   2.1941766
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9707944   1.9314858   2.0101030
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.7100753   1.6605966   1.7595541
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.7018846   1.6055795   1.7981897
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                2.0790405   1.9147652   2.2433158
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                2.0845441   2.0345629   2.1345254
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.9160540   1.9049501   1.9271578
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.9632497   1.9305390   1.9959605
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.8949870   1.8649401   1.9250340
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.9296489   1.8136031   2.0456947
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.1326428   1.0774480   1.1878377
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.1129614   1.0865982   1.1393246
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                1.1483552   1.0224892   1.2742213
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                1.1192358   1.0901214   1.1483502
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.2110519   1.1782951   1.2438087
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.2417833   1.1994208   1.2841457
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.2114950   1.1733443   1.2496457
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.2059496   1.1435029   1.2683963
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.2637990   1.1019653   1.4256327
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.1825199   1.1402722   1.2247676
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0028823   0.9646145   1.0411501
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9777021   0.8091411   1.1462632
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.0690939   0.9976848   1.1405030
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.1810793   1.1577682   1.2043903
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.0797005   1.0213740   1.1380271
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.1805802   1.1626384   1.1985221
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.2052096   1.1732170   1.2372021
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.2360762   1.2154099   1.2567426
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.1667265   1.1418466   1.1916063
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.1816348   1.1294023   1.2338672
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                1.3222453   1.2104532   1.4340374
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                1.2995607   1.2694308   1.3296906
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.1039828   1.0971455   1.1108202
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.1404615   1.1193079   1.1616151
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.1960492   1.1848720   1.2072264
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.2540531   1.2265182   1.2815880
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8410280   0.7821656   0.8998903
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8464215   0.8298013   0.8630417
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8394183   0.7612508   0.9175858
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8830904   0.8654257   0.9007551
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8457132   0.8260393   0.8653871
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8825670   0.8574630   0.9076710
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8400889   0.8159887   0.8641890
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8660666   0.8264020   0.9057312
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.8705257   0.8129043   0.9281472
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8698539   0.8460780   0.8936298
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7662647   0.7415660   0.7909634
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7851985   0.7143457   0.8560512
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7336660   0.6911078   0.7762242
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7513637   0.7361059   0.7666216
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8325349   0.7911933   0.8738766
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8597506   0.8472412   0.8722599
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8733923   0.8543573   0.8924273
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8766933   0.8617709   0.8916156
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8433582   0.8228181   0.8638983
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8543970   0.8203606   0.8884333
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.8858441   0.8293448   0.9423433
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.9320225   0.8952484   0.9687966
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.7938172   0.7883234   0.7993111
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.8245480   0.8065302   0.8425658
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.8474488   0.8417412   0.8531564
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.8631056   0.8468921   0.8793192


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.5715787   3.5085237   3.6346338
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.5688019   3.4917177   3.6458861
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.8245872   3.7469221   3.9022522
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.3345392   3.2720665   3.3970119
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.4366827   3.3435842   3.5297813
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4719810   3.3940197   3.5499422
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.3130250   3.2580425   3.3680074
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                3.7181837   3.7078402   3.7285271
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9694808   1.9121182   2.0268433
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9877371   1.9066803   2.0687939
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8323273   1.7640304   1.9006242
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8344466   1.7863211   1.8825720
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.7085479   1.6644702   1.7526256
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.9201192   1.9096572   1.9305812
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.2246950   1.1984367   1.2509532
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0017429   0.9644127   1.0390732
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.1689727   1.1465777   1.1913678
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.1695341   1.1470637   1.1920045
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.1071087   1.1003799   1.1138376
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.2031726   1.1927863   1.2135589
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8618683   0.8460858   0.8776508
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7673730   0.7437452   0.7910008
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7493363   0.7349635   0.7637092
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8456379   0.8278807   0.8633951
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.7964657   0.7911550   0.8017764
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.8492532   0.8437965   0.8547098


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0998388   -0.3276116    0.1279340
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0182347   -0.4818577    0.4453883
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0770309   -0.0825117    0.2365736
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.1327208   -0.0061925    0.2716342
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0814322   -0.3337924    0.1709279
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2007281   -0.0170947    0.4185508
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0086814   -0.1815104    0.1641477
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.1097691   -0.0265753    0.2461134
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.1829469    0.1068176    0.2590762
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0979686    0.0636480    0.1322891
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0004229   -0.1049810    0.1041352
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.1593764    0.0060385    0.3127142
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0037093   -0.2586865    0.2512680
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0315436   -0.0839493    0.1470365
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0394382   -0.1087784    0.1876547
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.0958246   -0.1860714    0.3777206
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0249368   -0.3234423    0.2735688
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0578750   -0.0926891    0.2084390
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.1174810   -0.0109757    0.2459378
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.1398103   -0.2321652   -0.0474555
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0081907   -0.1164627    0.1000812
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                  0.0055036   -0.1662069    0.1772141
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0471958    0.0122669    0.0821246
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0346619   -0.0844954    0.1538193
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0196814   -0.0808491    0.0414863
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0291194   -0.1583088    0.1000700
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0307314   -0.0228185    0.0842812
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                 -0.0055454   -0.0787238    0.0676329
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0812790   -0.2485364    0.0859783
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0251802   -0.1980305    0.1476702
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.1119854    0.0368677    0.1871031
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.1008797    0.0398559    0.1619035
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0308667   -0.0072204    0.0689537
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0149083   -0.0429470    0.0727636
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0226846   -0.1384658    0.0930966
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0364786    0.0150082    0.0579490
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0580039    0.0282092    0.0877986
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0053935   -0.0557703    0.0665573
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.0436721   -0.0364665    0.1238108
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0368538    0.0049591    0.0687485
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0259778   -0.0204344    0.0723900
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0006718   -0.0630058    0.0616621
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0189338   -0.0561005    0.0939680
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0176977   -0.0275129    0.0629083
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0272156   -0.0159772    0.0704084
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0033010   -0.0208859    0.0274878
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0110388   -0.0287151    0.0507926
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0461784   -0.0212345    0.1135913
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0307307    0.0121441    0.0493174
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0156568   -0.0013748    0.0326885
