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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* nchldlt5
* agecat
* studyid
* country

## Data Summary

nchldlt5   agecat      studyid                    country                        tr          stunted   n_cell       n
---------  ----------  -------------------------  -----------------------------  ---------  --------  -------  ------
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           0       17      50
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           1       11      50
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              0       17      50
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              1        5      50
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           0        8      29
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           1       10      29
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              0        6      29
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              1        5      29
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           0       14      51
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control           1       10      51
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              0       11      51
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA              1       16      51
3+         6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           0        0       6
3+         6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           1        2       6
3+         6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              0        3       6
3+         6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              1        1       6
1          6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           0        6      16
1          6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           1        1      16
1          6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              0        8      16
1          6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              1        1      16
2          6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           0        4      13
2          6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control           1        3      13
2          6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              0        5      13
2          6 months    ki1000107-Serrinha-VitA    BRAZIL                         VitA              1        1      13
2          6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        5      17
2          6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        1      17
2          6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        8      17
2          6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        3      17
1          6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        3      29
1          6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        1      29
1          6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0       20      29
1          6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        5      29
1          24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        1       1
2          24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        1       1
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      106     475
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        9     475
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       87     475
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       18     475
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      225     475
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       30     475
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      257    1173
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       37    1173
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      281    1173
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       25    1173
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      514    1173
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       59    1173
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       15      53
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        1      53
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        9      53
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        2      53
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       22      53
3+         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        4      53
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1       4
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        0       4
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        2       4
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0       4
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       4
1          24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       4
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           0       92     845
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           1       43     845
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      503     845
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      207     845
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           0       16     150
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           1       10     150
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               0       76     150
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               1       48     150
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           0       96     815
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           1       46     815
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      484     815
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      189     815
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           0       30     359
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           1       30     359
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      149     359
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      150     359
3+         24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           0        4      59
3+         24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           1        3      59
3+         24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               0       17      59
3+         24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               1       35      59
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           0       28     347
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           1       32     347
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      151     347
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      136     347
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       27     133
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       13     133
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       72     133
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       21     133
1          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       17      60
1          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        1      60
1          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       36      60
1          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        6      60
2          24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        3       5
2          24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        2       5
3+         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       14      43
3+         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        2      43
3+         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       21      43
3+         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        6      43
3+         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        2       2
3+         6 months    ki1148112-LCNI-5           MALAWI                         Control           0       14      63
3+         6 months    ki1148112-LCNI-5           MALAWI                         Control           1        4      63
3+         6 months    ki1148112-LCNI-5           MALAWI                         LNS               0       18      63
3+         6 months    ki1148112-LCNI-5           MALAWI                         LNS               1       13      63
3+         6 months    ki1148112-LCNI-5           MALAWI                         Other             0        5      63
3+         6 months    ki1148112-LCNI-5           MALAWI                         Other             1        9      63
3+         24 months   ki1148112-LCNI-5           MALAWI                         Control           0        7      26
3+         24 months   ki1148112-LCNI-5           MALAWI                         Control           1        3      26
3+         24 months   ki1148112-LCNI-5           MALAWI                         LNS               0        5      26
3+         24 months   ki1148112-LCNI-5           MALAWI                         LNS               1        6      26
3+         24 months   ki1148112-LCNI-5           MALAWI                         Other             0        2      26
3+         24 months   ki1148112-LCNI-5           MALAWI                         Other             1        3      26
2          6 months    ki1148112-LCNI-5           MALAWI                         Control           0       51     358
2          6 months    ki1148112-LCNI-5           MALAWI                         Control           1       32     358
2          6 months    ki1148112-LCNI-5           MALAWI                         LNS               0      109     358
2          6 months    ki1148112-LCNI-5           MALAWI                         LNS               1       68     358
2          6 months    ki1148112-LCNI-5           MALAWI                         Other             0       56     358
2          6 months    ki1148112-LCNI-5           MALAWI                         Other             1       42     358
1          6 months    ki1148112-LCNI-5           MALAWI                         Control           0       68     390
1          6 months    ki1148112-LCNI-5           MALAWI                         Control           1       30     390
1          6 months    ki1148112-LCNI-5           MALAWI                         LNS               0      135     390
1          6 months    ki1148112-LCNI-5           MALAWI                         LNS               1       66     390
1          6 months    ki1148112-LCNI-5           MALAWI                         Other             0       60     390
1          6 months    ki1148112-LCNI-5           MALAWI                         Other             1       31     390
2          24 months   ki1148112-LCNI-5           MALAWI                         Control           0       28     173
2          24 months   ki1148112-LCNI-5           MALAWI                         Control           1       19     173
2          24 months   ki1148112-LCNI-5           MALAWI                         LNS               0       45     173
2          24 months   ki1148112-LCNI-5           MALAWI                         LNS               1       34     173
2          24 months   ki1148112-LCNI-5           MALAWI                         Other             0       30     173
2          24 months   ki1148112-LCNI-5           MALAWI                         Other             1       17     173
1          24 months   ki1148112-LCNI-5           MALAWI                         Control           0       34     181
1          24 months   ki1148112-LCNI-5           MALAWI                         Control           1       18     181
1          24 months   ki1148112-LCNI-5           MALAWI                         LNS               0       59     181
1          24 months   ki1148112-LCNI-5           MALAWI                         LNS               1       29     181
1          24 months   ki1148112-LCNI-5           MALAWI                         Other             0       29     181
1          24 months   ki1148112-LCNI-5           MALAWI                         Other             1       12     181
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     2444    7020
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     1040    7020
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     2604    7020
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      932    7020
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     2053    5541
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      694    5541
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     2154    5541
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      640    5541
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     3791   12104
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     2218   12104
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     4074   12104
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1     2021   12104
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     3929   10852
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1     1432   10852
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     4138   10852
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1     1353   10852
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0      176     467
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1       63     467
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      169     467
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       59     467
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      137     360
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1       46     360
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      131     360
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       46     360
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0       17      73
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1       16      73
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0       18      73
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       22      73
2          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        7      22
2          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        4      22
2          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        3      22
2          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        8      22
3+         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        0       3
3+         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1       3
3+         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        2       3
3+         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        0       3
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       27      82
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       13      82
2          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       33      82
2          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        9      82
1          6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       17      42
1          6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        1      42
1          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       21      42
1          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        3      42
3+         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       14      33
3+         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        2      33
3+         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       14      33
3+         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        3      33
3+         24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        2       2
2          24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        2       2


The following strata were considered:

* nchldlt5: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 2, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nchldlt5: 3+, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 3+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 3+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nchldlt5: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a71b7050-9110-45ca-bfec-9a2958d7a7f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a71b7050-9110-45ca-bfec-9a2958d7a7f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a71b7050-9110-45ca-bfec-9a2958d7a7f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a71b7050-9110-45ca-bfec-9a2958d7a7f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nchldlt5   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3691130   0.3623929   0.3758331
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3315833   0.3248451   0.3383214
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1258503   0.0879206   0.1637801
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0816993   0.0509968   0.1124019
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1029668   0.0780720   0.1278617
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3185185   0.3059550   0.3310820
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2915493   0.2634440   0.3196546
1          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                0.3061224   0.2147571   0.3974878
1          6 months    ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.3283582   0.2633527   0.3933637
1          6 months    ki1148112-LCNI-5           MALAWI                         Other                NA                0.3406593   0.2431604   0.4381583
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2671143   0.2598789   0.2743498
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2464032   0.2397087   0.2530977
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.3928571   0.2905262   0.4951881
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 NA                0.2272727   0.1494398   0.3051056
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.5333333   0.5114747   0.5551920
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.4738676   0.4260198   0.5217154
1          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.3461538   0.2164891   0.4758186
1          24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.3295455   0.2310645   0.4280264
1          24 months   ki1148112-LCNI-5           MALAWI                         Other                NA                0.2926829   0.1530252   0.4323407
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4848485   0.4063780   0.5633190
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.5500000   0.4658907   0.6341093
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2985075   0.2898533   0.3071616
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2635747   0.2556474   0.2715020
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3250000   0.2537603   0.3962397
2          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2142857   0.1503340   0.2782374
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0782609   0.0291211   0.1274006
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1714286   0.0992651   0.2435921
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1176471   0.0780605   0.1572336
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3239437   0.3105244   0.3373629
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2808321   0.2527776   0.3088866
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3250000   0.2811814   0.3688186
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2258065   0.1661620   0.2854509
2          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                0.3855422   0.2806849   0.4903994
2          6 months    ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.3841808   0.3124240   0.4559376
2          6 months    ki1148112-LCNI-5           MALAWI                         Other                NA                0.4285714   0.3304565   0.5266863
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2526392   0.2426040   0.2626745
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2290623   0.2186994   0.2394251
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.4166667   0.3229242   0.5104091
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 NA                0.5925926   0.4934974   0.6916878
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.5000000   0.4788259   0.5211741
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.5016722   0.4544048   0.5489397
2          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.4042553   0.2635482   0.5449624
2          24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.4303797   0.3208803   0.5398792
2          24 months   ki1148112-LCNI-5           MALAWI                         Other                NA                0.3617021   0.2239351   0.4994691
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2635983   0.2320391   0.2951576
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2587719   0.2280553   0.2894886
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3846154   0.3520930   0.4171378
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.3870968   0.3159876   0.4582060
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2513661   0.2185123   0.2842199
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2598870   0.2239611   0.2958129
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.5555556   0.4105519   0.7005592
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 NA                0.4545455   0.3409570   0.5681340


### Parameter: E(Y)


nchldlt5   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3502148   0.3405588   0.3598708
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1031543   0.0857408   0.1205678
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2958580   0.2650652   0.3266508
1          6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3256410   0.2790729   0.3722091
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2566347   0.2467355   0.2665340
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.3200000   0.1893891   0.4506109
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.4841499   0.4314922   0.5368075
1          24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3259669   0.2574907   0.3944430
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5205479   0.4052385   0.6358574
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2809117   0.2690596   0.2927638
2          6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2682927   0.1718035   0.3647819
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1200000   0.0907456   0.1492544
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2883436   0.2572245   0.3194626
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2556391   0.1812231   0.3300551
2          6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3966480   0.3459020   0.4473941
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2407508   0.2263142   0.2551873
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.5098039   0.3712402   0.6483677
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.5013928   0.4495993   0.5531862
2          24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4046243   0.3312734   0.4779752
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2612420   0.2171986   0.3052854
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.3866667   0.3084730   0.4648603
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2555556   0.2068332   0.3042779
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.5172414   0.3321523   0.7023304


### Parameter: RR


nchldlt5   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8983245   0.8741360   0.9231824
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6491786   0.4010084   1.0509327
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8181690   0.5559557   1.2040535
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9153292   0.8247881   1.0158094
1          6 months    ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.0726368   0.7497393   1.5345997
1          6 months    ki1148112-LCNI-5           MALAWI                         Other                Control           1.1128205   0.7359340   1.6827182
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9224634   0.8877431   0.9585417
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 Control           0.5785124   0.3762264   0.8895616
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.8885017   0.7967673   0.9907979
1          24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.9520202   0.5895736   1.5372848
1          24 months   ki1148112-LCNI-5           MALAWI                         Other                Control           0.8455285   0.4609692   1.5509028
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.1343750   0.9079334   1.4172918
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8829751   0.8468445   0.9206473
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.6593407   0.4552967   0.9548282
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           2.1904762   1.0285718   4.6649011
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.5032680   0.7373202   3.0649025
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.8669165   0.7780544   0.9659275
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.6947891   0.5164860   0.9346465
2          6 months    ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.9964689   0.7164330   1.3859639
2          6 months    ki1148112-LCNI-5           MALAWI                         Other                Control           1.1116071   0.7790393   1.5861465
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9066773   0.8536965   0.9629462
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 Control           1.4222222   1.0745464   1.8823907
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0033445   0.9048732   1.1125317
2          24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.0646236   0.6917585   1.6384668
2          24 months   ki1148112-LCNI-5           MALAWI                         Other                Control           0.8947368   0.5340887   1.4989159
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9816903   0.8293844   1.1619653
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0064516   0.8221807   1.2320222
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0338983   0.8548369   1.2504674
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         VitA                 Control           0.8181818   0.5700576   1.1743050


### Parameter: PAR


nchldlt5   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0188982   -0.0258663   -0.0119300
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0226960   -0.0546448    0.0092527
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0226605   -0.0507738    0.0054527
1          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0195186   -0.0599861    0.0990233
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0104796   -0.0172365   -0.0037227
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.0728571   -0.1540212    0.0083069
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0491835   -0.0970899   -0.0012770
1          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0201870   -0.1290054    0.0886314
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0356995   -0.0487858    0.1201847
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0175958   -0.0257058   -0.0094857
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0567073   -0.1217847    0.0083701
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0417391   -0.0041009    0.0875791
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0356001   -0.0636771   -0.0075231
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0693609   -0.1295080   -0.0092138
2          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0111059   -0.0809373    0.1031490
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0118885   -0.0223011   -0.0014759
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.0931373   -0.0089032    0.1951777
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0013928   -0.0458748    0.0486603
2          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0003690   -0.1197197    0.1204576
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0023564   -0.0330764    0.0283637
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0020513   -0.0690581    0.0731607
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0041894   -0.0317602    0.0401391
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.0383142   -0.1533442    0.0767159


### Parameter: PAF


nchldlt5   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0539617   -0.0751629   -0.0331786
1          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2200202   -0.5705315    0.0522639
1          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0765926   -0.1839683    0.0210451
1          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0599389   -0.2188285    0.2749474
1          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0408348   -0.0686273   -0.0137651
1          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.2276786   -0.5929756    0.0538495
1          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.1015873   -0.2162707    0.0022825
1          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0619296   -0.4542036    0.2245278
1          24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0685805   -0.0959630    0.2084201
2          Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0626381   -0.0938237   -0.0323416
2          6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.2113636   -0.5506791    0.0537037
2          6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.3478261   -0.1575464    0.6325583
2          6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.1234642   -0.2385293   -0.0190891
2          6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.2713235   -0.6131144   -0.0019522
2          6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0279993   -0.2341050    0.2344369
2          6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0493808   -0.0958044   -0.0049240
2          24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.1826923   -0.0025967    0.3337382
2          24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0027778   -0.0958068    0.0924932
2          24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0009119   -0.3446706    0.2576791
3+         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0090198   -0.1349363    0.1029268
3+         6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0053050   -0.1955244    0.1723983
3+         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0163934   -0.1321943    0.1454807
3+         24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.0740741   -0.3427090    0.1408152
