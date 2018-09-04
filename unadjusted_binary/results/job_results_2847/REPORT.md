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

unadjusted

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
![](/tmp/37bc9f84-87af-4139-88d4-234257e69d0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37bc9f84-87af-4139-88d4-234257e69d0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/37bc9f84-87af-4139-88d4-234257e69d0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37bc9f84-87af-4139-88d4-234257e69d0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1029448    0.0971134   0.1087761
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1139339    0.1041914   0.1236765
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0960922    0.0803894   0.1117951
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0667808    0.0463867   0.0871749
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0810277    0.0553885   0.1066669
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0676329    0.0184477   0.1168180
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0722892    0.0219335   0.1226448
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.1153846   -0.0893117   0.3200809
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0614601    0.0565823   0.0663378
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0661314    0.0585332   0.0737296
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0521636    0.0414108   0.0629164
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0343898    0.0202702   0.0485094
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0629258    0.0542711   0.0715805
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0479766    0.0353773   0.0605760
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0407524    0.0207829   0.0607218
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0412574   -0.0043273   0.0868421
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1666667    0.0448053   0.2885281
24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1481481    0.0810822   0.2152141
24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0847458    0.0344452   0.1350463
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0928270    0.0558449   0.1298091
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1697907    0.1578263   0.1817552
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1511482    0.1362252   0.1660713
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1152160    0.0930582   0.1373739
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0819673    0.0507569   0.1131776
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1062775    0.0934115   0.1191436
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0843170    0.0663258   0.1023083
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0636743    0.0412240   0.0861246
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0264228   -0.0104491   0.0632946


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
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.1067484   0.9975981   1.2278412
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.9334351   0.7847918   1.1102321
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.6487054   0.4780716   0.8802421
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.8346883   0.3828589   1.8197428
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.8921540   0.4124922   1.9295849
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 1.4240150   0.2343038   8.6546566
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.0760063   0.9396617   1.2321345
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.8487398   0.6790644   1.0608113
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.5595468   0.3695180   0.8473001
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.7624322   0.5672192   1.0248292
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.6476258   0.3877248   1.0817443
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.6556513   0.2151583   1.9979649
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        2                    1                 0.8888889   0.3761572   2.1005141
24 months   ki1113344-GMS-Nepal   NEPAL        3                    1                 0.5084746   0.1982758   1.3039733
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.5569620   0.2422169   1.2806980
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.8902030   0.7889373   1.0044669
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.6785767   0.5517501   0.8345558
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.4827546   0.3290711   0.7082116
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.7933665   0.6205629   1.0142894
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.5991325   0.4152742   0.8643920
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.2486204   0.0610253   1.0128937


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012464   -0.0023945    0.0048872
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0031688   -0.0207236    0.0143861
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008134   -0.0039955    0.0023687
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0072113   -0.0131482   -0.0012745
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0584502   -0.1744326    0.0575321
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0139949   -0.0209930   -0.0069968
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0142603   -0.0219342   -0.0065863


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0119624   -0.0235929    0.0462826
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0406991   -0.2952625    0.1638339
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0134115   -0.0673146    0.0377692
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1294340   -0.2441858   -0.0252658
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5401235   -2.0778465    0.2293377
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0898284   -0.1352187   -0.0462530
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1549739   -0.2410914   -0.0748319
