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
        value: TRUE        
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

**Intervention Variable:** tr.x

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* nchldlt5
* agecat
* studyid
* country

## Data Summary

nchldlt5   agecat        studyid                    country                        tr.x       ever_stunted   n_cell       n
---------  ------------  -------------------------  -----------------------------  --------  -------------  -------  ------
3+         0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control               1        1       1
1          0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control               0        4       6
1          0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         Other                 0        2       6
2          0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         Control               0        1       3
2          0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         Other                 0        2       3
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       40     161
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        5     161
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      101     161
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       15     161
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       99     469
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       19     469
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      302     469
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       49     469
3+         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0        3      10
3+         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        0      10
3+         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0        6      10
3+         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1        1      10
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      142     634
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       12     634
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      280     634
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       23     634
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      164     634
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13     634
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      357    1521
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       26    1521
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      726    1521
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       44    1521
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      336    1521
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       32    1521
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       17      70
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        2      70
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       35      70
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        3      70
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       11      70
3+         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      70
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               0        5      96
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               1        9      96
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0       48      96
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1       34      96
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               0       62     534
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               1       22     534
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      324     534
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      126     534
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               0       54     497
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               1       26     497
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      306     497
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      111     497
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        1      14
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      14
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        4      14
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        1      14
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      14
2          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        2      14
3+         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        1       2
3+         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        1       2
1          0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        1       1
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control               0       31     122
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control               1       24     122
2          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   0       47     122
2          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   1       20     122
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control               0       43     122
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control               1       20     122
1          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   0       38     122
1          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   1       21     122
3+         0-6 months    ki1148112-LCNI-5           MALAWI                         Control               0        6      23
3+         0-6 months    ki1148112-LCNI-5           MALAWI                         Control               1        7      23
3+         0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   0        7      23
3+         0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                   1        3      23
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     2435    6517
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      836    6517
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2581    6517
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      665    6517
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     4336   12374
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1763   12374
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     4688   12374
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1587   12374
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0      163     452
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1       59     452
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      188     452
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       42     452
1          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       87     175
1          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1        1     175
1          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       81     175
1          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1        6     175
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       55     128
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1        6     128
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       60     128
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1        7     128
3+         6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       36      71
3+         6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1        6      71
3+         6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       26      71
3+         6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1        3      71
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       25     124
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       11     124
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       58     124
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       30     124
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       74     365
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       14     365
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      213     365
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       64     365
3+         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        2       8
3+         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0        6       8
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      114     514
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       20     514
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      199     514
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       32     514
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      130     514
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       19     514
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      274    1268
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       40    1268
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      577    1268
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       80    1268
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      248    1268
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       49    1268
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       13      58
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4      58
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       28      58
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        2      58
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       10      58
3+         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1      58
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      194    1064
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1       49    1064
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      714    1064
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1      107    1064
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      178     898
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1       35     898
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      601     898
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1       84     898
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      130     675
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1       45     675
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      418     675
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1       82     675
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       78     535
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       17     535
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      336     535
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      104     535
3+         6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       16      81
3+         6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1        1      81
3+         6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0       50      81
3+         6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1       14      81
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       67     552
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       19     552
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      370     552
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1       96     552
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       25     117
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        9     117
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       26     117
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       10     117
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       35     117
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       12     117
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       11      55
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        6      55
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       11      55
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       11      55
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       14      55
1          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        2      55
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       10      41
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        4      41
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       10      41
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        6      41
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        6      41
3+         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        5      41
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control               0       75     245
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control               1       43     245
2          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       90     245
2          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1       37     245
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control               0      103     286
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control               1       38     286
1          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       96     286
1          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1       49     286
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control               0       17      45
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control               1        6      45
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       17      45
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1        5      45
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1704    4426
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      459    4426
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1751    4426
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      512    4426
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     3444    8584
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      737    8584
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     3554    8584
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      849    8584
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      108     286
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1       37     286
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      116     286
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       25     286
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       87     206
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1       12     206
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       80     206
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1       27     206
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       55     173
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1       24     173
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       58     173
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1       36     173
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               0       35     105
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control               1       26     105
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 0       26     105
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                 1       18     105
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       25     161
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       20     161
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       59     161
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       57     161
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       74     470
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       44     470
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      214     470
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1      138     470
3+         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        2      10
3+         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1      10
3+         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0        5      10
3+         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        2      10
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      119     635
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       35     635
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      227     635
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       76     635
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      139     635
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       39     635
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      300    1541
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       88    1541
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      612    1541
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      169    1541
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      274    1541
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       98    1541
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       13      70
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        6      70
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       29      70
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        9      70
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       11      70
3+         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      70
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      190    1272
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1      110    1272
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      678    1272
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1      294    1272
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      175    1073
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1       87    1073
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      569    1073
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1      242    1073
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               0      127     843
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control               1       92     843
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   0      389     843
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                   1      235     843
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       64     845
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       71     845
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      369     845
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      341     845
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       14     150
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       12     150
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0       54     150
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1       70     150
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       73     816
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       69     816
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      331     816
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      343     816
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       23     152
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       22     152
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       25     152
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       23     152
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       33     152
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       26     152
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       11      63
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        8      63
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       11      63
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       15      63
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       13      63
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        5      63
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       10      49
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        7      49
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       10      49
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        9      49
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      49
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        8      49
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control               0       15      63
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control               1       17      63
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       14      63
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1       17      63
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control               0       67     358
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control               1      114     358
2          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       73     358
2          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1      104     358
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control               0       92     391
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control               1       98     391
1          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   0       87     391
1          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                   1      114     391
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     2265    7674
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1568    7674
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2398    7674
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1443    7674
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     4247   14721
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     3007   14721
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     4524   14721
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     2943   14721
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      135     520
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      116     520
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      179     520
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       90     520


The following strata were considered:

* nchldlt5: 1, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 3+, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nchldlt5: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nchldlt5: 3+, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2a423305-69a1-474f-8619-c1f0721126cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 51 rows containing missing values (geom_errorbar).
```

![](/tmp/2a423305-69a1-474f-8619-c1f0721126cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2a423305-69a1-474f-8619-c1f0721126cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a423305-69a1-474f-8619-c1f0721126cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nchldlt5   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.1212121   0.0902401   0.1521842
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                NA                0.2523364   0.2094843   0.2951886
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3728814   0.3509526   0.3948101
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.3920455   0.3538081   0.4302828
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2268041   0.1851226   0.2684856
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2163892   0.1875003   0.2452782
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2634409   0.2186630   0.3082187
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.3320611   0.3126628   0.3514593
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.2983970   0.2460347   0.3507594
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.5259259   0.5124611   0.5393908
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.4802817   0.4493852   0.5111782
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4210526   0.1972664   0.6448389
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.5769231   0.3854955   0.7683506
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2777778   0.0691988   0.4863567
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.5157895   0.4812148   0.5503641
1          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.5671642   0.5319075   0.6024209
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4145299   0.4075012   0.4215586
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3941342   0.3874755   0.4007929
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1610169   0.1443140   0.1777199
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1396011   0.1124376   0.1667647
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0678851   0.0426844   0.0930859
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0571429   0.0407426   0.0735431
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0869565   0.0581584   0.1157546
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.2619048   0.2471007   0.2767088
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2800000   0.2450083   0.3149917
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                0.3174603   0.2578592   0.3770614
1          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.3559322   0.2966054   0.4152590
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2890638   0.2823475   0.2957800
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2529084   0.2469216   0.2588951
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1590909   0.1406412   0.1775406
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2310469   0.1933253   0.2687686
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1273885   0.0904967   0.1642804
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1217656   0.0967504   0.1467808
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1649832   0.1227544   0.2072120
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.1643192   0.1506279   0.1780106
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.1226277   0.0976775   0.1475780
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.2209302   0.2072571   0.2346034
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2060086   0.1749811   0.2370360
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.2695035   0.2333340   0.3056731
1          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.3379310   0.2988296   0.3770324
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1762736   0.1701086   0.1824387
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1928231   0.1858924   0.1997537
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.3037975   0.2573530   0.3502420
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                NA                0.3829787   0.3294284   0.4365291
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.4444444   0.4037389   0.4851500
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4913793   0.4256272   0.5571314
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2272727   0.1610333   0.2935122
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2508251   0.2019772   0.2996730
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2191011   0.1582876   0.2799146
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.3666667   0.3514557   0.3818776
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.3024691   0.2601514   0.3447868
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.4859155   0.4716013   0.5002297
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.5089021   0.4777092   0.5400949
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4888889   0.3423551   0.6354227
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4791667   0.3373741   0.6209592
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4406780   0.3135775   0.5677784
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.6298343   0.5942201   0.6654484
2          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.5875706   0.5516649   0.6234764
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4090791   0.3999871   0.4181710
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3756834   0.3664056   0.3849612
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1111111   0.0853666   0.1368556
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1293103   0.0851785   0.1734422
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0779221   0.0355534   0.1202907
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0759076   0.0460627   0.1057525
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0734463   0.0349850   0.1119077
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3250000   0.3084626   0.3415374
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2661871   0.2305597   0.3018144
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                0.4363636   0.3770328   0.4956945
2          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.2985075   0.2380845   0.3589304
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2555793   0.2469560   0.2642027
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2048675   0.1969957   0.2127394
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.0983607   0.0626059   0.1341154
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                NA                0.1044776   0.0659893   0.1429659
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3055556   0.2616924   0.3494187
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.3409091   0.2703394   0.4114787
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1492537   0.0888615   0.2096460
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1385281   0.0939364   0.1831199
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1275168   0.0739075   0.1811261
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.2016461   0.1865857   0.2167065
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.1303289   0.1025262   0.1581316
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.1789474   0.1652477   0.1926471
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2363636   0.2036853   0.2690420
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2647059   0.1157749   0.4136368
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2777778   0.1308361   0.4247194
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2553191   0.1301233   0.3805150
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.3644068   0.3224991   0.4063145
2          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.2913386   0.2502907   0.3323864
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2122053   0.2010748   0.2233358
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2262483   0.2158409   0.2366558
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                0.4262295   0.3537872   0.4986719
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                NA                0.4090909   0.3479216   0.4702602
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.4200913   0.3937915   0.4463911
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.3766026   0.3390669   0.4141382
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.4615385   0.4282129   0.4948640
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.5645161   0.4921318   0.6369004
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4117647   0.1753899   0.6481395
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4736842   0.2468459   0.7005225
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.6153846   0.3481821   0.8825871
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.5312500   0.4427227   0.6197773
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.5483871   0.4614931   0.6352811
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4621514   0.4291019   0.4952009
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3345725   0.3018302   0.3673148
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.6428571   0.6060618   0.6796525
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.4146341   0.3230746   0.5061937
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2657658   0.2338692   0.2976624
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1826087   0.1533150   0.2119024
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                0.2571429   0.2322693   0.2820164
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  NA                0.1640000   0.1284711   0.1995289
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                0.2608696   0.1681115   0.3536276
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  NA                0.2272727   0.1406935   0.3138519
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2551724   0.2144592   0.2958856
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1773050   0.1461788   0.2084311


### Parameter: E(Y)


nchldlt5   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.1893204   0.1356920   0.2429487
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3872340   0.3431485   0.4313195
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2303699   0.2093398   0.2514000
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3066170   0.2508978   0.3623361
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.4875740   0.4538520   0.5212959
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4444444   0.3207573   0.5681316
1          0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5421995   0.4927532   0.5916458
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4041845   0.3944509   0.4139181
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1449893   0.1130902   0.1768885
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0670611   0.0544867   0.0796356
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2771536   0.2391549   0.3151522
1          0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3360656   0.2519009   0.4202303
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2707289   0.2616040   0.2798539
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2136986   0.1715879   0.2558094
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1332808   0.1145661   0.1519955
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1325167   0.1031140   0.1619194
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2083333   0.1744237   0.2422429
1          6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3041958   0.2507829   0.3576087
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1847623   0.1754768   0.1940478
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.3468208   0.2756908   0.4179508
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4782609   0.4008598   0.5556620
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2362205   0.2031572   0.2692838
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3176101   0.2714632   0.3637569
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.5049020   0.4705763   0.5392276
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4671053   0.3875282   0.5466823
2          0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6089385   0.5583184   0.6595587
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3923638   0.3792769   0.4054508
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1242236   0.0731159   0.1753314
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0757098   0.0551022   0.0963173
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2756539   0.2363295   0.3149784
2          0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3606557   0.2750960   0.4462154
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2303207   0.2184978   0.2421436
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.1015625   0.0490265   0.1540985
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3306452   0.2475062   0.4137842
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381323   0.1082745   0.1679901
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1466165   0.1132319   0.1800012
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2261682   0.1906855   0.2616509
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2649573   0.1846484   0.3452661
2          6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3265306   0.2676904   0.3853708
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2193854   0.2041586   0.2346123
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         NA                   NA                0.4190476   0.3242203   0.5138749
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3879004   0.3426651   0.4331356
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.5466667   0.4667339   0.6265995
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4897959   0.3483772   0.6312147
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5396825   0.4156173   0.6637478
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3961538   0.3491232   0.4431845
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.4479167   0.3479196   0.5479137
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2234513   0.1799227   0.2669799
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1881481   0.1437491   0.2325472
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2444444   0.1174616   0.3714273
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2167832   0.1651078   0.2684586


### Parameter: RR


nchldlt5   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                Control           2.0817757   1.5317576   2.8292924
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.0513946   0.9382174   1.1782244
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9540799   0.7602112   1.1973889
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1615347   0.9043059   1.4919320
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.8986210   0.7470356   1.0809654
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9132117   0.8521225   0.9786804
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.3701923   0.7322660   2.5638592
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.6597222   0.2629246   1.6553547
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.0996040   1.0035365   1.2048680
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9507979   0.9283057   0.9738351
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.8669966   0.6954305   1.0808888
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8417582   0.5265041   1.3457766
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2809365   0.7788862   2.1065955
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0690909   0.9320670   1.2262588
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.1211864   0.8722580   1.4411551
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8749224   0.8463676   0.9044405
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.4522950   1.1887293   1.7742986
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9558600   0.6701781   1.3633216
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2951178   0.8799417   1.9061833
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.7462774   0.5987184   0.9302035
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9324599   0.7923426   1.0973555
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.2539020   1.0502825   1.4969974
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0938850   1.0403848   1.1501365
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                Control           1.2606383   1.0247394   1.5508421
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1056034   0.9401065   1.3002346
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1036304   0.7773019   1.5669587
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9640449   0.6446228   1.4417466
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.8249158   0.7128674   0.9545760
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0473057   0.9784507   1.1210062
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           0.9801136   0.6432134   1.4934744
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.9013867   0.5946504   1.3663457
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.9328972   0.8583727   1.0138920
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9183639   0.8883190   0.9494249
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1637931   0.7704182   1.7580249
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9741474   0.4979858   1.9056029
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9425612   0.4430594   2.0051976
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.8190371   0.7097692   0.9451265
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          0-6 months    ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.6840796   0.5360519   0.8729842
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8015810   0.7616102   0.8436494
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                Control           1.0621890   0.6330494   1.7822394
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1157025   0.8672531   1.4353273
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9281385   0.5534273   1.5565570
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8543624   0.4766865   1.5312688
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.6463248   0.5154904   0.8103657
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.3208556   1.1277718   1.5469970
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.0493827   0.4847826   2.2715421
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.9645390   0.4572957   2.0344288
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.7994873   0.6665403   0.9589516
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0661768   0.9943762   1.1431619
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Other                Control           0.9597902   0.7653570   1.2036176
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.8964778   0.7978937   1.0072426
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.2231183   1.0557459   1.4170250
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1503759   0.5447201   2.4294398
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.4945055   0.7276207   3.0696582
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           1.0322581   0.8202059   1.2991331
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.7239456   0.6413044   0.8172364
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.6449864   0.5134290   0.8102533
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.6871039   0.5623375   0.8395524
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   LNS                  Control           0.6377778   0.5019984   0.8102825
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         LNS                  Control           0.8712121   0.5173799   1.4670276
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.6948438   0.5481314   0.8808251


### Parameter: PAR


nchldlt5   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.0681083    0.0243278    0.1118888
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0143527   -0.0238921    0.0525974
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0035658   -0.0325554    0.0396869
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0254441   -0.0777070    0.0268188
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0383520   -0.0692691   -0.0074348
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0233918   -0.1641493    0.2109329
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0264100   -0.0089386    0.0617587
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0103454   -0.0170893   -0.0036016
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0160276   -0.0432042    0.0111490
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0008240   -0.0225808    0.0209328
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0152488   -0.0197474    0.0502450
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0186053   -0.0408204    0.0780309
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0183348   -0.0245479   -0.0121218
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0546077    0.0167538    0.0924617
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0058922   -0.0263131    0.0380976
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0318025   -0.0580982   -0.0055069
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0125969   -0.0436277    0.0184339
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0346923   -0.0046103    0.0739949
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0084887    0.0015400    0.0154375
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.0430233   -0.0108504    0.0968971
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0338164   -0.0320166    0.0996495
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0089477   -0.0489544    0.0668499
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0490566   -0.0928105   -0.0053027
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0189865   -0.0122121    0.0501851
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0217836   -0.1446286    0.1010613
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0208957   -0.0568683    0.0150769
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0167152   -0.0261890   -0.0072415
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0131125   -0.0310375    0.0572625
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0022123   -0.0389234    0.0344988
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0493461   -0.0850241   -0.0136680
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0757079   -0.1373546   -0.0140612
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0252586   -0.0334255   -0.0170918
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.0032018   -0.0352901    0.0416938
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0250896   -0.0455370    0.0957162
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0111214   -0.0624736    0.0402307
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0550295   -0.0852523   -0.0248068
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0472209    0.0144895    0.0799522
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0002514   -0.1252028    0.1257055
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0378762   -0.0791788    0.0034265
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0071802   -0.0032095    0.0175698
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.0071819   -0.0683728    0.0540090
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0321910   -0.0698230    0.0054411
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0851282    0.0124738    0.1577826
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0780312   -0.1145908    0.2706533
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0084325   -0.0784876    0.0953527
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0659975   -0.0994035   -0.0325916
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.1949405   -0.2879217   -0.1019592
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0423144   -0.0718692   -0.0127597
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0689947   -0.1086236   -0.0293658
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0164251   -0.1031464    0.0702962
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0383892   -0.0700449   -0.0067335


### Parameter: PAF


nchldlt5   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.3597514    0.1788484    0.5008007
1          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0370646   -0.0629191    0.1276434
1          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0154784   -0.1544908    0.1604241
1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0829834   -0.2843225    0.0867925
1          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0786588   -0.1493085   -0.0123519
1          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0526316   -0.4791702    0.3932362
1          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0487090   -0.0154596    0.1088228
1          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0255958   -0.0428567   -0.0086205
1          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.1105434   -0.3399583    0.0795933
1          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0122869   -0.3947284    0.2652872
1          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0550193   -0.0722053    0.1671478
1          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0553620   -0.1276989    0.2087063
1          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0677239   -0.0925605   -0.0434520
1          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.2555361    0.1090724    0.3779220
1          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0442091   -0.2306431    0.2576757
1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.2399890   -0.5130721   -0.0161926
1          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0604651   -0.2308466    0.0863311
1          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.1140458   -0.0090558    0.2221294
1          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0459440    0.0093443    0.0811916
2          0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.1240506   -0.0243338    0.2509402
2          0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0707071   -0.0665956    0.1903348
2          0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0378788   -0.2412642    0.2542464
2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.1544554   -0.3250622   -0.0058149
2          0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0376043   -0.0237494    0.0952810
2          0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0466354   -0.3457482    0.1859951
2          0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0343150   -0.0972921    0.0250477
2          0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0426013   -0.0680948   -0.0177164
2          0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1055556   -0.2772326    0.3736217
2          0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0292208   -0.6485153    0.3574246
2          0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.1790146   -0.3423607   -0.0355454
2          0-6 months    ki1148112-LCNI-5           MALAWI                         Control              NA                -0.2099174   -0.4388555   -0.0174059
2          0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.1096672   -0.1499034   -0.0708389
2          6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                 0.0315258   -0.4150111    0.3371485
2          6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0758808   -0.1444977    0.2538243
2          6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0805129   -0.5238634    0.2338499
2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.3753297   -0.6920487   -0.1178945
2          6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.2087864    0.0847757    0.3159940
2          6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0009488   -0.6047832    0.3780447
2          6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.1159958   -0.2673625    0.0172926
2          6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0327286   -0.0142129    0.0774975
3+         0-24 months   ki1000107-Serrinha-VitA    BRAZIL                         Control              NA                -0.0171386   -0.1770909    0.1210782
3+         0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.0829877   -0.1932919    0.0171203
3+         0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.1557223    0.0352581    0.2611446
3+         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1593137   -0.3447669    0.4744417
3+         0-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                 0.0156250   -0.1564218    0.1620755
3+         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.1665958   -0.2703248   -0.0713368
3+         0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.4352159   -0.7689580   -0.1644396
3+         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.1893676   -0.3602535   -0.0399498
3+         6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Control              NA                -0.3667042   -0.6855518   -0.1081714
3+         6-24 months   ki1148112-LCNI-5           MALAWI                         Control              NA                -0.0671937   -0.5228827    0.2521405
3+         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.1770857   -0.3660040   -0.0142947
