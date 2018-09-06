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
![](/tmp/d95177e1-0da3-4b6d-b803-7f0505ffc193/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d95177e1-0da3-4b6d-b803-7f0505ffc193/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0080755   -0.0983471    0.1144982
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0317029   -0.0649856    0.0015799
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0158905   -0.2414255    0.2096444
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0254501   -0.0639434    0.0130431
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1117318    0.0715736    0.1518900
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1903354    0.1467073    0.2339635
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1533441   -0.1872264   -0.1194619
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0480721   -0.0809246   -0.0152196
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0621706   -0.1731885    0.0488474
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1136286   -0.1620060   -0.0652513
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0562767   -0.0966784   -0.0158751
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0709372   -0.0202102    0.1620846
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0675328   -0.1095722   -0.0254935
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.1216731   -0.1498076   -0.0935385
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0246049   -0.0672405    0.0180307
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0382612   -0.0569200   -0.0196024
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2497715   -0.2702823   -0.2292607
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.1102475   -0.1311163   -0.0893788
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                 0.0679700    0.0629999    0.0729401
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.1331259    0.1173176    0.1489343
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                 0.0646595    0.0492783    0.0800406
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0653889    0.0347825    0.0959954
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0987052   -0.1652998   -0.0321106
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0164309   -0.0406156    0.0077538
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.1184285   -0.1768891   -0.0599679
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0390126   -0.0681864   -0.0098388
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0283503   -0.0567064    0.0000059
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0184787   -0.0480567    0.0110992
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0244104   -0.0114684    0.0602892
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0380866   -0.0219030    0.0980762
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0367298   -0.1578705    0.0844109
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0071140   -0.0329623    0.0471903
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0685103   -0.1018653   -0.0351552
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0311663   -0.1552221    0.0928896
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1401229   -0.1831689   -0.0970768
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0481189   -0.0712498   -0.0249881
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0011012   -0.0414836    0.0392812
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0236318   -0.0407834   -0.0064802
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0537600    0.0273739    0.0801462
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0039458   -0.0134223    0.0213140
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.1700456   -0.1929427   -0.1471485
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.2493304   -0.2838424   -0.2148184
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                 0.0500425   -0.0035789    0.1036640
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                 0.0141481   -0.0092667    0.0375629
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0048908   -0.0099794    0.0001978
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.0076695   -0.0057852    0.0211243
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0080980   -0.0215975    0.0054015
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0109420   -0.0734545    0.0515705
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0698356   -0.0925229   -0.0471483
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0810111   -0.0920152   -0.0700070
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.1812205   -0.2158200   -0.1466209
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0789366   -0.0913254   -0.0665479
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0493941   -0.0619768   -0.0368113
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0387619   -0.0540094   -0.0235143
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.0347639   -0.0506536   -0.0188742
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0178381   -0.0373290    0.0016528
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0123161   -0.0295391    0.0541714
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0560519   -0.0735956   -0.0385082
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1237504   -0.1397701   -0.1077307
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1354385   -0.1802857   -0.0905912
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1059014   -0.1231310   -0.0886719
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0489548   -0.0585302   -0.0393793
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0893092   -0.1137621   -0.0648564
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0605009   -0.0677009   -0.0533009
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0528346   -0.0632753   -0.0423940
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0300217   -0.0383061   -0.0217373
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0634129   -0.0735985   -0.0532274
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0917086   -0.1072661   -0.0761511
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                -0.0123422   -0.0577556    0.0330713
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0234376   -0.0364055   -0.0104698
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0746615   -0.0775088   -0.0718142
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0797188   -0.0868021   -0.0726355
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0397951   -0.0444744   -0.0351158
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0253274   -0.0383746   -0.0122802
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0193009   -0.0341836   -0.0044182
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0170199   -0.0226842   -0.0113555
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0101375   -0.0171859   -0.0030891
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0091819   -0.0144460   -0.0039178
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0259640   -0.0320854   -0.0198426
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0128570   -0.0202006   -0.0055134
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0122238   -0.0201356   -0.0043120
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0001418   -0.0138707    0.0141543
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0006753   -0.0130177    0.0143683
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0145055   -0.0225556   -0.0064553
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0388280   -0.0470223   -0.0306336
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045899   -0.0063236    0.0155034
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0201864   -0.0305470   -0.0098258
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0417439   -0.0465562   -0.0369317
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0087315   -0.0172838   -0.0001793
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0078853   -0.0118898   -0.0038808
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0045247   -0.0013779    0.0104272
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0052512   -0.0100027   -0.0004997
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0117321   -0.0183391   -0.0051250
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0261796    0.0174346    0.0349246
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                -0.0241701   -0.0397583   -0.0085819
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0241028   -0.0383039   -0.0099017
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0190884   -0.0209562   -0.0172205
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0135402   -0.0170617   -0.0100187
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0138524   -0.0158732   -0.0118316
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0180709   -0.0236825   -0.0124592


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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0397784   -0.1507958    0.0712390
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.0095596   -0.2379146    0.2187954
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0786036    0.0178793    0.1393279
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.1052720    0.0643263    0.1462178
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0514580   -0.1709462    0.0680301
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1272139    0.0275158    0.2269121
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0541402   -0.1023704   -0.0059100
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0136563   -0.0584781    0.0311655
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.1395239    0.1102065    0.1688414
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0651559    0.0486623    0.0816495
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0007294   -0.0334858    0.0349447
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0822743    0.0113277    0.1532210
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                  0.0794159    0.0143050    0.1445267
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0098715   -0.0237876    0.0435306
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0136762   -0.0560849    0.0834373
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.0438438   -0.0837480    0.1714355
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0373440   -0.0915482    0.1662362
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0920039    0.0431369    0.1408710
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0225306   -0.0663380    0.0212767
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0498142   -0.0813055   -0.0183228
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0792848   -0.1207012   -0.0378685
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                 -0.0358944   -0.0946213    0.0228324
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0125604   -0.0018386    0.0269593
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0028440   -0.0664928    0.0608049
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0111755   -0.0363200    0.0139690
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                  0.1022838    0.0654683    0.1390993
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0106322   -0.0091546    0.0304190
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.0169258   -0.0081404    0.0419921
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0683680   -0.1116655   -0.0250705
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0116881   -0.0581592    0.0347831
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0569467    0.0372678    0.0766256
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0288084    0.0033204    0.0542964
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0228130    0.0094962    0.0361297
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0282957   -0.0468035   -0.0097878
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0110955   -0.0583309    0.0361399
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 -0.0050573   -0.0124324    0.0023179
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0144677    0.0006549    0.0282805
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0022810   -0.0136353    0.0181974
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.0009556   -0.0077817    0.0096929
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0131070    0.0033606    0.0228534
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0123655   -0.0035565    0.0282876
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0151808   -0.0310574    0.0006958
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0434179    0.0297238    0.0571120
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0215575   -0.0329817   -0.0101332
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0008462   -0.0085589    0.0102513
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0097759   -0.0173544   -0.0021973
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0379117    0.0268354    0.0489880
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0000673   -0.0210197    0.0211543
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0055481    0.0017302    0.0093661
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0042185   -0.0102365    0.0017995
