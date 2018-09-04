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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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

agecat      studyid                    country                        nrooms    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      139     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        5     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       49     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        1     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       28     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       19     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       46     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        4     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               0       99     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               1        3     174
Birth       ki0047075b-MAL-ED          INDIA                          1                0       67     191
Birth       ki0047075b-MAL-ED          INDIA                          1                1        2     191
Birth       ki0047075b-MAL-ED          INDIA                          2                0       64     191
Birth       ki0047075b-MAL-ED          INDIA                          2                1        4     191
Birth       ki0047075b-MAL-ED          INDIA                          3                0       31     191
Birth       ki0047075b-MAL-ED          INDIA                          3                1        1     191
Birth       ki0047075b-MAL-ED          INDIA                          4+               0       22     191
Birth       ki0047075b-MAL-ED          INDIA                          4+               1        0     191
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       33     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          2                0       21     171
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        0     171
Birth       ki0047075b-MAL-ED          NEPAL                          3                0       17     171
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        0     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+               0       94     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+               1        3     171
Birth       ki0047075b-MAL-ED          PERU                           1                0       17     259
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     259
Birth       ki0047075b-MAL-ED          PERU                           2                0       50     259
Birth       ki0047075b-MAL-ED          PERU                           2                1        1     259
Birth       ki0047075b-MAL-ED          PERU                           3                0       58     259
Birth       ki0047075b-MAL-ED          PERU                           3                1        1     259
Birth       ki0047075b-MAL-ED          PERU                           4+               0      127     259
Birth       ki0047075b-MAL-ED          PERU                           4+               1        5     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       23     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      159     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        1     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       22     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       31     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       54     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       36      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0       28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               0        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0      90
Birth       ki1000108-IRC              INDIA                          1                0      167     386
Birth       ki1000108-IRC              INDIA                          1                1        8     386
Birth       ki1000108-IRC              INDIA                          2                0      153     386
Birth       ki1000108-IRC              INDIA                          2                1        8     386
Birth       ki1000108-IRC              INDIA                          3                0       33     386
Birth       ki1000108-IRC              INDIA                          3                1        0     386
Birth       ki1000108-IRC              INDIA                          4+               0       17     386
Birth       ki1000108-IRC              INDIA                          4+               1        0     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1      27
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           2                0        1       2
Birth       ki1114097-CONTENT          PERU                           2                1        0       2
Birth       ki1114097-CONTENT          PERU                           3                0        0       2
Birth       ki1114097-CONTENT          PERU                           3                1        0       2
Birth       ki1114097-CONTENT          PERU                           4+               0        1       2
Birth       ki1114097-CONTENT          PERU                           4+               1        0       2
Birth       ki1135781-COHORTS          INDIA                          1                0     3021    4769
Birth       ki1135781-COHORTS          INDIA                          1                1      104    4769
Birth       ki1135781-COHORTS          INDIA                          2                0     1356    4769
Birth       ki1135781-COHORTS          INDIA                          2                1       29    4769
Birth       ki1135781-COHORTS          INDIA                          3                0      160    4769
Birth       ki1135781-COHORTS          INDIA                          3                1        7    4769
Birth       ki1135781-COHORTS          INDIA                          4+               0       91    4769
Birth       ki1135781-COHORTS          INDIA                          4+               1        1    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    22116   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     2538   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     9068   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1     1166   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     2822   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1      300   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               0     1090   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               1       78   39178
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      930    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       82    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0      386    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1       28    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0      154    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1       12    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               0       46    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               1        6    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      145     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       47     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       28     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               0      126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0       81     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          2                0       74     235
6 months    ki0047075b-MAL-ED          INDIA                          2                1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          3                0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          3                1        2     235
6 months    ki0047075b-MAL-ED          INDIA                          4+               0       25     235
6 months    ki0047075b-MAL-ED          INDIA                          4+               1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       51     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+               0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                0       17     270
6 months    ki0047075b-MAL-ED          PERU                           1                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           2                0       48     270
6 months    ki0047075b-MAL-ED          PERU                           2                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           3                0       60     270
6 months    ki0047075b-MAL-ED          PERU                           3                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           4+               0      133     270
6 months    ki0047075b-MAL-ED          PERU                           4+               1        6     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       23     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      185     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        6     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0      103     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        5     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      179     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       43     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0     369
6 months    ki1000108-IRC              INDIA                          1                0      172     405
6 months    ki1000108-IRC              INDIA                          1                1       11     405
6 months    ki1000108-IRC              INDIA                          2                0      156     405
6 months    ki1000108-IRC              INDIA                          2                1       14     405
6 months    ki1000108-IRC              INDIA                          3                0       32     405
6 months    ki1000108-IRC              INDIA                          3                1        3     405
6 months    ki1000108-IRC              INDIA                          4+               0       16     405
6 months    ki1000108-IRC              INDIA                          4+               1        1     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      403     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       12     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0       89     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                0       56     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                1        0     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               1        0     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      326     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                0      178     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       76    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      216    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1       14    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0      272    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1       10    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               0      522    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               1       12    1126
6 months    ki1114097-CONTENT          PERU                           1                0       43     215
6 months    ki1114097-CONTENT          PERU                           1                1        1     215
6 months    ki1114097-CONTENT          PERU                           2                0       53     215
6 months    ki1114097-CONTENT          PERU                           2                1        1     215
6 months    ki1114097-CONTENT          PERU                           3                0       39     215
6 months    ki1114097-CONTENT          PERU                           3                1        0     215
6 months    ki1114097-CONTENT          PERU                           4+               0       76     215
6 months    ki1114097-CONTENT          PERU                           4+               1        2     215
6 months    ki1135781-COHORTS          INDIA                          1                0     3000    4962
6 months    ki1135781-COHORTS          INDIA                          1                1      213    4962
6 months    ki1135781-COHORTS          INDIA                          2                0     1448    4962
6 months    ki1135781-COHORTS          INDIA                          2                1       26    4962
6 months    ki1135781-COHORTS          INDIA                          3                0      179    4962
6 months    ki1135781-COHORTS          INDIA                          3                1        3    4962
6 months    ki1135781-COHORTS          INDIA                          4+               0       93    4962
6 months    ki1135781-COHORTS          INDIA                          4+               1        0    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    18050   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     1182   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     8840   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      626   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     3198   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1      176   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               0     1432   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               1       51   33555
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     5227    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      351    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0     2282    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1      115    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      918    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1       39    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               0      488    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               1       21    9441
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      113     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       36     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       48     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               0      104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                0       73     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       62     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       42     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          4+               0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          4+               1        3     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+               0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+               1        5     228
24 months   ki0047075b-MAL-ED          PERU                           1                0       13     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3                0       41     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        2     201
24 months   ki0047075b-MAL-ED          PERU                           4+               0      100     201
24 months   ki0047075b-MAL-ED          PERU                           4+               1       10     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      165     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1       18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       42     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       68     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1       30     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      130     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       71     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       72     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        3     372
24 months   ki1000108-IRC              INDIA                          1                0      159     407
24 months   ki1000108-IRC              INDIA                          1                1       25     407
24 months   ki1000108-IRC              INDIA                          2                0      158     407
24 months   ki1000108-IRC              INDIA                          2                1       12     407
24 months   ki1000108-IRC              INDIA                          3                0       34     407
24 months   ki1000108-IRC              INDIA                          3                1        2     407
24 months   ki1000108-IRC              INDIA                          4+               0       15     407
24 months   ki1000108-IRC              INDIA                          4+               1        2     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      369     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       37     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0       85     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                0       53     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                1        4     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               1        1     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                0      121     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       80     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        2     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       60     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       12     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      184     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       32     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0      216     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1       20     998
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               0      430     998
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               1       44     998
24 months   ki1114097-CONTENT          PERU                           1                0       28     164
24 months   ki1114097-CONTENT          PERU                           1                1        2     164
24 months   ki1114097-CONTENT          PERU                           2                0       38     164
24 months   ki1114097-CONTENT          PERU                           2                1        1     164
24 months   ki1114097-CONTENT          PERU                           3                0       32     164
24 months   ki1114097-CONTENT          PERU                           3                1        0     164
24 months   ki1114097-CONTENT          PERU                           4+               0       63     164
24 months   ki1114097-CONTENT          PERU                           4+               1        0     164
24 months   ki1135781-COHORTS          INDIA                          1                0     1670    3749
24 months   ki1135781-COHORTS          INDIA                          1                1      632    3749
24 months   ki1135781-COHORTS          INDIA                          2                0     1089    3749
24 months   ki1135781-COHORTS          INDIA                          2                1      132    3749
24 months   ki1135781-COHORTS          INDIA                          3                0      140    3749
24 months   ki1135781-COHORTS          INDIA                          3                1       10    3749
24 months   ki1135781-COHORTS          INDIA                          4+               0       73    3749
24 months   ki1135781-COHORTS          INDIA                          4+               1        3    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8371   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1712   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     4066   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      724   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1413   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1      184   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               0      672   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               1       60   17202
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4869    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      579    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0     2172    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      200    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      897    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       61    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               0      479    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               1       13    9270


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c0e1bf47-514e-42b5-bd0f-81e65a868f59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0e1bf47-514e-42b5-bd0f-81e65a868f59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0e1bf47-514e-42b5-bd0f-81e65a868f59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0e1bf47-514e-42b5-bd0f-81e65a868f59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1077043    0.1014483   0.1139603
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0995975    0.0902898   0.1089051
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0782499    0.0651913   0.0913085
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0602393    0.0476752   0.0728033
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0810277    0.0553885   0.1066669
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0676329    0.0184477   0.1168180
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0722892    0.0219335   0.1226448
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.1153846   -0.0893117   0.3200809
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0652336    0.0599620   0.0705052
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0595489    0.0525142   0.0665836
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0529074    0.0439452   0.0618696
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0497122    0.0333690   0.0660554
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0626509    0.0540120   0.0712897
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0487591    0.0360673   0.0614509
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0404433    0.0207784   0.0601082
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0390946   -0.0036816   0.0818708
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1666905    0.0448233   0.2885578
24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1481168    0.0810547   0.2151789
24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0847479    0.0344472   0.1350486
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0928332    0.0558508   0.1298156
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1606794    0.1488314   0.1725273
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1438212    0.1300546   0.1575879
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1071262    0.0911340   0.1231183
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.1259624    0.1026058   0.1493191
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1064487    0.0935548   0.1193425
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0846294    0.0664600   0.1027988
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0638196    0.0417703   0.0858688
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0272293   -0.0082782   0.0627367


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1041911   0.0995153   0.1088669
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0778589   0.0559066   0.0998111
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0606467   0.0567904   0.0645030
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0557144   0.0488132   0.0626157
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1082164   0.0809323   0.1355005
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1557958   0.1470502   0.1645415
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0920173   0.0825478   0.1014867


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.9247311   0.8277571   1.0330659
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.7265253   0.6098404   0.8655362
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.5593024   0.4520441   0.6920103
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.8346883   0.3828589   1.8197428
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.8921540   0.4124922   1.9295849
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 1.4240150   0.2343038   8.6546566
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.9128555   0.7961796   1.0466297
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.8110446   0.6719012   0.9790030
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.7620646   0.5456281   1.0643558
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.7782669   0.5801125   1.0441067
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.6455343   0.3877582   1.0746762
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.6240071   0.2070549   1.8805881
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        2                    1                 0.8885733   0.3760325   2.0997185
24 months   ki1113344-GMS-Nepal   NEPAL        3                    1                 0.5084145   0.1982643   1.3037414
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.5569194   0.2422151   1.2805116
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.8950820   0.7948441   1.0079610
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.6667077   0.5642672   0.7877461
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.7839365   0.6444627   0.9535950
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.7950257   0.6211788   1.0175264
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.5995337   0.4182987   0.8592918
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.2557974   0.0687498   0.9517454


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0035131   -0.0078081    0.0007818
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0031688   -0.0207236    0.0143861
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0045869   -0.0083236   -0.0008502
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0069364   -0.0128467   -0.0010262
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0584741   -0.1744621    0.0575139
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0048835   -0.0120210    0.0022539
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0144314   -0.0221406   -0.0067222


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0337182   -0.0758478    0.0067615
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0406991   -0.2952625    0.1638339
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0756335   -0.1394291   -0.0154098
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1244995   -0.2385927   -0.0209160
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5403441   -2.0780832    0.2291761
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0313457   -0.0780357    0.0133222
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1568336   -0.2433541   -0.0763338
