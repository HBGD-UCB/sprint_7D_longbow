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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

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
![](/tmp/2295929f-4e68-4f4c-98d1-75e5c02c1d83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2295929f-4e68-4f4c-98d1-75e5c02c1d83/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                3.7025024   3.5411650   3.8638397
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                3.5617739   3.4966452   3.6269026
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                3.6143235   3.1871216   4.0415255
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                3.5669632   3.4901541   3.6437723
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.8278767   3.7431509   3.9126025
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.9325075   3.8369269   4.0280880
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.2869588   3.2172744   3.3566432
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.2557016   3.1743570   3.3370462
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                3.5119771   3.2839369   3.7400172
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                3.4289583   3.3292643   3.5286523
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4628158   3.3824201   3.5432116
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.9557637   3.8916056   4.0199218
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                3.3296711   3.2329792   3.4263631
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                3.3097765   3.2522875   3.3672655
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.4938641   3.4042449   3.5834832
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.4918611   3.4510517   3.5326704
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.0383864   2.9913525   3.0854203
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.3404095   3.2960323   3.3847868
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                3.7133869   3.7030305   3.7237433
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                3.8453479   3.8135763   3.8771194
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                3.6340446   3.6019687   3.6661206
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                3.6337811   3.5702064   3.6973559
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.7688146   1.6417814   1.8958478
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.9401211   1.8886324   1.9916099
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                2.3203319   2.2199700   2.4206939
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.8868195   1.8242666   1.9493723
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9532236   1.8848914   2.0215558
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9879981   1.9149579   2.0610383
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.9991640   1.9266370   2.0716911
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.9934536   1.9177841   2.0691231
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.9104177   1.6868353   2.1340000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.9967708   1.9125354   2.0810063
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334324   1.7632325   1.9036323
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8095275   1.5155992   2.1034558
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.6786694   1.5960410   1.7612978
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.8394180   1.7895308   1.8893052
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                2.0912859   2.0154675   2.1671044
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9762701   1.9399307   2.0126095
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1035423   2.0516445   2.1554401
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9729951   1.9361073   2.0098829
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.6970281   1.6489161   1.7451402
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.5324703   1.4656119   1.5993286
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                2.1496804   2.0375146   2.2618462
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                2.0864348   2.0364961   2.1363734
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.9167488   1.9057867   1.9277110
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.9619371   1.9331792   1.9906950
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.8981152   1.8687119   1.9275185
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.9092243   1.7826417   2.0358068
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.1369642   1.0843968   1.1895317
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.1126057   1.0862661   1.1389453
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                0.8584449   0.8014640   0.9154257
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                1.1180339   1.0891617   1.1469062
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.2243619   1.1935351   1.2551887
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.2639592   1.2251609   1.3027575
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.2289153   1.1938629   1.2639677
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.3610425   1.3261629   1.3959220
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.2663360   1.1029658   1.4297061
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.1822801   1.1400492   1.2245109
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0024099   0.9643136   1.0405063
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9666026   0.8371462   1.0960590
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.0201698   0.9662678   1.0740718
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.1804531   1.1572580   1.2036482
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.1209821   1.0829759   1.1589882
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.1809545   1.1630633   1.1988457
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1653346   1.1406598   1.1900093
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.2306313   1.2107209   1.2505418
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.1627859   1.1384642   1.1871076
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.1179962   1.0802864   1.1557060
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                1.3076719   1.2200699   1.3952739
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                1.2984044   1.2682942   1.3285146
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.1063566   1.0996252   1.1130879
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.1127563   1.0958327   1.1296799
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.1975959   1.1863409   1.2088510
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.2458495   1.2162479   1.2754511
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8410530   0.7822021   0.8999039
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8464192   0.8297991   0.8630394
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.7604652   0.7292068   0.7917235
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8830901   0.8655623   0.9006179
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8751758   0.8569825   0.8933690
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9354822   0.9138654   0.9570990
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8427890   0.8202253   0.8653526
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8995993   0.8733411   0.9258575
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9617769   0.9361584   0.9873954
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8713850   0.8477730   0.8949969
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7667937   0.7421916   0.7913959
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8996303   0.8641864   0.9350742
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7727659   0.7433893   0.8021425
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7514790   0.7363733   0.7665847
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8359936   0.7947432   0.8772440
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8594442   0.8469474   0.8719410
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8781804   0.8621958   0.8941651
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8782817   0.8642678   0.8922957
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8525163   0.8322135   0.8728191
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.9681669   0.9413430   0.9949909
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.8858441   0.8293448   0.9423433
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.9320225   0.8952484   0.9687966
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.7945203   0.7891692   0.7998714
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.8295850   0.8191919   0.8399781
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.8491350   0.8434434   0.8548266
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.8573575   0.8404490   0.8742660


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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.1407285   -0.3114084    0.0299514
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0473603   -0.4808813    0.3861606
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.1046308   -0.0173319    0.2265935
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0312572   -0.1388129    0.0762985
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0830187   -0.3311510    0.1651135
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4929479    0.3891680    0.5967278
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0198946   -0.1314904    0.0917011
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0020030   -0.0999320    0.0959260
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.3020231    0.2372391    0.3668072
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.1319610    0.0987955    0.1651265
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0002635   -0.0710573    0.0705302
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.1713065    0.0346971    0.3079160
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.4335125   -0.5491281   -0.3178969
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0347745   -0.0652393    0.1347883
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0057104   -0.1107161    0.0992952
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.0863532   -0.1488135    0.3215199
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0239049   -0.3262334    0.2784235
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.1607486    0.0677546    0.2537426
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.1150158   -0.1990788   -0.0309528
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.1305472   -0.1906628   -0.0704315
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.1645579   -0.2469263   -0.0821895
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                 -0.0632456   -0.1862947    0.0598035
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0451883    0.0142183    0.0761583
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0111090   -0.1181369    0.1403550
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0243586   -0.0828929    0.0341758
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                  0.2595891    0.1954963    0.3236819
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0395973   -0.0100971    0.0892917
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.1321271    0.0879165    0.1763378
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0840559   -0.2528913    0.0847795
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0358073   -0.1692570    0.0976424
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.1602833    0.1016404    0.2189261
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0599724    0.0179936    0.1019513
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0652968    0.0336501    0.0969434
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0447897   -0.0897293    0.0001499
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0092675   -0.1018834    0.0833484
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0063997   -0.0112179    0.0240173
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0482536    0.0166390    0.0798681
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0053662   -0.0557852    0.0665176
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.1226249    0.0867335    0.1585164
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0603064    0.0309508    0.0896619
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0568103    0.0231956    0.0904251
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0903919   -0.1250827   -0.0557012
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1328365    0.0897760    0.1758971
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0212868   -0.0539473    0.0113736
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0234506   -0.0196034    0.0665046
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0001013   -0.0207213    0.0209240
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.1156507    0.0810752    0.1502261
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0461784   -0.0212345    0.1135913
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0350647    0.0238684    0.0462610
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0082225   -0.0097024    0.0261475
