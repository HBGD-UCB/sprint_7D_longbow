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
      W: []
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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/a539fb4a-25d6-451e-9792-a5a8f508c382/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a539fb4a-25d6-451e-9792-a5a8f508c382/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a539fb4a-25d6-451e-9792-a5a8f508c382/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a539fb4a-25d6-451e-9792-a5a8f508c382/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7435897   0.6537614   0.8334180
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6666667   0.5955044   0.7378289
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8333333   0.7586834   0.9079832
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7802198   0.6950250   0.8654146
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7578947   0.6716414   0.8441481
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8131868   0.7329988   0.8933748
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3900000   0.2942860   0.4857140
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4952381   0.3994891   0.5909870
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5392157   0.4423637   0.6360676
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4757282   0.3791637   0.5722926
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2685714   0.2028577   0.3342852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5111111   0.4380332   0.5841890
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3786982   0.3055146   0.4518819
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3390805   0.2686905   0.4094704
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2731872   0.2373154   0.3090590
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1794159   0.1513637   0.2074680
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2318841   0.1942384   0.2695297
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2308998   0.1968602   0.2649395
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5496689   0.4702475   0.6290902
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6423841   0.5658727   0.7188956
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5600000   0.4804969   0.6395031
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5600000   0.4804969   0.6395031
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1923077   0.0849384   0.2996770
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2881356   0.1723028   0.4039684
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2115385   0.1002773   0.3227996
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2115385   0.1002773   0.3227996
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.6845361   0.6431628   0.7259094
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7673469   0.7144190   0.8202749
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7961538   0.7471668   0.8451409
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7152778   0.6631379   0.7674176
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4412811   0.4077568   0.4748054
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6244541   0.5882363   0.6606720
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5811808   0.5396387   0.6227229
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6416244   0.6116734   0.6715753
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5576037   0.4914807   0.6237267
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5588235   0.4906458   0.6270012
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5728643   0.5040948   0.6416339
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6040609   0.5357271   0.6723947
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3586622   0.3459653   0.3713590
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4996328   0.4862059   0.5130598
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4742372   0.4620803   0.4863941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4423019   0.4291577   0.4554461
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4535519   0.4213010   0.4858028
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5976761   0.5677448   0.6276074
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5541543   0.5243839   0.5839247
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5190141   0.4867683   0.5512599
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3052632   0.2125322   0.3979941
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1000000   0.0379361   0.1620639
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2258065   0.1407141   0.3108988
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1888889   0.1079120   0.2698658
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1300000   0.0640052   0.1959948
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1568627   0.0862005   0.2275250
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1067961   0.0470771   0.1665152
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1085714   0.0624459   0.1546970
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1333333   0.0836377   0.1830290
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0532544   0.0193770   0.0871319
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0804598   0.0400153   0.1209043
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0843170   0.0619483   0.1066858
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0611961   0.0436725   0.0787197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0724638   0.0493382   0.0955893
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0526316   0.0345946   0.0706686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0927152   0.0464166   0.1390139
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1456954   0.0893770   0.2020137
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1066667   0.0572260   0.1561074
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1000000   0.0519510   0.1480490
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1125654   0.0808554   0.1442755
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1370558   0.0890090   0.1851027
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1414634   0.0937344   0.1891924
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1383399   0.0957762   0.1809036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0379597   0.0250575   0.0508619
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0756914   0.0559093   0.0954735
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0701107   0.0486113   0.0916101
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0670051   0.0513882   0.0826220
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3150685   0.2083053   0.4218317
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3382353   0.2255769   0.4508937
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3906250   0.2708712   0.5103788
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3750000   0.2561710   0.4938290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2474606   0.2364158   0.2585054
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3779087   0.3650338   0.3907836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3414564   0.3297072   0.3532055
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3206095   0.3085262   0.3326929
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2306411   0.2026334   0.2586489
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3275862   0.2992844   0.3558880
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3033620   0.2755670   0.3311570
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2814107   0.2532141   0.3096074
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6666667   0.5554379   0.7778955
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5625000   0.4770183   0.6479817
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6521739   0.5395990   0.7647488
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7000000   0.5994069   0.8005931
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6119403   0.4950523   0.7288283
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6805556   0.5726692   0.7884419
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1910112   0.1092222   0.2728003
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2682927   0.1722519   0.3643335
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2307692   0.1371296   0.3244088
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2888889   0.1951106   0.3826672
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1214286   0.0672694   0.1755878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3960396   0.3005623   0.4915169
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2561983   0.1783389   0.3340578
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2255639   0.1544607   0.2966671
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1581395   0.1236433   0.1926358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1007067   0.0759075   0.1255059
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1229508   0.0892994   0.1566022
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1610879   0.1281237   0.1940520
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4193548   0.3324115   0.5062982
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5041322   0.4149531   0.5933114
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4435484   0.3560149   0.5310819
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4234234   0.3314091   0.5154377
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.5362903   0.4741737   0.5984069
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.6000000   0.5062176   0.6937824
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.6465517   0.5594863   0.7336172
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.5648855   0.4799173   0.6498537
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3622527   0.3254912   0.3990142
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5555556   0.5091683   0.6019428
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4911839   0.4419966   0.5403712
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5651578   0.5291635   0.6011520
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3053892   0.2354754   0.3753030
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3111111   0.2329503   0.3892719
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2954545   0.2175547   0.3733543
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3310345   0.2543729   0.4076961
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1452404   0.1336820   0.1567989
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2447426   0.2269135   0.2625717
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2289233   0.2128664   0.2449802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1904762   0.1761467   0.2048057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2393715   0.2079007   0.2708424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3400201   0.3061984   0.3738417
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3191288   0.2869456   0.3513120
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2877882   0.2577638   0.3178126


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
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         0.8965517   0.7630695   1.0533837
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9362637   0.8129428   1.0782921
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9094737   0.7868468   1.0512115
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9758242   0.8541094   1.1148839
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.9291025   1.7355424
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3826043   1.0200400   1.8740390
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2198158   0.8871104   1.6773004
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.9030733   1.4334425   2.5265666
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.4100466   1.0323440   1.9259388
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2625336   0.9159845   1.7401944
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6567506   0.5354608   0.8055145
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8488102   0.6888567   1.0459050
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8452074   0.6937842   1.0296797
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1686747   0.9691057   1.4093412
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0187952   0.8319821   1.2475552
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0187952   0.8319821   1.2475552
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.4983051   0.7530251   2.9811995
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.1000000   0.5108218   2.3687322
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         1.1000000   0.5108218   2.3687322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1209737   1.0227433   1.2286388
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1630561   1.0669479   1.2678214
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0449088   0.9505044   1.1486895
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4150937   1.2861026   1.5570220
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3170307   1.1865727   1.4618320
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4540036   1.3299684   1.5896065
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0021877   0.8453942   1.1880613
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0273682   0.8678476   1.2162107
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0833159   0.9195587   1.2762353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3930458   1.3342264   1.4544584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3222392   1.2691184   1.3775836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2331992   1.1809499   1.2877602
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3177678   1.2101613   1.4349426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2218101   1.1188823   1.3342063
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1443323   1.0434179   1.2550066
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3275862   0.1641464   0.6537624
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7397108   0.4558799   1.2002548
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6187739   0.3658864   1.0464483
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.7326008   0.3363200   1.5958132
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2066365   0.6120969   2.3786619
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8215086   0.3860216   1.7482867
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2280702   0.6978733   2.1610749
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.4905014   0.2282555   1.0540451
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7410768   0.3837351   1.4311824
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7257858   0.4912231   1.0723539
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8594203   0.5675091   1.3014826
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6242105   0.4046809   0.9628298
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5714285   0.8356810   2.9549401
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1504761   0.5820796   2.2739077
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0785714   0.5393705   2.1568035
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2175658   0.7765686   1.9089961
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2567215   0.8097503   1.9504148
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2289733   0.8097917   1.8651405
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9939956   1.2987274   3.0614728
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8469788   1.1685611   2.9192573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7651650   1.1689638   2.6654439
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0735294   0.6675140   1.7265038
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2398098   0.7850575   1.9579818
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1902174   0.7484142   1.8928254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5271468   1.4474017   1.6112854
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3798413   1.3061560   1.4576835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2955982   1.2262093   1.3689137
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4203286   1.2236961   1.6485576
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3152988   1.1278327   1.5339251
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2201238   1.0390015   1.4328199
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         0.8437500   0.6732911   1.0573644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0733333   0.8574138   1.3436272
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9383085   0.7253301   1.2138236
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0435185   0.8254998   1.3191170
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.4045911   0.8038312   2.4543414
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2081448   0.6697660   2.1792893
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.5124183   0.8837160   2.5883985
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         3.2615026   1.9643990   5.4150910
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         2.1098687   1.2298776   3.6195034
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.8575851   1.0758503   3.2073444
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6368219   0.4582961   0.8848910
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774831   0.5478870   1.1032931
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0186439   0.7553109   1.3737856
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2021615   0.9153799   1.5787896
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0576923   0.7944178   1.4082174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0097020   0.7477465   1.3634276
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1187970   0.9210064   1.3590640
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2056002   1.0093999   1.4399366
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0533203   0.8711883   1.2735292
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5336134   1.3447542   1.7489963
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3559152   1.1757500   1.5636879
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5601203   1.3839651   1.7586971
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0187364   0.7251836   1.4311187
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         0.9674688   0.6823222   1.3717800
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0839757   0.7827018   1.5012143
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6850856   1.5202535   1.8677895
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5761677   1.4233574   1.7453835
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3114543   1.1748735   1.4639129
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4204699   1.2012549   1.6796890
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3331944   1.1283831   1.5751807
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2022658   1.0182288   1.4195661


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0269231   -0.0986985    0.0448524
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0370867   -0.1032644    0.0290910
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0856098    0.0017360    0.1694835
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1067867    0.0480910    0.1654825
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0470966   -0.0775711   -0.0166221
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0284042   -0.0401697    0.0969781
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0355993   -0.0598494    0.1310480
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0455109    0.0138031    0.0772187
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1305213    0.1020290    0.1590136
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0152237   -0.0413590    0.0718065
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0851861    0.0748398    0.0955325
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0787002    0.0515028    0.1058976
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0987414   -0.1753872   -0.0220957
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0080488   -0.0649389    0.0488414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0140156   -0.0531639    0.0251328
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0172029   -0.0359744    0.0015686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0185804   -0.0226558    0.0598166
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0166535   -0.0094605    0.0427674
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0235385    0.0114056    0.0356714
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0380914   -0.0540297    0.1302124
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0745021    0.0651967    0.0838075
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0558549    0.0307872    0.0809225
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0362319   -0.1229339    0.0504701
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0110205   -0.0869097    0.1089507
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0538265   -0.0188257    0.1264787
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1169553    0.0651300    0.1687805
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0239004   -0.0535073    0.0057065
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0285618   -0.0465166    0.1036402
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0387097   -0.0085768    0.0859961
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1278553    0.0964737    0.1592368
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0054916   -0.0536026    0.0645858
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0517817    0.0417000    0.0618634
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0560302    0.0282171    0.0838434


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0375671   -0.1469809    0.0614095
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0465769   -0.1333458    0.0335490
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1800000   -0.0173230    0.3390496
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2844929    0.1101309    0.4246902
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2083084   -0.3506105   -0.0809995
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0491360   -0.0772923    0.1607271
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.1562009   -0.3846367    0.4857880
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0623396    0.0176737    0.1049746
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2282629    0.1762358    0.2770041
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0265765   -0.0774096    0.1205263
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1919262    0.1680957    0.2150741
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1478626    0.0947840    0.1978290
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4781163   -0.8963102   -0.1521469
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0660000   -0.6509014    0.3116755
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1482251   -0.6452070    0.1986292
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2563238   -0.5668964   -0.0073094
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1669467   -0.2972892    0.4650554
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1288779   -0.0976161    0.3086346
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3827516    0.1594048    0.5467549
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1078587   -0.1951078    0.3340215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2313998    0.2019366    0.2597752
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1949586    0.1024981    0.2778938
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0574713   -0.2137827    0.0787103
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0166173   -0.1427313    0.1537455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2198457   -0.1391471    0.4657048
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4906174    0.2339940    0.6612682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1780435   -0.4198522    0.0225839
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0637659   -0.1198669    0.2172872
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0673212   -0.0188678    0.1462191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2608716    0.1935492    0.3225740
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0176647   -0.1920572    0.1904896
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2628217    0.2109741    0.3112623
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1896747    0.0898333    0.2785639
