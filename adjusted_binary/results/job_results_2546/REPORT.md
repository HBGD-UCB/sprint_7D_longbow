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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       23      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        1      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       13      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       27      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       10      82
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0        1       3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1       3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0        0       3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        1       3
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       23      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        0      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0        8      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        2      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       24      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        7      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       17      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        2      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        5      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        3      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       20      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        4      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        2      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       13      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       11      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       23      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        3      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       33      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        6      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       19      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       66     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       72     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       73     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       17     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       87     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       13     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       95     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       10     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       86     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       16     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       92     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       11     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      156     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       19     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      156     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       24     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      160     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        9     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      160     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       14     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      543    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       50    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      448    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       35    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      558    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       31    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      137     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      129     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       22     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      134     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       16     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      135     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       15     602
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       46     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1        6     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       57     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1        2     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       47     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1        5     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       47     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1        5     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      339    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       43    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      170    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       27    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      176    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       29    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      218    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       35    1037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      811    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       32    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      635    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       52    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      504    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       38    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      919    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       66    3057
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       50     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       45     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       39     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1       25     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       40     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1       24     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     5112   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     1681   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     4224   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     2566   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     4567   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     2368   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4503   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2125   27146
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      924    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      277    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      858    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      418    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      891    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      388    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      978    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      383    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       14      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       11      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        1      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        1      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        6      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        5      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       18      66
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       10      66
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0        2       3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0        1       3
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       14      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       11      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        1      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        0      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0        7      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        2      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       18      60
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        7      60
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       17      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        3      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        6      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        4      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        4      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        2      39
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        2      39
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        1      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        7      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       10      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        5      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        4      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        1      28
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0      28
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       10      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        2      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        7      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        4      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        6      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       12      63
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        5      63
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10      46
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       20      46
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        7      46
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        9      46
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       24     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       45     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       24     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       56     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       26     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       41     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       23     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       49     288
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       72     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       17     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       60     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       22     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       60     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       18     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       64     339
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       26     339
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      123     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       17     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       61     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       40     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0       90     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       31     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      103     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       30     495
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      362    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       68    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      509    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       57    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      321    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       45    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      401    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       77    1840
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       72     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       52     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       60     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       61     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       69     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       55     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       64     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       47     480
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       49     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        1     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       43     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1       11     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       45     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        2     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       44     200
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        5     200
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      115     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      133     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       42     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       63     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       41     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       75     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       57     600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       74     600
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      419    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      238    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      196    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      245    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      202    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      195    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      317    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      412    2224
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      116     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1       51     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       93     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1       42     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       93     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1       39     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       97     579
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1       48     579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     3484   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      592   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     2083   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      675   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     2442   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      725   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2669   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      628   13298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      823    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      259    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      658    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      339    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      719    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      337    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      834    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      337    4306
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       13      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       13      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        3      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        5      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       10      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       18      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       19      82
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0        1       3
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1       3
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0        0       3
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        1       3
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       17      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        1      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        0      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0        6      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        4      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       17      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       15      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        5      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        3      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        3      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        2      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        1      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       16      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        4      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        1      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        3      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        5      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        9      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       29      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        7      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       14      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       80     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       71     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       72     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       74     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       61     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       39     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       53     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       52     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       47     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       55     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       54     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       49     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      128     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       47     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       88     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       92     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      105     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       64     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      115     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       59     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      431    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      162    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      590    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      129    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      371    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      112    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      453    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      136    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       68     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       83     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       54     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       97     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       66     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       84     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       66     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       84     602
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       42     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1       10     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       42     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1       17     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       41     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1       11     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       41     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1       11     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      153    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      332    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       57    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      188    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       53    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      207    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       82    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      206    1278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      471    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      372    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      258    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      429    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      227    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      315    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      353    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      632    3057
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       96     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      121     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       90     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      114     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       85     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      114     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       78     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      119     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4372   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2445   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3407   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3402   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3653   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3295   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3702   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2936   27212
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      700    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      581    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      554    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      823    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      601    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      747    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      683    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      737    5426


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/04e50c0b-ea7e-4c1e-ac39-b506f611e6f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/04e50c0b-ea7e-4c1e-ac39-b506f611e6f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/04e50c0b-ea7e-4c1e-ac39-b506f611e6f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/04e50c0b-ea7e-4c1e-ac39-b506f611e6f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7182251   0.5873264   0.8491238
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5873324   0.4183769   0.7562879
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8324101   0.7642661   0.9005540
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7882204   0.7102256   0.8662152
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7561703   0.6805027   0.8318378
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8069604   0.7348550   0.8790658
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3726344   0.3001451   0.4451236
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4579213   0.3849535   0.5308891
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4879837   0.4170625   0.5589050
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4481841   0.3722520   0.5241162
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2944514   0.2495555   0.3393473
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4544099   0.4013015   0.5075184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3979346   0.3465836   0.4492857
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3399912   0.2890549   0.3909274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2612397   0.2289205   0.2935590
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1829627   0.1571616   0.2087638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2263573   0.1927747   0.2599399
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2271119   0.1953905   0.2588332
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5496689   0.4702475   0.6290902
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6423841   0.5658727   0.7188956
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5600000   0.4804969   0.6395031
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5600000   0.4804969   0.6395031
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1926427   0.0867636   0.2985218
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2817770   0.1698712   0.3936828
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2279009   0.1228952   0.3329067
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1980348   0.0954631   0.3006066
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.6997128   0.6635272   0.7358985
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7513868   0.7097319   0.7930417
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8019851   0.7636652   0.8403049
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7386182   0.6987222   0.7785143
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4936460   0.4646902   0.5226018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6168509   0.5854913   0.6482105
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5708317   0.5364395   0.6052240
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6294685   0.6029250   0.6560120
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5469280   0.4832433   0.6106127
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5447032   0.4793029   0.6101034
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5566268   0.4905569   0.6226967
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.5876068   0.5226361   0.6525774
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4377136   0.4276808   0.4477464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4550517   0.4446154   0.4654880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4570108   0.4473280   0.4666935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4422485   0.4319574   0.4525397
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4813465   0.4526959   0.5099972
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5789540   0.5530026   0.6049054
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5440456   0.5174650   0.5706261
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5152401   0.4876010   0.5428792
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2831862   0.2093183   0.3570541
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1221631   0.0661543   0.1781719
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2265644   0.1535488   0.2995800
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2002266   0.1370743   0.2633789
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1232620   0.0882920   0.1582320
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1267226   0.0894780   0.1639672
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1158754   0.0849390   0.1468118
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1180658   0.0847058   0.1514258
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0967416   0.0748540   0.1186292
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0872176   0.0641963   0.1102390
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0951049   0.0728931   0.1173167
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0977099   0.0743897   0.1210301
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0735251   0.0560749   0.0909753
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0658909   0.0507821   0.0809997
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0692183   0.0509508   0.0874857
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0551161   0.0392498   0.0709824
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0971837   0.0538195   0.1405479
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1683786   0.1156695   0.2210878
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1145886   0.0674598   0.1617175
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1145271   0.0689142   0.1601399
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1088224   0.0859499   0.1316948
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1273015   0.0991024   0.1555006
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1150043   0.0892228   0.1407858
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1423529   0.1177130   0.1669928
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0608054   0.0523570   0.0692538
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0608590   0.0524011   0.0693170
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0609613   0.0524892   0.0694334
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0617699   0.0531967   0.0703431
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3272581   0.2272370   0.4272793
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3315388   0.2255276   0.4375499
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3803799   0.2701775   0.4905823
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3687953   0.2614138   0.4761768
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3169174   0.3095282   0.3243065
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3331737   0.3250896   0.3412578
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3267255   0.3191494   0.3343017
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3205374   0.3128612   0.3282136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2563922   0.2359189   0.2768655
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3087732   0.2876272   0.3299193
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2965954   0.2768921   0.3162987
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2858951   0.2657811   0.3060091
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6479406   0.4874291   0.8084520
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5623731   0.3615896   0.7631566
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6575174   0.5625579   0.7524769
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7004739   0.6134625   0.7874853
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6168442   0.5209928   0.7126956
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6767256   0.5840527   0.7693985
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2739487   0.2059459   0.3419514
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3885593   0.3111270   0.4659916
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3621558   0.2891232   0.4351883
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3938343   0.3172193   0.4704493
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1116851   0.0680488   0.1553213
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3755715   0.3053126   0.4458305
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2394014   0.1790920   0.2997108
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2095470   0.1520549   0.2670391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1523795   0.1196134   0.1851456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0988274   0.0750210   0.1226338
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1210664   0.0891416   0.1529911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1572347   0.1256458   0.1888237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4116230   0.3253911   0.4978549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4913558   0.4030957   0.5796158
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4392210   0.3524259   0.5260160
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4202978   0.3299016   0.5106939
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4953577   0.4381637   0.5525518
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4922127   0.4133831   0.5710424
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5660630   0.4943766   0.6377494
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4698035   0.3993605   0.5402465
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3819820   0.3499591   0.4140049
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5506812   0.5120428   0.5893197
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4745500   0.4354474   0.5136527
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5500521   0.5186883   0.5814158
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3066671   0.2367500   0.3765843
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3121114   0.2340229   0.3901999
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2937762   0.2163864   0.3711661
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3301704   0.2538850   0.4064557
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1662818   0.1549772   0.1775863
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2331192   0.2185450   0.2476934
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2198818   0.2054401   0.2343236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1924022   0.1790655   0.2057389
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2457296   0.2157274   0.2757317
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3364844   0.3044970   0.3684717
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3152069   0.2847829   0.3456310
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2841579   0.2557602   0.3125556


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7166667   0.6016848   0.8316486
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7962466   0.7553156   0.8371777
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753582   0.3394105   0.4113058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2260906   0.2092959   0.2428853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2279070   0.1717046   0.2841094
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7300469   0.7056985   0.7543954
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5718024   0.5542589   0.5893459
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5728274   0.5388870   0.6067678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4438483   0.4363245   0.4513721
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5322521   0.5160648   0.5484394
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0945559   0.0728335   0.1162782
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0671141   0.0570678   0.0771604
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1292189   0.1087928   0.1496450
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0614982   0.0529805   0.0700159
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3219627   0.3152023   0.3287231
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2864960   0.2726657   0.3003263
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6304348   0.4894061   0.7714635
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2383838   0.2008095   0.2759582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1342391   0.1186581   0.1498201
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5750000   0.5354120   0.6145880
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3108808   0.2731472   0.3486144
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970221   0.1889626   0.2050817
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2954018   0.2790421   0.3117615


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         0.8177553   0.5930978   1.1275102
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9469136   0.8355895   1.0730691
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9084107   0.8020970   1.0288158
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9694265   0.8624627   1.0896562
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2288756   0.9746620   1.5493939
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3095510   1.0466249   1.6385275
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2027449   0.9453354   1.5302457
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.5432425   1.2938475   1.8407094
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.3514441   1.1299786   1.6163148
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.1546596   0.9535845   1.3981339
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7003632   0.5822141   0.8424884
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8664735   0.7157004   1.0490093
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8693618   0.7226214   1.0459003
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1686747   0.9691057   1.4093412
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0187952   0.8319821   1.2475552
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0187952   0.8319821   1.2475552
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.4626924   0.7464690   2.8661192
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.1830239   0.5817981   2.4055523
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         1.0279903   0.4877330   2.1666855
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0738502   0.9990531   1.1542473
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1461631   1.0711527   1.2264263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0556019   0.9835328   1.1329519
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2495816   1.1589139   1.3473428
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1563586   1.0660599   1.2543058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2751416   1.1891979   1.3672965
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9959321   0.8427077   1.1770165
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0177332   0.8619363   1.2016909
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0743768   0.9152329   1.2611933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0396105   1.0143533   1.0654967
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0440862   1.0191402   1.0696428
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0103605   0.9849030   1.0364761
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2027801   1.1200553   1.2916147
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1302576   1.0494876   1.2172438
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0704141   0.9956137   1.1508343
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.4313878   0.2625903   0.7086913
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8000544   0.5436885   1.1773047
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7070493   0.4864978   1.0275867
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0280752   0.8299391   1.2735135
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9400742   0.8212156   1.0761358
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9578442   0.8088918   1.1342253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9015522   0.7701974   1.0553092
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9830814   0.8727212   1.1073973
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0100090   0.8866667   1.1505091
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8961692   0.6549261   1.2262746
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9414243   0.6715777   1.3196979
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7496230   0.5247850   1.0707901
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.7325815   1.0083649   2.9769368
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1790935   0.6470171   2.1487242
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1784601   0.6505950   2.1346125
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1698101   0.9237053   1.4814852
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0568078   0.8398458   1.3298187
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3081218   1.0722579   1.5958684
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0008817   0.9983635   1.0034062
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0025640   1.0006317   1.0044999
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0158618   0.9964026   1.0357011
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0130803   0.6561317   1.5642161
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1623238   0.7706736   1.7530073
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1269247   0.7459077   1.7025688
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0512953   1.0313205   1.0716570
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0309487   1.0124336   1.0498025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0114227   0.9940683   1.0290800
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2043003   1.0972611   1.3217812
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1568034   1.0569334   1.2661102
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1150694   1.0199431   1.2190678
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         0.8679394   0.5769793   1.3056253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0653314   0.8893422   1.2761466
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9381413   0.7693069   1.1440285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0292133   0.8538814   1.2405469
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.4183652   1.0423805   1.9299670
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3219839   0.9735222   1.7951738
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.4376207   1.0608045   1.9482885
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         3.3627725   2.1849669   5.1754738
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         2.1435397   1.3501604   3.4031234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.8762306   1.1675740   3.0150048
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6485609   0.4701167   0.8947379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7945056   0.5657023   1.1158505
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0318628   0.7694443   1.3837791
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1937033   0.9060616   1.5726609
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0670467   0.8002660   1.4227626
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0210745   0.7564392   1.3782906
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.9936510   0.8177589   1.2073759
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1427358   0.9643774   1.3540811
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9484126   0.7876190   1.1420324
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4416419   1.2947487   1.6052005
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2423362   1.1076102   1.3934498
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4399948   1.3040228   1.5901447
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0177529   0.7255873   1.4275623
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         0.9579645   0.6764020   1.3567315
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0766408   0.7784406   1.4890737
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4019526   1.2852138   1.5292950
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3223446   1.2090993   1.4461965
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1570851   1.0501768   1.2748766
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3693280   1.1701736   1.6023769
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2827390   1.0974387   1.4993268
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1563847   0.9904639   1.3501003


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0015584   -0.0726486    0.0695318
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0361634   -0.0947173    0.0223905
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1029754    0.0436606    0.1622902
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0809067    0.0426746    0.1191389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0351491   -0.0622537   -0.0080446
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0284042   -0.0401697    0.0969781
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0352643   -0.0573470    0.1278755
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0303341    0.0045341    0.0561341
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0781565    0.0544367    0.1018762
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0258994   -0.0285635    0.0803623
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0061347   -0.0005945    0.0128639
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0509056    0.0279147    0.0738965
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0766645   -0.1339786   -0.0193504
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0013108   -0.0148506    0.0122291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0021858   -0.0103121    0.0059406
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0064110   -0.0203452    0.0075233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0141120   -0.0246382    0.0528622
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0203965    0.0069453    0.0338477
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0006928    0.0000676    0.0013180
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0259017   -0.0583698    0.1101733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0050454    0.0017521    0.0083386
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0301038    0.0146722    0.0455354
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0175058   -0.1083593    0.0733477
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0056771   -0.0723501    0.0837042
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0291109   -0.0878028    0.0295810
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1266988    0.0823991    0.1709984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0181404   -0.0461661    0.0098854
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0362937   -0.0380614    0.1106487
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0796423    0.0367791    0.1225054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1081259    0.0812260    0.1350259
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0042137   -0.0547822    0.0632096
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0307403    0.0206699    0.0408107
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0496722    0.0231865    0.0761579


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0021745   -0.1064730    0.0922926
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0454174   -0.1218827    0.0258362
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2165123    0.0817706    0.3314819
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2155454    0.1107736    0.3079727
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1554648   -0.2820136   -0.0414078
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0491360   -0.0772923    0.1607271
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.1547309   -0.3668142    0.4772664
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0415509    0.0054647    0.0763277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1366844    0.0941357    0.1772345
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0452133   -0.0547507    0.1357032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0138216   -0.0014555    0.0288657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0956419    0.0511721    0.1380275
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3712175   -0.6822670   -0.1176807
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0107483   -0.1280189    0.0943307
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0231160   -0.1139055    0.0602736
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0955235   -0.3241351    0.0936184
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1267975   -0.2972124    0.4122145
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1578448    0.0475129    0.2553963
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0112652    0.0011573    0.0212708
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0733428   -0.1986083    0.2835911
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0156706    0.0053978    0.0258374
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1050757    0.0494344    0.1574601
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0277678   -0.1832890    0.1073131
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0085602   -0.1163556    0.1194983
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1188988   -0.3921897    0.1007443
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.5314905    0.3312241    0.6717868
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1351346   -0.3640698    0.0553779
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0810277   -0.1010360    0.2329859
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1385083    0.0603871    0.2101343
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2206166    0.1640645    0.2733428
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0135540   -0.1957005    0.1861878
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1560247    0.1045329    0.2045556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1681513    0.0737687    0.2529163
