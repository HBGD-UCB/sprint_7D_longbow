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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        hhwealth_quart    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       23      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        3      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0        3      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        1      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       13      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       27      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1       10      82
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       24      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0        3      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        1      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       11      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        4      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       27      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        9      81
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       15      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0        1      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        3      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0        8      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        7      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       16      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1       16      77
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0        1       3
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        1       3
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0        0       3
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        1       3
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0        2       3
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0        1       3
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0        2       3
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0        1       3
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       16      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        5      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0        1      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0        7      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        2      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       18      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        6      55
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       24      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        5      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0        9      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       23      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        8      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1       13      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0        1      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0        7      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       19      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       12      71
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        3      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        2      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        4      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        2      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      31
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       20      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        6      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        4      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       14      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        7      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        7      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        4      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        5      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        3      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        1      42
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0       19      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        4      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        2      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0       16      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        3      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0       10      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1       11      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        5      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        4      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      32
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       12      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0        9      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       21      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        3      61
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       11      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       11      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       21      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        4      65
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       10      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        3      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0        7      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        5      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       14      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        9      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       12      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        6      66
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        2      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      23
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       28      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        9      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       18      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        3      58
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       10      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       29      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        4      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       16      59
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       12      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      90
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       78     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1       21     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       79     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1       26     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       67     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1       33     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       83     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1       20     407
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       69     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       31     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       51     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       54     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       55     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       46     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       64     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       39     409
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       80     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1       11     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1        8     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       83     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       16     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       10     388
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      132     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       23     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      103     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       35     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      123     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       17     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      129     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       19     581
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      123     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       33     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0       60     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       69     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0       95     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       47     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      108     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       41     576
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      117     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       24     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      112     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       33     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      109     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       30     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      106     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       32     563
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0       77     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       50     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       64     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0       72     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       56     499
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        2     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       45     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       49     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        3     215
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        3     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       30     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1       10     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        4     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       37     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        4     164
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      220     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      119     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       98     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       77     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      104     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       91     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      125     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       91     925
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      300    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       37    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1      166    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0       41    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1      172    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0       36    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1      183    1038
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      278     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       15     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      147     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       10     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      149     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       12     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      195     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       10     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      372    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      316    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      144    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      345    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      140    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      283    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      281    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      564    2445
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      142     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       75     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       76     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      122     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       77     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      129     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       68     816
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       97     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       63     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       72     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       57     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       75     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       71     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       78     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       61     574
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3089   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1062   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3292   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1910   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3570   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1776   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3308   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1587   19594
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3879   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      863   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     2615   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1090   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2976   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1181   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3109   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1090   16803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     1425    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      806    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0      826    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1194    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     1031    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1175    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     1109    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1057    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      800    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      341    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      624    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      546    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      678    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      488    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      783    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      487    4747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      914    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      226    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      830    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      373    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      887    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      324    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      977    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      294    4825
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      127     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       56     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      146     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      158     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       61     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      144     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       67     822


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5e41f5c2-d0d3-4be1-832a-0eb687bbd770/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5e41f5c2-d0d3-4be1-832a-0eb687bbd770/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5e41f5c2-d0d3-4be1-832a-0eb687bbd770/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5e41f5c2-d0d3-4be1-832a-0eb687bbd770/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1159738   0.0840732   0.1478745
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1159713   0.0840714   0.1478713
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1159757   0.0840745   0.1478768
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1159728   0.0840725   0.1478730
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0570895   0.0412018   0.0729772
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0564952   0.0407377   0.0722527
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0567427   0.0409188   0.0725667
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0564429   0.0407251   0.0721607
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0610927   0.0526044   0.0695810
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0611902   0.0526885   0.0696918
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0611808   0.0526801   0.0696814
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0612459   0.0527377   0.0697542
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3232970   0.3156379   0.3309560
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3233177   0.3156582   0.3309771
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3233124   0.3156529   0.3309719
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3233131   0.3156538   0.3309724
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3002260   0.2646687   0.3357834
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3002980   0.2647481   0.3358478
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3001569   0.2646075   0.3357064
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3002175   0.2646783   0.3357568
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3698673   0.2830870   0.4566477
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1359441   0.0689552   0.2029330
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2691349   0.1886077   0.3496622
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2746873   0.1924106   0.3569640
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2057652   0.1328130   0.2787174
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2361340   0.1640643   0.3082036
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3047938   0.2251617   0.3844259
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1866745   0.1164930   0.2568560
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1689700   0.1317670   0.2061731
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2076560   0.1632411   0.2520709
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1486520   0.1099828   0.1873212
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1471677   0.1092842   0.1850512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1222886   0.0951898   0.1493873
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0800678   0.0597601   0.1003755
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1001034   0.0729525   0.1272543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0700563   0.0492868   0.0908257
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1778853   0.1169148   0.2388558
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2397278   0.1728864   0.3065692
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2238498   0.1566341   0.2910656
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2429975   0.1738993   0.3120957
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3812809   0.3354635   0.4270982
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4350293   0.3742598   0.4957988
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4758929   0.4188456   0.5329401
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4372799   0.3832623   0.4912975
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1927122   0.1692936   0.2161308
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2361818   0.2068279   0.2655358
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1979885   0.1678470   0.2281300
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2180726   0.1942520   0.2418932
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3202549   0.2582175   0.3822924
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3439756   0.2794362   0.4085150
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3614068   0.2963911   0.4264225
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3082388   0.2447759   0.3717016
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2230106   0.2109914   0.2350298
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2678432   0.2547250   0.2809613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2695362   0.2568795   0.2821929
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2588114   0.2469404   0.2706825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2095201   0.1832932   0.2357470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2842646   0.2583820   0.3101472
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2558499   0.2315304   0.2801694
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2321324   0.2091569   0.2551079
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7061093   0.6223236   0.7898951
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7665272   0.6870392   0.8460152
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7214956   0.6390629   0.8039283
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6346475   0.5432596   0.7260354
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3093956   0.2224719   0.3963194
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5090034   0.4171238   0.6008830
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4548022   0.3617963   0.5478081
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3846358   0.2930765   0.4761951
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2477210   0.1922196   0.3032224
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5145788   0.4421780   0.5869796
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3610465   0.2937486   0.4283444
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2974584   0.2345912   0.3603255
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3970213   0.3148380   0.4792045
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4852901   0.4017405   0.5688397
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4368846   0.3538632   0.5199061
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4747976   0.3895244   0.5600707
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7591309   0.7212478   0.7970141
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8058085   0.7608173   0.8507996
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8067983   0.7636059   0.8499907
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8490274   0.8109961   0.8870586
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5193194   0.4877991   0.5508397
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7129873   0.6795792   0.7463954
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6719198   0.6362486   0.7075910
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6589238   0.6307534   0.6870941
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.4011718   0.3259538   0.4763899
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4509757   0.3657511   0.5362003
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4935269   0.4129760   0.5740778
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4471635   0.3652364   0.5290907
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4122454   0.3924777   0.4320131
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5625715   0.5429319   0.5822110
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5132120   0.4933742   0.5330499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4909193   0.4701868   0.5116517
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3037791   0.2727994   0.3347588
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4410429   0.4105346   0.4715511
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4054053   0.3759139   0.4348968
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3757948   0.3471366   0.4044531


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0575980   0.0416028   0.0735933
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3233133   0.3156536   0.3309730
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4086486   0.3769522   0.4403450
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7909441   0.7661948   0.8156934
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907805   0.4776507   0.5039102
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9999784   0.9999444   1.0000123
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0000156   0.9999827   1.0000484
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9999906   0.9999579   1.0000232
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.9895901   0.9800522   0.9992208
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9939264   0.9846374   1.0033031
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9886742   0.9790511   0.9983919
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0015950   1.0004497   1.0027415
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0014409   1.0002511   1.0026322
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0025079   1.0014392   1.0035777
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000641   1.0000346   1.0000936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0000477   1.0000182   1.0000773
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0000499   1.0000200   1.0000798
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.0002396   0.9995332   1.0009465
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9997698   0.9990380   1.0005021
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9999716   0.9992764   1.0006673
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3675483   0.2138470   0.6317214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7276526   0.5022895   1.0541298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7426643   0.5121052   1.0770254
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1475893   0.7287708   1.8070992
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4812697   0.9647296   2.2743781
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9072209   0.5469939   1.5046782
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2289516   0.9530082   1.5847945
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8797534   0.6568324   1.1783312
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8709690   0.6590309   1.1510645
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6547450   0.4709766   0.9102171
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8185834   0.5803730   1.1545656
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5728767   0.3983108   0.8239489
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3476539   0.8667886   2.0952870
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2583941   0.7980363   1.9843156
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3660349   0.8756777   2.1309796
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1409680   0.9575819   1.3594742
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481425   1.0629733   1.4655681
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1468707   0.9747283   1.3494145
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2255675   1.0362150   1.4495212
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0273792   0.8502246   1.2414462
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1315971   0.9678823   1.3230038
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0740682   0.8205803   1.4058619
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1284973   0.8667431   1.4693005
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9624794   0.7260381   1.2759200
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2010333   1.1246699   1.2825817
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2086251   1.1327257   1.2896102
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1605343   1.0885672   1.2372592
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3567417   1.1663888   1.5781598
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2211236   1.0456854   1.4259957
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1079243   0.9472447   1.2958597
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0855644   0.9278629   1.2700693
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0217902   0.8672469   1.2038730
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8987949   0.7463062   1.0824409
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6451537   1.1834205   2.2870407
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4699695   1.0429342   2.0718570
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2431844   0.8640333   1.7887127
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.0772516   1.6059779   2.6868203
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.4574722   1.1007125   1.9298638
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2007798   0.8933018   1.6140929
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2223278   0.9362908   1.5957491
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1004062   0.8332129   1.4532826
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1958996   0.9118121   1.5684986
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0614881   0.9866686   1.1419813
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0627920   0.9895793   1.1414213
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1184202   1.0477978   1.1938025
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3729263   1.2739043   1.4796454
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2938469   1.1963670   1.3992694
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2688218   1.1808901   1.3633010
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1241459   0.8616651   1.4665838
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2302133   0.9597107   1.5769594
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1146434   0.8579443   1.4481476
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3646519   1.2904973   1.4430676
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2449187   1.1777744   1.3158908
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1908423   1.1199898   1.2661771
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4518539   1.2860742   1.6390033
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3345399   1.1821764   1.5065407
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2370661   1.0934031   1.3996051


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0000055    0.0000029    0.0000082
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0005086    0.0002219    0.0007952
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0002389    0.0001808    0.0002969
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0000163    0.0000097    0.0000229
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0002606    0.0001197    0.0004014
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0690543   -0.1399352    0.0018266
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0399350   -0.0228844    0.1027544
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0071800   -0.0348950    0.0205350
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0257539   -0.0477164   -0.0037915
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0334824   -0.0208685    0.0878333
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0273678   -0.0068679    0.0616035
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0185138   -0.0015022    0.0385297
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0424902   -0.0108481    0.0958285
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0283731    0.0188007    0.0379454
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0427079    0.0200979    0.0653179
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0089444   -0.0631675    0.0810564
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1062523    0.0298590    0.1826456
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0821401    0.0332731    0.1310072
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0498725   -0.0207101    0.1204552
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0318132    0.0046759    0.0589504
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0974495    0.0717958    0.1231032
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0378526   -0.0263167    0.1020218
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0785351    0.0624730    0.0945972
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0884686    0.0623631    0.1145742


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0000477    0.0000266    0.0000688
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0088294    0.0041888    0.0134484
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0038946    0.0030809    0.0047076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0000504    0.0000300    0.0000707
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0008672    0.0003957    0.0013384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2295590   -0.4905371   -0.0142756
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1625355   -0.1357988    0.3825079
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0443786   -0.2324011    0.1149580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2667841   -0.5128415   -0.0607470
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1584082   -0.1405068    0.3789807
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0669714   -0.0206560    0.1470756
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0876492   -0.0114240    0.1770178
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1171351   -0.0430087    0.2526904
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1128676    0.0741021    0.1500102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1693226    0.0744616    0.2544611
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0125088   -0.0936336    0.1083495
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2556305    0.0470678    0.4185463
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2490143    0.0892028    0.3807847
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1115982   -0.0614173    0.2564114
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0402218    0.0051838    0.0740257
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1580000    0.1152434    0.1986904
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0862197   -0.0723385    0.2213332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1600208    0.1267744    0.1920014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2255427    0.1553923    0.2898667
