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

* hdlvry
* agecat
* studyid
* country

## Data Summary

hdlvry   agecat      studyid                    country                        tr          stunted   n_cell      n
-------  ----------  -------------------------  -----------------------------  ---------  --------  -------  -----
1        Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        6     10
1        Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        4     10
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0      121    341
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           1       62    341
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0      127    341
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          1       31    341
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0       65    176
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           1       25    176
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0       60    176
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          1       26    176
0        Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        1      1
0        6 months    ki1000304-ZnMort           INDIA                          Control           0       26     67
0        6 months    ki1000304-ZnMort           INDIA                          Control           1       15     67
0        6 months    ki1000304-ZnMort           INDIA                          Zinc              0       17     67
0        6 months    ki1000304-ZnMort           INDIA                          Zinc              1        9     67
0        24 months   ki1000304-ZnMort           INDIA                          Control           0       16     66
0        24 months   ki1000304-ZnMort           INDIA                          Control           1       20     66
0        24 months   ki1000304-ZnMort           INDIA                          Zinc              0       21     66
0        24 months   ki1000304-ZnMort           INDIA                          Zinc              1        9     66
1        24 months   ki1000304-ZnMort           INDIA                          Control           0       11     74
1        24 months   ki1000304-ZnMort           INDIA                          Control           1       28     74
1        24 months   ki1000304-ZnMort           INDIA                          Zinc              0        9     74
1        24 months   ki1000304-ZnMort           INDIA                          Zinc              1       26     74
1        6 months    ki1000304-ZnMort           INDIA                          Control           0       29     78
1        6 months    ki1000304-ZnMort           INDIA                          Control           1       16     78
1        6 months    ki1000304-ZnMort           INDIA                          Zinc              0       21     78
1        6 months    ki1000304-ZnMort           INDIA                          Zinc              1       12     78
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0      140    424
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       55    424
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0      155    424
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       74    424
0        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       41     68
0        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       15     68
0        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       10     68
0        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1        2     68
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0       46    130
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1       13    130
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0       51    130
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1       20    130
0        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0        4      8
0        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        4      8
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control           0       34    285
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control           1       34    285
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other             0      130    285
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other             1       87    285
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control           0        9     70
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control           1       13     70
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other             0       31     70
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other             1       17     70
0        6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        5     35
0        6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        2     35
0        6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0       23     35
0        6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        5     35
1        6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        3     11
1        6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        0     11
1        6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        5     11
1        6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        3     11
0        24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        2      2
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        6     27
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        1     27
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        4     27
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        4     27
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       12     27
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        0     27
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      356   1595
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       44   1595
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      352   1595
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       37   1595
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      714   1595
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       92   1595
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1      4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        0      4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        2      4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0      4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      4
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0      218    845
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       60    845
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      441    845
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1      126    845
0        Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1      1
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        4     58
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        6     58
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       32     58
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       16     58
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       33    119
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       14    119
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       59    119
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       13    119
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        1      3
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        0      3
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        1      3
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1      3
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0      108    289
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1       30    289
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      105    289
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       46    289
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      110    293
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1       30    293
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      110    293
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       43    293
0        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0       16     39
0        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1     39
0        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0       18     39
0        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        4     39
0        24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        1      1
0        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0        2     11
0        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1        2     11
0        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        4     11
0        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        3     11
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      583   2937
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1      194   2937
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      583   2937
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1      206   2937
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      991   2937
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1      380   2937
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0      146    773
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1       67    773
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      144    773
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       70    773
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0      247    773
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1       99    773
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      217   1069
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       47   1069
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      251   1069
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       58   1069
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      381   1069
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1      115   1069
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       44    354
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       44    354
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       48    354
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       51    354
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       87    354
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       80    354
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       23    143
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       13    143
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       30    143
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        7    143
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       45    143
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       25    143
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0        9     47
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1        1     47
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        8     47
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        4     47
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0       20     47
0        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1        5     47
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0      218    567
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       60    567
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0      227    567
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       62    567
0        Birth       iLiNS_DYADM_LNS            MALAWI                         LNS               1        1      1
0        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        4     31
0        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        6     31
0        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0       15     31
0        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        6     31
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       33     71
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       14     71
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       20     71
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        4     71
1        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        1      1


The following strata were considered:

* hdlvry: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hdlvry: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hdlvry: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6567ebb6-7d94-4b2a-b7f0-76c549784037/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6567ebb6-7d94-4b2a-b7f0-76c549784037/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6567ebb6-7d94-4b2a-b7f0-76c549784037/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6567ebb6-7d94-4b2a-b7f0-76c549784037/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hdlvry   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2158273   0.1920956   0.2395591
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2145329   0.1903889   0.2386768
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.2777778   0.2303232   0.3252324
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal             NA                0.3023256   0.2547608   0.3498904
0        6 months    ki1000304-ZnMort           INDIA                          Control              NA                0.3658537   0.2173046   0.5144028
0        6 months    ki1000304-ZnMort           INDIA                          Zinc                 NA                0.3461538   0.1619074   0.5304003
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.5909091   0.5258727   0.6559454
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.3541667   0.2607210   0.4476123
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1100000   0.0793278   0.1406722
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0951157   0.0659527   0.1242787
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1141439   0.0921843   0.1361035
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2158273   0.1999078   0.2317469
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2222222   0.1992469   0.2451975
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1780303   0.1239173   0.2321433
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1877023   0.1359168   0.2394877
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2318548   0.1874471   0.2762626
0        24 months   ki1000304-ZnMort           INDIA                          Control              NA                0.5555556   0.3919927   0.7191184
0        24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.3000000   0.1347611   0.4652389
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3611111   0.1866683   0.5355539
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1891892   0.0322778   0.3461006
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3571429   0.2499637   0.4643221
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2203390   0.1683478   0.2723301
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2816901   0.2125273   0.3508530
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2173913   0.1777491   0.2570335
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3046358   0.2527172   0.3565543
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3145540   0.2413232   0.3877847
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3271028   0.2554071   0.3987986
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2861272   0.2333836   0.3388707
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.3387978   0.3019430   0.3756526
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal             NA                0.1962025   0.1674692   0.2249358
1        6 months    ki1000304-ZnMort           INDIA                          Control              NA                0.3555556   0.2147920   0.4963191
1        6 months    ki1000304-ZnMort           INDIA                          Zinc                 NA                0.3636364   0.1984480   0.5288247
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2820513   0.2757890   0.2883136
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3231441   0.3026736   0.3436147
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.5000000   0.4715953   0.5284047
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.4009217   0.3511860   0.4506573
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2978723   0.2460155   0.3497291
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.1805556   0.1265716   0.2345396
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2142857   0.1651063   0.2634652
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2810458   0.2302299   0.3318616
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2496782   0.2086340   0.2907225
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2610900   0.2252376   0.2969424
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2771699   0.2484907   0.3058492
1        24 months   ki1000304-ZnMort           INDIA                          Control              NA                0.7179487   0.5757548   0.8601426
1        24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.7428571   0.5970736   0.8886406
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.5000000   0.3849733   0.6150267
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.5151515   0.4039387   0.6263644
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4790419   0.3980023   0.5600815


### Parameter: E(Y)


hdlvry   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2151675   0.1813130   0.2490221
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.2897727   0.2225592   0.3569862
0        6 months    ki1000304-ZnMort           INDIA                          NA                   NA                0.3582090   0.2425335   0.4738844
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4285714   0.3118055   0.5453374
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1084640   0.0931983   0.1237296
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2201183   0.1921659   0.2480708
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2057998   0.1768917   0.2347079
0        24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.4393939   0.3187384   0.5600495
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3146853   0.2342643   0.3951064
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2538462   0.1668905   0.3408018
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2629758   0.1961077   0.3298438
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3053040   0.2683966   0.3422114
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.2727273   0.2253880   0.3200665
1        6 months    ki1000304-ZnMort           INDIA                          NA                   NA                0.3589744   0.2518293   0.4661194
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3042453   0.2769842   0.3315064
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4245614   0.3670759   0.4820470
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2268908   0.1513231   0.3024584
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2491468   0.1783780   0.3199155
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2655771   0.2458235   0.2853307
1        24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.7297297   0.6278549   0.8316045
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4943503   0.4373635   0.5513371


### Parameter: RR


hdlvry   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.9940023   0.8492880   1.1633752
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal             Control           1.0883721   0.8628090   1.3729039
0        6 months    ki1000304-ZnMort           INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304-ZnMort           INDIA                          Zinc                 Control           0.9461538   0.4844180   1.8480053
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.5993590   0.4503291   0.7977081
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8646880   0.5713100   1.3087211
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0376720   0.7394954   1.4560784
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0296296   0.9068264   1.1690630
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0543276   0.6993741   1.5894309
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.3023336   0.9093345   1.8651802
0        24 months   ki1000304-ZnMort           INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000304-ZnMort           INDIA                          Zinc                 Control           0.5400000   0.2891729   1.0083934
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.5239085   0.2006225   1.3681424
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9890110   0.5600531   1.7465180
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.2784399   0.9080304   1.7999492
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.4013245   1.0918188   1.7985680
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0398940   0.7553058   1.4317109
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9096282   0.6759297   1.2241264
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal             Control           0.5791139   0.4825434   0.6950110
1        6 months    ki1000304-ZnMort           INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304-ZnMort           INDIA                          Zinc                 Control           1.0227273   0.5598423   1.8683316
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.1456927   1.0714297   1.2251031
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.8018433   0.6995734   0.9190639
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.6061508   0.4288682   0.8567172
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.3115468   0.9798192   1.7555841
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0457058   0.8440856   1.2954853
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1101085   0.9141351   1.3480949
1        24 months   ki1000304-ZnMort           INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000304-ZnMort           INDIA                          Zinc                 Control           1.0346939   0.7829304   1.3674159
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0303030   0.7515607   1.4124267
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9580838   0.7201824   1.2745724


### Parameter: PAR


hdlvry   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0006598   -0.0248038    0.0234842
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0119949   -0.0356046    0.0595945
0        6 months    ki1000304-ZnMort           INDIA                          Control              NA                -0.0076447   -0.0995167    0.0842273
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.1623377   -0.2593148   -0.0653606
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0015360   -0.0280306    0.0249585
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0042910   -0.0186852    0.0272672
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0277695   -0.0203110    0.0758500
0        24 months   ki1000304-ZnMort           INDIA                          Control              NA                -0.1161616   -0.2262783   -0.0060449
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0464258   -0.1932477    0.1003961
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0335072   -0.0402218    0.1072362
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0455845   -0.0084665    0.0996355
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0092500   -0.0706322    0.0521323
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.0660705   -0.0957813   -0.0363598
1        6 months    ki1000304-ZnMort           INDIA                          Control              NA                 0.0034188   -0.0884055    0.0952431
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0221940   -0.0036884    0.0480764
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0754386   -0.1254162   -0.0254610
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0709816   -0.1259483   -0.0160148
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0348610   -0.0164320    0.0861541
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0158989   -0.0185075    0.0503053
1        24 months   ki1000304-ZnMort           INDIA                          Control              NA                 0.0117810   -0.0845806    0.1081426
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0056497   -0.1051260    0.0938266


### Parameter: PAF


hdlvry   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0030664   -0.1221791    0.1034032
0        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0413943   -0.1299143    0.1867305
0        6 months    ki1000304-ZnMort           INDIA                          Control              NA                -0.0213415   -0.3129106    0.2054765
0        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.3787879   -0.7354957   -0.0953966
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0141618   -0.2903529    0.2029125
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0194941   -0.0883954    0.1166888
0        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1349346   -0.1323314    0.3391174
0        24 months   ki1000304-ZnMort           INDIA                          Control              NA                -0.2643678   -0.5539291   -0.0287638
0        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1475309   -0.7197366    0.2342856
1        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.1319979   -0.1651806    0.3533813
1        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.1733410   -0.0179060    0.3286559
1        Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0302976   -0.2521197    0.1522271
1        6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.2422587   -0.3895956   -0.1105436
1        6 months    ki1000304-ZnMort           INDIA                          Control              NA                 0.0095238   -0.2823420    0.2349599
1        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0729477   -0.0092129    0.1484196
1        6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.1776860   -0.3253800   -0.0464502
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.3128448   -0.6828752   -0.0241766
1        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.1399217   -0.0596013    0.3018745
1        6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0598654   -0.0795420    0.1812703
1        24 months   ki1000304-ZnMort           INDIA                          Control              NA                 0.0161443   -0.1252735    0.1397896
1        24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0114286   -0.2340612    0.1710397
